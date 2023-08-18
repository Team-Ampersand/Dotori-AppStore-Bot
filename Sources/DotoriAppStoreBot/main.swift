import DiscordKitBot
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

let bot = Client(intents: .unprivileged)

let githubToken = ProcessInfo.processInfo.environment["GITHUB_TOKEN"] ?? ""
let guildID = ProcessInfo.processInfo.environment["GUILD_ID"] ?? ""

bot.ready.listen {
    try? await bot.registerApplicationCommands(guild: guildID) {
        NewAppCommand(
            "앱스토어",
            description: "앱스토어에 심사를 올리는 명령어입니다!",
            options: {
                StringOption("버전", description: "심사를 올릴 앱의 버전을 입력해주세요!", required: true)
                StringOption("변경사항", description: "이번 버전에서 변경된 사항을 입력해주세요!", required: true)
            },
            handler: { interaction in
                await distribution(interaction: interaction)
            }
        )
    }
}

func distribution(interaction: CommandData) async {
    do {
        guard let version: String = interaction.optionValue(of: "버전"),
              let change: String = interaction.optionValue(of: "변경사항")
        else { return }
        let submission = SubmissionRequestDTO(version: version, changed: change)

        guard let url = URL(string: "https://api.github.com/repos/Team-Ampersand/Dotori-iOS/actions/workflows/65967674/dispatches")
        else {
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = try JSONEncoder().encode(submission)
        request.addValue("token \(githubToken)", forHTTPHeaderField: "Authorization")
        request.addValue("application/vnd.github+json", forHTTPHeaderField: "Accept")
        let (data, response) = try await URLSession.shared.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse,
              200...300 ~= httpResponse.statusCode
        else {
            try await interaction.reply("""
👾 Github Action Workflows 실행을 실패했습니다..

response: \(String(data: data, encoding: .utf8) ?? "")
""")
            return
        }

        try await interaction.reply("""
- Version : \(version)
- 변경사항 : \(change)

🚀 앱스토어에 앱 제출을 시작합니다.. 완료하면 알려드릴게요!
""")
    } catch {
        try? await interaction.reply("""
😵 앱스토어 배포가 실패했습니다..

reason : \(error.localizedDescription)
""")
    }
}

bot.login()

RunLoop.main.run()
