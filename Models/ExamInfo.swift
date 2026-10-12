import Foundation

/// 資格ごとに変わる値をここに集約する（configs.py から生成。手で編集しない）。
enum ExamInfo {
    static let appName = "MOSnote"
    /// ホームのワードマークで強調する頭文字（例："FE"note）
    static let brandPrefix = "MOS"
    static let examShortName = "MOS（Excel・Word）"
    static let examFullName = "MOS（マイクロソフト オフィス スペシャリスト）Excel 365・Word 365（一般レベル）"
    static let officialSite = "MOS公式サイト（mos.odyssey-com.co.jp）"
    static let organizerNotice = "MOS（Microsoft Office Specialist）は日本では株式会社オデッセイ コミュニケーションズが実施しています。Microsoft・Excel・Word は米国 Microsoft Corporation の商標です。本アプリは非公式の学習支援アプリです。"
    /// 本番模試の問題数と制限時間
    static let mockCount = 40
    static let mockMinutes = 50
    /// 合格ライン（1000点満点＝正答率×1000）
    static let passScore = 700
    static let mockNote = "本番はExcel・Wordそれぞれ50分の実技試験（実際に操作して仕上げるマルチプロジェクト形式）で、合格ラインは1000点満点中700点が目安です。この模試は操作手順と機能の知識を4択で確かめるもので、ExcelとWordを混ぜて出題します。実機での操作練習も並行してください。最新は公式サイトでご確認ください。"
    static let servicesTitle = "頻出機能・関数一覧"
    static let servicesSubtitle = "リボンの場所・関数・用語をカテゴリ別に確認"
    static let servicesSearchPlaceholder = "機能・関数を検索"

    struct NextCert { let title: String; let subtitle: String }
    static let nextCerts: [NextCert] = [
        .init(title: "MOS Excel Expert（上級）", subtitle: "マクロ・高度な関数・データ分析まで"),
        .init(title: "VBAエキスパート ベーシック", subtitle: "Excel作業の自動化を証明"),
        .init(title: "MOS PowerPoint", subtitle: "プレゼン資料作成のスキルを証明"),
    ]

    /// 直前チェックリスト
    static let finalChecklist: [String] = [
        "Excel：テキストファイル・CSVの取り込み手順を言える",
        "Excel：ウィンドウ枠の固定・印刷範囲・ヘッダー/フッターの設定場所を言える",
        "Excel：形式を選択して貼り付け・名前の定義・条件付き書式・スパークラインを使える",
        "Excel：テーブルの作成・集計行・範囲に変換・並べ替えとフィルターを操作できる",
        "Excel：相対/絶対/複合参照と構造化参照、IF・COUNTIF系・文字列関数を書ける",
        "Excel：グラフの行/列の切り替え・要素の追加・代替テキストを設定できる",
        "Word：セクション区切り・段組み・ページ設定・透かしを設定できる",
        "Word：文字列を表に変換・タイトル行の繰り返し・箇条書きのレベル変更ができる",
        "Word：脚注/文末脚注と目次の挿入・更新ができる",
        "Word：図の文字列の折り返し・代替テキスト・SmartArt・コメントと変更履歴を操作できる",
        "試験の画面構成（問題ウィンドウ・プロジェクト切替・あとで見直す）を確認した",
    ]

    /// 直前に見直す重要用語カードのID（terms.json の t-key1〜6）
    static let keyTermIds = ["t-key1", "t-key2", "t-key3", "t-key4", "t-key5", "t-key6"]

    /// 完全初心者向け 8週間の標準ロードマップ
    static let roadmap: [WeekGoal] = [
        .init(week: 1, title: "Excel ブックの管理", detail: "データの取り込み／ジャンプ・ハイパーリンク／ページ設定・ウィンドウ枠の固定／ドキュメント検査", domains: [.xlBook]),
        .init(week: 2, title: "Excel セルとテーブル", detail: "形式を選択して貼り付け／名前の定義／条件付き書式・スパークライン／テーブル・集計行・並べ替え", domains: [.xlCell, .xlTable]),
        .init(week: 3, title: "Excel 関数", detail: "相対・絶対・複合参照／構造化参照／IF・COUNT系／スピル関数／文字列関数", domains: [.xlFormula]),
        .init(week: 4, title: "Excel グラフ", detail: "グラフ作成／行列の切り替え／要素の追加／スタイル・代替テキスト", domains: [.xlChart]),
        .init(week: 5, title: "Word 文書と書式", detail: "検索とジャンプ／ページ設定・透かし／保存形式・ドキュメント検査／段落書式・セクション・段組み", domains: [.wdDoc, .wdText]),
        .init(week: 6, title: "Word 表・リスト・参考資料", detail: "文字列⇔表の変換／タイトル行の繰り返し／箇条書きのレベル／脚注と目次", domains: [.wdTable, .wdRef]),
        .init(week: 7, title: "Word 図と共同作業", detail: "図形・SmartArt・テキストボックス／文字列の折り返し／代替テキスト／コメントと変更履歴", domains: [.wdGraphic, .wdCollab]),
        .init(week: 8, title: "模擬試験と直前対策", detail: "Excel・Word横断の模試→間違えた操作の実機での再確認→頻出機能の総仕上げ", domains: ExamDomain.allCases),
    ]
}
