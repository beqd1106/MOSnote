import SwiftUI

/// MOS（マイクロソフト オフィス スペシャリスト）Excel 365・Word 365（一般レベル） の出題分野（configs.py から生成。手で編集しない）。
/// ※配点比率は公式の出題範囲の分量からの近似値。最新は公式サイトで確認すること。
enum ExamDomain: String, CaseIterable, Codable, Identifiable {
    case xlBook
    case xlCell
    case xlTable
    case xlFormula
    case xlChart
    case wdDoc
    case wdText
    case wdTable
    case wdRef
    case wdGraphic
    case wdCollab

    var id: String { rawValue }

    /// 出題比率の近似値（模試の出題配分・合格可能性スコアに使用）。合計1.0。
    var weight: Double {
        switch self {
        case .xlBook: return 0.1
        case .xlCell: return 0.1
        case .xlTable: return 0.08
        case .xlFormula: return 0.12
        case .xlChart: return 0.1
        case .wdDoc: return 0.1
        case .wdText: return 0.1
        case .wdTable: return 0.08
        case .wdRef: return 0.06
        case .wdGraphic: return 0.1
        case .wdCollab: return 0.06
        }
    }

    var title: String {
        switch self {
        case .xlBook: return "Excel ワークシートとブックの管理"
        case .xlCell: return "Excel セルやセル範囲の管理"
        case .xlTable: return "Excel テーブルの管理"
        case .xlFormula: return "Excel 数式や関数の使用"
        case .xlChart: return "Excel グラフの管理"
        case .wdDoc: return "Word 文書の管理"
        case .wdText: return "Word 文字・段落・セクション"
        case .wdTable: return "Word 表やリストの管理"
        case .wdRef: return "Word 参考資料の作成"
        case .wdGraphic: return "Word グラフィック要素"
        case .wdCollab: return "Word 共同作業の管理"
        }
    }

    var shortTitle: String {
        switch self {
        case .xlBook: return "Excel ブック"
        case .xlCell: return "Excel セル"
        case .xlTable: return "Excel テーブル"
        case .xlFormula: return "Excel 関数"
        case .xlChart: return "Excel グラフ"
        case .wdDoc: return "Word 文書"
        case .wdText: return "Word 書式"
        case .wdTable: return "Word 表"
        case .wdRef: return "Word 参考資料"
        case .wdGraphic: return "Word 図"
        case .wdCollab: return "Word 共同作業"
        }
    }

    /// 章番号（並び順）
    var chapterNumber: Int {
        switch self {
        case .xlBook: return 1
        case .xlCell: return 2
        case .xlTable: return 3
        case .xlFormula: return 4
        case .xlChart: return 5
        case .wdDoc: return 6
        case .wdText: return 7
        case .wdTable: return 8
        case .wdRef: return 9
        case .wdGraphic: return 10
        case .wdCollab: return 11
        }
    }

    /// 配点を百分率の整数で（UI表示用）
    var weightPercent: Int { Int((weight * 100).rounded()) }

    var color: Color {
        switch self {
        case .xlBook: return Theme.green
        case .xlCell: return Theme.teal
        case .xlTable: return Theme.blue
        case .xlFormula: return Theme.navy
        case .xlChart: return Theme.orange
        case .wdDoc: return Theme.indigo
        case .wdText: return Theme.purple
        case .wdTable: return Theme.rose
        case .wdRef: return Theme.teal
        case .wdGraphic: return Theme.orange
        case .wdCollab: return Theme.blue
        }
    }

    var systemIcon: String {
        switch self {
        case .xlBook: return "tablecells"
        case .xlCell: return "square.grid.3x3.fill"
        case .xlTable: return "list.bullet.rectangle"
        case .xlFormula: return "function"
        case .xlChart: return "chart.bar.fill"
        case .wdDoc: return "doc.text.fill"
        case .wdText: return "textformat"
        case .wdTable: return "tablecells.badge.ellipsis"
        case .wdRef: return "book.closed.fill"
        case .wdGraphic: return "photo.fill"
        case .wdCollab: return "bubble.left.and.bubble.right.fill"
        }
    }

}
