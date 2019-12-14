class StartScreen extends Phaser.Scene{
	constructor(){
		super("Rules");
	}

	create(){
		this.background = this.add.image(0,0,"Back");
		
		this.add.text(100,150,"Controles:",{
			font: "16px Arial",
			fill: "Green"
		})
		
		this.add.text(180,150,"Aim With Mouse-Click Zombies to get more score" + "\n" + "Dont let them cross center Line",{
			font: "16px Arial",
			fill: "Green"
        })

        this.add.text(180, 180, "If you are not logged in your score will not be saved", {
            font: "16px Arial",
            fill: "Green"
        })
		
		this.add.text(150,50,"The Best Game Ever",{
			font: "45px Arial",
			fill: "Red"
		})


		const PlayButton = this.add.text(config.width/3,375, "Start Game!", {
			font: "35px Arial",
		  fill: "Yellow"
		});
		
		PlayButton.setInteractive();
		
		PlayButton.on('pointerdown', () => this.scene.start("playGame"));
	}
	
	
}