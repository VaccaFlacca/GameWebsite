	const config = {
		width: 748,
		height: 518,
        backgroundColor: 0x000000,
        scale: {
            mode: Phaser.Scale.FIT,
            autoCenter: Phaser.Scale.CENTER_BOTH
        },
        scene: [TitleScreen, Scene1, StartScreen, EndScreen],
		pixelArt: true
}

var game = new Phaser.Game(config);





