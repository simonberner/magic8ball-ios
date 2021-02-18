import XCTest

class magic8ball_iosUITests: XCTestCase {
    
    var app = XCUIApplication()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app.launch()

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMagicBall2Exists() throws {
        // UI tests must launch the application that they test.
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        // Given
        let askMeNowButton = XCUIApplication().buttons["Ask me now!"]
        
        // When
        askMeNowButton.tap()
        
        // Then
        XCTAssert(app.staticTexts["Ask Me Anything..."].exists)
        // TODO: how can I check if the ball2 image exists on the UI?
        XCTAssert(app.images["ball2"].exists)

  
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
