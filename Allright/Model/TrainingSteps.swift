//
//  TrainingStep.swift
//  Allright
//
//  Created by 최진용 on 2023/09/18.
//

import SwiftUI

enum TrainingSteps {
    case step1, step2, sentance
    
    var title: String {
        switch self {
        case .step1: return "음절읽기1"
        case .step2: return "음절읽기2"
        case .sentance: return "문장읽기"
        }
    }
    
    var description: String {
        switch self {
        case .step1: return "한 음절씩 천천히 읽기"
        case .step2: return "한 호흡에 전부 읽기"
        case .sentance: return "하루 한 문장 도전"
        }
    }
    
    var type: String {
        switch self {
        case .step1: return "Step1"
        case .step2: return "Step2"
        case .sentance: return "Sentence"
        }
    }
    
    var blockSize: CGSize {
        switch self {
        case .step1: return CGSize(width: 52, height: 22)
        case .step2: return CGSize(width: 52, height: 22)
        case .sentance: return CGSize(width: 38, height: 22)
        }
    }
    
    var blockWord: String {
        switch self {
        case .step1: return "음절"
        case .step2: return "음절"
        case .sentance: return "문장"
        }
    }
    
    var blockImage: Image? {
        switch self {
        case .step1: return Image(systemName: "1.circle.fill")
        case .step2: return Image(systemName: "2.circle.fill")
        case .sentance: return nil
        }
    }
    
    var blockColor: Color {
        switch self {
        case .step1: return Colors.green400
        case .step2: return Colors.green600
        case .sentance: return Colors.green700
        }
    }
    
    var wordCard: [String] {
        switch self {
        case .step1:
            return [
                "가","갸","거","겨","고","교","구","규","그","기"
                ,"나","냐","너","녀","노","뇨","누","뉴","느","니"
                ,"다","댜","더","뎌","도","됴","두","듀","드","디"
                ,"라","랴","러","려","로","료","루","류","르","리"
                ,"마","먀","머","며","모","묘","무","뮤","므","미"
                ,"바","뱌","버","벼","보","뵤","부","뷰","브","비"
                ,"사","샤","서","셔","소","쇼","수","슈","스","시"
                ,"아","야","어","여","오","요","우","유","으","이"
                ,"자","쟈","저","져","조","죠","주","쥬","즈","지"
                ,"차","챠","처","쳐","초","쵸","추","츄","츠","치"
                ,"카","캬","커","켜","코","쿄","쿠","큐","크","키"
                ,"타","탸","터","텨","토","툐","투","튜","트","티"
                ,"파","퍄","퍼","펴","포","표","푸","퓨","프","피"
                ,"하","햐","허","혀","호","효","후","휴","흐","히"
            ]
        case .step2:
            return [
                "가갸거겨고교구규그기",
                "나냐너녀노뇨누뉴느니",
                "다댜더뎌도됴두듀드디",
                "라랴러려로료루류르리",
                "마먀머며모묘무뮤므미",
                "바뱌버벼보뵤부뷰브비",
                "사샤서셔소쇼수슈스시",
                "아야어여오요우유으이",
                "자쟈저져조죠주쥬즈지",
                "차챠처쳐초쵸추츄츠치",
                "카캬커켜코쿄쿠큐크키",
                "타탸터텨토툐투튜트티",
                "파퍄퍼펴포표푸퓨프피",
                "하햐허혀호효후휴흐히"
            ]
        case .sentance:
            return [
                "횡성군에 따르면 횡성군청 기획감사실 소속 박주무관이 9년째 헌혈을 실천하고 있기에 헌혈 유공자 은장을 수상할 수 있었습니다.",
                "욍엉운에 아으연 욍엉운엉 이왹암아일 오옥 악우우완이 우연애 언열을 일언아오 있이에 언열 유옹아 은앙을 우앙알 우 있었읍이아.",
                "올해 유난히 심한 폭염에 시민들이 건강 피해를 입지 않도록, 응급실 운영 의료기관에 온열질환자 발생 상황을 매일 파악하면서 시민들에게 폭염예방과 건강수칙을 준수할 것을 강조했습니다.",
                "올애 유안이 임안 옥염에 이인을이 언앙 이애을 입이 않오옥, 응읍일 운영 의요이완에 온열일완아 알앵 앙왕을 애일 아악아연어 이인을에에 옥염예앙와 언앙우익을 운우알 엇을 앙오앴읍이아.",
                "골든리트리버는 지난 1868년 스코틀랜드에서 처음 탄생했으며, 스코틀랜드 인버네스셔의 구이사천 하우스에 무려 361마리가 모였습니다.",
                "올은리으이어은 이안 언알액알입알연 으오을앤으에어 어음 안앵앴으여, 으오을앤으 인어에으여의 우이아언 아우으에 우여 암액육입일아이아 오였읍이아.",
                "종합편성채널의 예능프로그램에서는 황태고추장, 북어고추장찌개, 우엉조림, 마늘닭간장조림, 삼치된장조림 레시피를 알려주는 모습이 그려졌습니다. 먼저 황태 고추장은 1분간 물에 주물러 씻어준 뒤 석쇠에 황태채를 올려 약불에서 직화로 2분간 앞뒤로 굽습니다.",
                "옹압연엉애얼의 예응으오으앰에어은 왕애오우앙, 욱어오우앙이애, 우엉오임, 아을앍안앙오임, 암이왼앙오임 에이이을 알여우은 오읍이 으여였읍이아. 언어 왕애 오우앙은 일운안 울에 우울어 잇어운 위 억외에 왕애애응 올여 약울에어 익와오 이운안 앞위오 웁읍이아.",
                "앙겔라 메르켈 독일 총리가 남편인 요하임 자우어 교수와 함께 독일 남동부 도시 바이로이트에서 열린 바그너 페스티벌 개막식에 참석했습니다.",
                "앙엘아 에으엘 옥일 옹이아 암연인 요아임 아우어 요우와 암에 옥일 암옹우 오이 아이오이으에어 열인 아으어 에으이얼 애악익에 암억앴읍이아.",
                "2년 연속 ‘소셜 아티스트’ 부문 수상도 한국 아티스트 가운데 처음입니다. 국내 음악평론가들은 방탄소년단의 성공 요인으로 스스로 작사 및 작곡을 해내는 능력, 칼군무를 추면서 라이브까지 소화하는 실력, 무대매너와 팬 서비스매너를 꼽았습니다.",
                "이연 연옥 '오열 아이으트' 우운 우앙오 안욱 아이으으 아운에 어음입이아. 욱애 음악영온아을은 앙안오연안의 엉옹 요인으오 으으오 악아 잋 악옥을 애애은 응역, 알운우을 우연어 아이으아이 오와아은 일역, 우애애와 앤 어이으애어을 옵았읍이아.",
                "독도 종합해양과학기지 건설 여부가 주목되고 있습니다. 서해엔 가거초 해양과학기지, 남해엔 이어도 종합해양과학기지가 운영 중이지만 울릉도, 독도가 위치한 동해에는 종합해양과학기지가 없습니다.",
                "옥오 옹압애양와악이이 언얼 여우아 우옥외오 있읍이아. 어애엔 아어오 애양와악이이, 암애엔 이어오 옹압애양와악이이아 운영 웅이이안 울응오, 옥오아 위이안 옹애에은 옹압애양와악이이아 없읍이아.",
                "블루베리나 라즈베리 등 딸기류를 매일 권장 섭취량만큼 먹으면 심혈관계 질환으로 인한 사망 위험을 최대 40%까지 줄일 수 있다는 연구 결과가 나왔습니다.",
                "을우에이아 아으에이 응 알이유을 애일 원앙 업위양안음 억으연 임열완예 일완으오 인안 아앙 위엄을 외애 아입으오아이 울일 우 있아은 연우 열와아 아왔읍이아.",
                "바둑의 기초 게임 원리를 스스로 학습하는 알파고 제로를 발표하면서 더 이상 인공지능 알파고와 인간간의 바둑대회는 무의미하게 되었습니다.",
                "아욱의 이오 에임 원이을 으으로 악읍아은 알아오 에오을 알요아연어 어 이앙 인옹이응 알아오와 인안안의 아욱애외은 우의이아에 외었읍이아.",
                "당뇨 환자라고 판단되면 병원을 방문해 의사의 문진과 진찰, 몇 가지 간단한 검사 등을 통해 다른 원인에 의한 신경병증이 아닌 것을 확인한 후 진단할 수 있습니다.",
                "앙요 완아아고 안안외연 영원을 앙운애 의아의 운인와 인알, 옃 아이 안안안 엄아 응을 옹애 아은 원인에 의안 인영영응이 아인 엇을 왁인안 우 인안알 우 있읍이아."
            ]
        }
    }
}
