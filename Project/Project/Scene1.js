class Scene1 extends Phaser.Scene{
	constructor(){
        super("playGame");
        
    }



	create()
    {
        var score;
        var round;
        var speed;
        var kills;
        score = 0;
        round = 1;
        speed = "0.5";
        kills = 0;
		this.background = this.add.image(0,0,"stage");
        this.background.setOrigin(0, 0);
		
        this.add.text(15, 11, "Score:", {
            font: "16px Arial",
            fill: "White"
        });
        this.scoreText = this.add.text(69, 11,score, {
            font: "16px Arial",
            fill: "White"
        });
		
        this.add.text(140, 11, "Round:", {
            font: "16px Arial",
            fill: "White"
        });
        this.roundText = this.add.text(199, 11, round, {
            font: "16px Arial",
            fill: "Red"
        });
		
        this.add.text(250, 11, "Kills:", {
            font: "16px Arial",
            fill: "White"
        });
        this.killsText = this.add.text(289, 11, kills, {
            font: "16px Arial",
            fill: "Red"
        });

        this.zombie = this.add.sprite(50, Phaser.Math.Between(140, config.height), "zombie");
        //this.zombieL = this.add.sprite(700, Phaser.Math.Between(140, config.height), "zombieL");
   
		
        this.anims.create({
            key: "ship1_anim",
            frames: this.anims.generateFrameNumbers("zombie"),
            frameRate: 15,
            repeat: -1
		});
		
		this.anims.create({
			key:"zombieL",
			frames: this.anims.generateFrameNumbers("zombieL"),
			frameRate: 15,
			repeat: -1
		});
		
		
		this.zombie.play("ship1_anim");
        //this.zombieL.play("zombieL");
        
        this.zombie.setInteractive();
       //this.zombieL.setInteractive();

        this.input.on('gameobjectdown', this.resetZombiePosLScore, this);
        //this.input.on('gameobjectdown', this.resetZombiePosR, this);


        this.cursorKeys = this.input.keyboard.createCursorKeys();

        
	}
	
	
	update()
    {
        var score;
        var round;
        var speed;
        var kills;
        score = 0;
        round = 1;
        speed = "0.5";
        kills = 0;

        this.moveZombieR(this.zombie, (speed * round));
        //this.moveZombieL(this.zombieL, (speed * round));

        this.SecritDevStuff();
    }


    SecritDevStuff() {
        if (this.cursorKeys.up.isDown) {
            if (this.cursorKeys.up.shiftKey)
            {
                var url = "AdminStuff.aspx";
                window.location = url;
                //this.scene.start("End");
            }
            
        }
    }



    moveZombieL(zombie, speed) {
        zombie.x -= speed;
        if (zombie.x < (config.width / 2)) {
            this.resetZombiePosL(zombie);
        }
    }

    moveZombieR(zombie, speed) {
        zombie.x += speed;
        if (zombie.x > (config.width / 2)) {
            this.resetZombiePosR(zombie);
        }
    }

    resetZombiePosL(zombie) {
        this.zombie.x = 700;
        var randomY = Phaser.Math.Between(80, (config.height - 60));
        this.zombie.y = randomY;
    }

    resetZombiePosLScore(zombie) {
        this.score++;

        this.scoreText.setText(this.score);
        
        this.zombie.x = 700;
        var randomY = Phaser.Math.Between(80, (config.height - 60));
        this.zombie.y = randomY;
    }

    resetZombiePosR(zombie) {
        zombie.x = 50;
        var randomY = Phaser.Math.Between(80, (config.height - 60));
        zombie.y = randomY;
    }
	

	
}
	
	
	
