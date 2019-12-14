class TitleScreen extends Phaser.Scene{
	constructor(){
		super("bootGame");
	}

    preload() {
		this.load.image("background" , "assets/Images/background.png");
		this.load.image("stage", "assets/Images/stage.jpg");
		this.load.image("Back", "assets/Images/Back.jpg");
		this.load.spritesheet("zombieL", "assets/SpriteSheet/zombieSpriteL.png",{
			frameWidth:56.25,
			frameHeight: 52
		});
		this.load.spritesheet("zombie", "assets/SpriteSheet/zombieSprite.png",{
			frameWidth:56.25,
			frameHeight: 52
		});
		this.load.spritesheet("Left","assets/SpriteSheet/PlayerLeft.png",{
			frameWidth: 163.3,
			frameHeight: 135
		});
		this.load.spritesheet("Right","assets/SpriteSheet/PlayerRight.png",{
			frameWidth: 163.3,
			frameHeight: 135
		});
		this.load.spritesheet("Down","assets/SpriteSheet/PlayerDown.png",{
			frameWidth: 163.3,
			frameHeight: 135
		});
		this.load.spritesheet("Up","assets/SpriteSheet/PlayerUp.png",{
			frameWidth: 163.3,
			frameHeight: 135
		});

	}

	create(){
		this.background = this.add.image(0,0,"background");
		this.background.setOrigin(0,0);

		const PlayButton = this.add.text(config.width/3,375, "Play Game!", {
			font: "35px Arial",
		  fill: "Red"
		});

		PlayButton.setInteractive();

		PlayButton.on('pointerdown', () => this.scene.start("Rules") );

	}


}
