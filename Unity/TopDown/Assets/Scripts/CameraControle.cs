using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraControle : MonoBehaviour {

    public Transform target;
    public Vector3 offset = new Vector3(0f, 0f, -10f);
	
	void Start () {
        target = GameObject.Find("Player").GetComponent<Transform>();
	}
	
	
	void Update () {
        transform.position = target.position + offset;
	}

    
}
