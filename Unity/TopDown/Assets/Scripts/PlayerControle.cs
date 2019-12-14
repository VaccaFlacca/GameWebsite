using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerControle : MonoBehaviour {
    public float speed = 0.1f;
    Transform player;
	
	void Start () {
        player = GameObject.Find("Player").GetComponent<Transform>();
	}
	
	
	void FixedUpdate () {

        Vector3 movement = Vector3.zero;

		if(Input.GetKey(KeyCode.W))
        {
            movement=(Vector3.up * speed);
        }
        if (Input.GetKey(KeyCode.S))
        {
            movement=(-Vector3.up *speed);
        }
        if (Input.GetKey(KeyCode.A))
        {
            movement = (-Vector3.right * speed);
        }
        if (Input.GetKey(KeyCode.D))
        {
            movement = (Vector3.right * speed);
        }

        player.Translate(movement);

    }
}
