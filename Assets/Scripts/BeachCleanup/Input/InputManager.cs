using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class InputManager : SingletonMonoDrag<InputManager>
{

    private Vector2 moveDirection = Vector2.zero;
    private bool interactPressed = false;

    public void MovePressed(InputAction.CallbackContext context)
    {
        if (context.performed)
        {
            moveDirection = context.ReadValue<Vector2>();
        }
        else if (context.canceled)
        {
            moveDirection = context.ReadValue<Vector2>();
        } 
    }

    public void InteractButtonPressed(InputAction.CallbackContext context)
    {
        if (context.performed)
        {
            interactPressed = true;
        }
        else if (context.canceled)
        {
            interactPressed = false;
        } 
    }

    public Vector2 GetMoveDirection() 
    {
        return moveDirection;
    }

    public bool GetInteractPressed() 
    {
        bool result = interactPressed;
        interactPressed = false;
        return result;
    }
}