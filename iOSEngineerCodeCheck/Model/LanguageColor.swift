//
//  LanguageColor.swift
//  iOSEngineerCodeCheck
//
//  Created by Yuto on 2023/04/03.
//  Copyright © 2023 YUMEMI Inc. All rights reserved.
//

import Foundation
import UIKit

class LanguageColor {
    
    var language: Language?
    var color: UIColor
    
    init(language: String) {
        self.language = Language(rawValue: language)
        self.color = self.language?.color ?? .label
    }
    
    enum Language: String {
        case Mercury = "Mercury"
        case TypeScript = "TypeScript"
        case PureBasic = "PureBasic"
        case ObjectiveCPlusPlus = "Objective-C++"
        case SelfLang = "Self"
        case edn = "edn"
        case NewLisp = "NewLisp"
        case JupyterNotebook = "Jupyter Notebook"
        case Rebol = "Rebol"
        case Frege = "Frege"
        case Dart = "Dart"
        case AspectJ = "AspectJ"
        case Shell = "Shell"
        case WebOntologyLanguage = "Web Ontology Language"
        case xBase = "xBase"
        case Eiffel = "Eiffel"
        case Nix = "Nix"
        case RAML = "RAML"
        case MTML = "MTML"
        case Racket = "Racket"
        case Elixir = "Elixir"
        case SAS = "SAS"
        case Agda = "Agda"
        case wisp = "wisp"
        case D = "D"
        case Kotlin = "Kotlin"
        case Opal = "Opal"
        case Crystal = "Crystal"
        case ObjectiveC = "Objective-C"
        case ColdFusionCFC = "ColdFusion CFC"
        case Oz = "Oz"
        case Mirah = "Mirah"
        case ObjectiveJ = "Objective-J"
        case Gosu = "Gosu"
        case FreeMarker = "FreeMarker"
        case Ruby = "Ruby"
        case ComponentPascal = "Component Pascal"
        case Arc = "Arc"
        case Brainfuck = "Brainfuck"
        case Nit = "Nit"
        case APL = "APL"
        case Go = "Go"
        case VisualBasic = "Visual Basic"
        case PHP = "PHP"
        case Cirru = "Cirru"
        case SQF = "SQF"
        case Glyph = "Glyph"
        case Java = "Java"
        case MAXScript = "MAXScript"
        case Scala = "Scala"
        case Makefile = "Makefile"
        case ColdFusion = "ColdFusion"
        case Perl = "Perl"
        case Lua = "Lua"
        case Vue = "Vue"
        case Verilog = "Verilog"
        case Factor = "Factor"
        case Haxe = "Haxe"
        case PureData = "Pure Data"
        case Forth = "Forth"
        case Red = "Red"
        case Hy = "Hy"
        case Volt = "Volt"
        case LSL = "LSL"
        case eC = "eC"
        case CoffeeScript = "CoffeeScript"
        case HTML = "HTML"
        case Lex = "Lex"
        case APIBlueprint = "API Blueprint"
        case Swift = "Swift"
        case C = "C"
        case AutoHotkey = "AutoHotkey"
        case Isabelle = "Isabelle"
        case Metal = "Metal"
        case Clarion = "Clarion"
        case JSONiq = "JSONiq"
        case Boo = "Boo"
        case AutoIt = "AutoIt"
        case Clojure = "Clojure"
        case Rust = "Rust"
        case Prolog = "Prolog"
        case SourcePawn = "SourcePawn"
        case AMPL = "AMPL"
        case FORTRAN = "FORTRAN"
        case ANTLR = "ANTLR"
        case Harbour = "Harbour"
        case Tcl = "Tcl"
        case BlitzMax = "BlitzMax"
        case PigLatin = "PigLatin"
        case Lasso = "Lasso"
        case ECL = "ECL"
        case VHDL = "VHDL"
        case Elm = "Elm"
        case PropellerSpin = "Propeller Spin"
        case X10 = "X10"
        case IDL = "IDL"
        case ATS = "ATS"
        case Ada = "Ada"
        case Unity3DAsset = "Unity3D Asset"
        case Nu = "Nu"
        case LFE = "LFE"
        case SuperCollider = "SuperCollider"
        case Oxygene = "Oxygene"
        case ASP = "ASP"
        case Assembly = "Assembly"
        case Gnuplot = "Gnuplot"
        case JFlex = "JFlex"
        case NetLinx = "NetLinx"
        case Turing = "Turing"
        case Vala = "Vala"
        case Processing = "Processing"
        case Arduino = "Arduino"
        case FLUX = "FLUX"
        case NetLogo = "NetLogo"
        case CSharp = "C Sharp"
        case CSS = "CSS"
        case EmacsLisp = "Emacs Lisp"
        case Stan = "Stan"
        case SaltStack = "SaltStack"
        case QML = "QML"
        case Pike = "Pike"
        case LOLCODE = "LOLCODE"
        case ooc = "ooc"
        case Handlebars = "Handlebars"
        case J = "J"
        case Mask = "Mask"
        case EmberScript = "EmberScript"
        case TeX = "TeX"
        case Nemerle = "Nemerle"
        case KRL = "KRL"
        case RenPy = "Ren'Py"
        case UnifiedParallelC = "Unified Parallel C"
        case Golo = "Golo"
        case Fancy = "Fancy"
        case OCaml = "OCaml"
        case Shen = "Shen"
        case Pascal = "Pascal"
        case FSharp = "F#"
        case Puppet = "Puppet"
        case ActionScript = "ActionScript"
        case Diff = "Diff"
        case RagelinRubyHost = "Ragel in Ruby Host"
        case Fantom = "Fantom"
        case Zephir = "Zephir"
        case Click = "Click"
        case Smalltalk = "Smalltalk"
        case DM = "DM"
        case Ioke = "Ioke"
        case PogoScript = "PogoScript"
        case LiveScript = "LiveScript"
        case JavaScript = "JavaScript"
        case VimL = "VimL"
        case PureScript = "PureScript"
        case ABAP = "ABAP"
        case Matlab = "Matlab"
        case Slash = "Slash"
        case R = "R"
        case Erlang = "Erlang"
        case Pan = "Pan"
        case LookML = "LookML"
        case Eagle = "Eagle"
        case Scheme = "Scheme"
        case PLSQL = "PLSQL"
        case Python = "Python"
        case Max = "Max"
        case CommonLisp = "Common Lisp"
        case Latte = "Latte"
        case XQuery = "XQuery"
        case Omgrofl = "Omgrofl"
        case XC = "XC"
        case Nimrod = "Nimrod"
        case SystemVerilog = "SystemVerilog"
        case Chapel = "Chapel"
        case Groovy = "Groovy"
        case Dylan = "Dylan"
        case E = "E"
        case Parrot = "Parrot"
        case GrammaticalFramework = "Grammatical Framework"
        case GameMakerLanguage = "Game Maker Language"
        case Papyrus = "Papyrus"
        case NetLinxERB = "NetLinx+ERB"
        case Clean = "Clean"
        case Alloy = "Alloy"
        case Squirrel = "Squirrel"
        case PAWN = "PAWN"
        case UnrealScript = "UnrealScript"
        case StandardML = "Standard ML"
        case Slim = "Slim"
        case Perl6 = "Perl6"
        case Julia = "Julia"
        case Haskell = "Haskell"
        case NCL = "NCL"
        case Io = "Io"
        case Rouge = "Rouge"
        case cpp = "cpp"
        case AGSScript = "AGS Script"
        case Dogescript = "Dogescript"
        case nesC = "nesC"
    }
    
}

extension LanguageColor.Language {
    var color: UIColor? {
        switch self {
        case .Mercury:
            return UIColor(hex: "#ff2b2b")
        case .TypeScript:
            return UIColor(hex: "#2b7489")
        case .PureBasic:
            return UIColor(hex: "#5a6986")
        case .ObjectiveCPlusPlus:
            return UIColor(hex: "#6866fb")
        case .SelfLang:
            return UIColor(hex: "#0579aa")
        case .edn:
            return UIColor(hex: "#db5855")
        case .NewLisp:
            return UIColor(hex: "#87AED7")
        case .JupyterNotebook:
            return UIColor(hex: "#DA5B0B")
        case .Rebol:
            return UIColor(hex: "#358a5b")
        case .Frege:
            return UIColor(hex: "#00cafe")
        case .Dart:
            return UIColor(hex: "#00B4AB")
        case .AspectJ:
            return UIColor(hex: "#a957b0")
        case .Shell:
            return UIColor(hex: "#89e051")
        case .WebOntologyLanguage:
            return UIColor(hex: "#9cc9dd")
        case .xBase:
            return UIColor(hex: "#403a40")
        case .Eiffel:
            return UIColor(hex: "#946d57")
        case .Nix:
            return UIColor(hex: "#7e7eff")
        case .RAML:
            return UIColor(hex: "#77d9fb")
        case .MTML:
            return UIColor(hex: "#b7e1f4")
        case .Racket:
            return UIColor(hex: "#22228f")
        case .Elixir:
            return UIColor(hex: "#6e4a7e")
        case .SAS:
            return UIColor(hex: "#B34936")
        case .Agda:
            return UIColor(hex: "#315665")
        case .wisp:
            return UIColor(hex: "#7582D1")
        case .D:
            return UIColor(hex: "#ba595e")
        case .Kotlin:
            return UIColor(hex: "#F18E33")
        case .Opal:
            return UIColor(hex: "#f7ede0")
        case .Crystal:
            return UIColor(hex: "#776791")
        case .ObjectiveC:
            return UIColor(hex: "#438eff")
        case .ColdFusionCFC:
            return UIColor(hex: "#ed2cd6")
        case .Oz:
            return UIColor(hex: "#fab738")
        case .Mirah:
            return UIColor(hex: "#c7a938")
        case .ObjectiveJ:
            return UIColor(hex: "#ff0c5a")
        case .Gosu:
            return UIColor(hex: "#82937f")
        case .FreeMarker:
            return UIColor(hex: "#0050b2")
        case .Ruby:
            return UIColor(hex: "#701516")
        case .ComponentPascal:
            return UIColor(hex: "#b0ce4e")
        case .Arc:
            return UIColor(hex: "#aa2afe")
        case .Brainfuck:
            return UIColor(hex: "#2F2530")
        case .Nit:
            return UIColor(hex: "#009917")
        case .APL:
            return UIColor(hex: "#5A8164")
        case .Go:
            return UIColor(hex: "#375eab")
        case .VisualBasic:
            return UIColor(hex: "#945db7")
        case .PHP:
            return UIColor(hex: "#4F5D95")
        case .Cirru:
            return UIColor(hex: "#ccccff")
        case .SQF:
            return UIColor(hex: "#3F3F3F")
        case .Glyph:
            return UIColor(hex: "#e4cc98")
        case .Java:
            return UIColor(hex: "#b07219")
        case .MAXScript:
            return UIColor(hex: "#00a6a6")
        case .Scala:
            return UIColor(hex: "#DC322F")
        case .Makefile:
            return UIColor(hex: "#427819")
        case .ColdFusion:
            return UIColor(hex: "#ed2cd6")
        case .Perl:
            return UIColor(hex: "#0298c3")
        case .Lua:
            return UIColor(hex: "#000080")
        case .Vue:
            return UIColor(hex: "#2c3e50")
        case .Verilog:
            return UIColor(hex: "#b2b7f8")
        case .Factor:
            return UIColor(hex: "#636746")
        case .Haxe:
            return UIColor(hex: "#df7900")
        case .PureData:
            return UIColor(hex: "#91de79")
        case .Forth:
            return UIColor(hex: "#341708")
        case .Red:
            return UIColor(hex: "#ee0000")
        case .Hy:
            return UIColor(hex: "#7790B2")
        case .Volt:
            return UIColor(hex: "#1F1F1F")
        case .LSL:
            return UIColor(hex: "#3d9970")
        case .eC:
            return UIColor(hex: "#913960")
        case .CoffeeScript:
            return UIColor(hex: "#244776")
        case .HTML:
            return UIColor(hex: "#e44b23")
        case .Lex:
            return UIColor(hex: "#DBCA00")
        case .APIBlueprint:
            return UIColor(hex: "#2ACCA8")
        case .Swift:
            return UIColor(hex: "#ffac45")
        case .C:
            return UIColor(hex: "#555555")
        case .AutoHotkey:
            return UIColor(hex: "#6594b9")
        case .Isabelle:
            return UIColor(hex: "#FEFE00")
        case .Metal:
            return UIColor(hex: "#8f14e9")
        case .Clarion:
            return UIColor(hex: "#db901e")
        case .JSONiq:
            return UIColor(hex: "#40d47e")
        case .Boo:
            return UIColor(hex: "#d4bec1")
        case .AutoIt:
            return UIColor(hex: "#1C3552")
        case .Clojure:
            return UIColor(hex: "#db5855")
        case .Rust:
            return UIColor(hex: "#dea584")
        case .Prolog:
            return UIColor(hex: "#74283c")
        case .SourcePawn:
            return UIColor(hex: "#5c7611")
        case .AMPL:
            return UIColor(hex: "#E6EFBB")
        case .FORTRAN:
            return UIColor(hex: "#4d41b1")
        case .ANTLR:
            return UIColor(hex: "#9DC3FF")
        case .Harbour:
            return UIColor(hex: "#0e60e3")
        case .Tcl:
            return UIColor(hex: "#e4cc98")
        case .BlitzMax:
            return UIColor(hex: "#cd6400")
        case .PigLatin:
            return UIColor(hex: "#fcd7de")
        case .Lasso:
            return UIColor(hex: "#999999")
        case .ECL:
            return UIColor(hex: "#8a1267")
        case .VHDL:
            return UIColor(hex: "#adb2cb")
        case .Elm:
            return UIColor(hex: "#60B5CC")
        case .PropellerSpin:
            return UIColor(hex: "#7fa2a7")
        case .X10:
            return UIColor(hex: "#4B6BEF")
        case .IDL:
            return UIColor(hex: "#a3522f")
        case .ATS:
            return UIColor(hex: "#1ac620")
        case .Ada:
            return UIColor(hex: "#02f88c")
        case .Unity3DAsset:
            return UIColor(hex: "#ab69a1")
        case .Nu:
            return UIColor(hex: "#c9df40")
        case .LFE:
            return UIColor(hex: "#004200")
        case .SuperCollider:
            return UIColor(hex: "#46390b")
        case .Oxygene:
            return UIColor(hex: "#cdd0e3")
        case .ASP:
            return UIColor(hex: "#6a40fd")
        case .Assembly:
            return UIColor(hex: "#6E4C13")
        case .Gnuplot:
            return UIColor(hex: "#f0a9f0")
        case .JFlex:
            return UIColor(hex: "#DBCA00")
        case .NetLinx:
            return UIColor(hex: "#0aa0ff")
        case .Turing:
            return UIColor(hex: "#45f715")
        case .Vala:
            return UIColor(hex: "#fbe5cd")
        case .Processing:
            return UIColor(hex: "#0096D8")
        case .Arduino:
            return UIColor(hex: "#bd79d1")
        case .FLUX:
            return UIColor(hex: "#88ccff")
        case .NetLogo:
            return UIColor(hex: "#ff6375")
        case .CSharp:
            return UIColor(hex: "#178600")
        case .CSS:
            return UIColor(hex: "#563d7c")
        case .EmacsLisp:
            return UIColor(hex: "#c065db")
        case .Stan:
            return UIColor(hex: "#b2011d")
        case .SaltStack:
            return UIColor(hex: "#646464")
        case .QML:
            return UIColor(hex: "#44a51c")
        case .Pike:
            return UIColor(hex: "#005390")
        case .LOLCODE:
            return UIColor(hex: "#cc9900")
        case .ooc:
            return UIColor(hex: "#b0b77e")
        case .Handlebars:
            return UIColor(hex: "#01a9d6")
        case .J:
            return UIColor(hex: "#9EEDFF")
        case .Mask:
            return UIColor(hex: "#f97732")
        case .EmberScript:
            return UIColor(hex: "#FFF4F3")
        case .TeX:
            return UIColor(hex: "#3D6117")
        case .Nemerle:
            return UIColor(hex: "#3d3c6e")
        case .KRL:
            return UIColor(hex: "#28431f")
        case .RenPy:
            return UIColor(hex: "#ff7f7f")
        case .UnifiedParallelC:
            return UIColor(hex: "#4e3617")
        case .Golo:
            return UIColor(hex: "#88562A")
        case .Fancy:
            return UIColor(hex: "#7b9db4")
        case .OCaml:
            return UIColor(hex: "#3be133")
        case .Shen:
            return UIColor(hex: "#120F14")
        case .Pascal:
            return UIColor(hex: "#b0ce4e")
        case .FSharp:
            return UIColor(hex: "#b845fc")
        case .Puppet:
            return UIColor(hex: "#302B6D")
        case .ActionScript:
            return UIColor(hex: "#882B0F")
        case .Diff:
            return UIColor(hex: "#88dddd")
        case .RagelinRubyHost:
            return UIColor(hex: "#9d5200")
        case .Fantom:
            return UIColor(hex: "#dbded5")
        case .Zephir:
            return UIColor(hex: "#118f9e")
        case .Click:
            return UIColor(hex: "#E4E6F3")
        case .Smalltalk:
            return UIColor(hex: "#596706")
        case .DM:
            return UIColor(hex: "#447265")
        case .Ioke:
            return UIColor(hex: "#078193")
        case .PogoScript:
            return UIColor(hex: "#d80074")
        case .LiveScript:
            return UIColor(hex: "#499886")
        case .JavaScript:
            return UIColor(hex: "#f1e05a")
        case .VimL:
            return UIColor(hex: "#199f4b")
        case .PureScript:
            return UIColor(hex: "#1D222D")
        case .ABAP:
            return UIColor(hex: "#E8274B")
        case .Matlab:
            return UIColor(hex: "#bb92ac")
        case .Slash:
            return UIColor(hex: "#007eff")
        case .R:
            return UIColor(hex: "#198ce7")
        case .Erlang:
            return UIColor(hex: "#B83998")
        case .Pan:
            return UIColor(hex: "#cc0000")
        case .LookML:
            return UIColor(hex: "#652B81")
        case .Eagle:
            return UIColor(hex: "#814C05")
        case .Scheme:
            return UIColor(hex: "#1e4aec")
        case .PLSQL:
            return UIColor(hex: "#dad8d8")
        case .Python:
            return UIColor(hex: "#3572A5")
        case .Max:
            return UIColor(hex: "#c4a79c")
        case .CommonLisp:
            return UIColor(hex: "#3fb68b")
        case .Latte:
            return UIColor(hex: "#A8FF97")
        case .XQuery:
            return UIColor(hex: "#5232e7")
        case .Omgrofl:
            return UIColor(hex: "#cabbff")
        case .XC:
            return UIColor(hex: "#99DA07")
        case .Nimrod:
            return UIColor(hex: "#37775b")
        case .SystemVerilog:
            return UIColor(hex: "#DAE1C2")
        case .Chapel:
            return UIColor(hex: "#8dc63f")
        case .Groovy:
            return UIColor(hex: "#e69f56")
        case .Dylan:
            return UIColor(hex: "#6c616e")
        case .E:
            return UIColor(hex: "#ccce35")
        case .Parrot:
            return UIColor(hex: "#f3ca0a")
        case .GrammaticalFramework:
            return UIColor(hex: "#79aa7a")
        case .GameMakerLanguage:
            return UIColor(hex: "#8fb200")
        case .Papyrus:
            return UIColor(hex: "#6600cc")
        case .NetLinxERB:
            return UIColor(hex: "#747faa")
        case .Clean:
            return UIColor(hex: "#3F85AF")
        case .Alloy:
            return UIColor(hex: "#64C800")
        case .Squirrel:
            return UIColor(hex: "#800000")
        case .PAWN:
            return UIColor(hex: "#dbb284")
        case .UnrealScript:
            return UIColor(hex: "#a54c4d")
        case .StandardML:
            return UIColor(hex: "#dc566d")
        case .Slim:
            return UIColor(hex: "#ff8f77")
        case .Perl6:
            return UIColor(hex: "#0000fb")
        case .Julia:
            return UIColor(hex: "#a270ba")
        case .Haskell:
            return UIColor(hex: "#29b544")
        case .NCL:
            return UIColor(hex: "#28431f")
        case .Io:
            return UIColor(hex: "#a9188d")
        case .Rouge:
            return UIColor(hex: "#cc0088")
        case .cpp:
            return UIColor(hex: "#f34b7d")
        case .AGSScript:
            return UIColor(hex: "#B9D9FF")
        case .Dogescript:
            return UIColor(hex: "#cca760")
        case .nesC:
            return UIColor(hex: "#94B0C7")
        }
    }
}


