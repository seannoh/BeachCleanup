// using System.Collections;
// using System.Collections.Generic;
// using UnityEngine;
// using UnityEngine.InputSystem;

// public class InputManager : SingletonMonoDrag<InputManager>
// {

//     private Vector2 moveDirection = Vector2.zero;
//     private bool interactPressed = false;
//     private bool submitPressed = false;


//     public void MovePressed(InputAction.CallbackContext context)
//     {
//         if (context.performed)
//         {
//             moveDirection = context.ReadValue<Vector2>();
//         }
//         else if (context.canceled)
//         {
//             moveDirection = context.ReadValue<Vector2>();
//         } 
//     }

//     public void InteractButtonPressed(InputAction.CallbackContext context)
//     {
//         if (context.performed)
//         {
//             interactPressed = true;
//         }
//         else if (context.canceled)
//         {
//             interactPressed = false;
//         } 
//     }

//     public void SubmitPressed(InputAction.CallbackContext context)
//     {
//         if (context.performed)
//         {
//             submitPressed = true;
//         }
//         else if (context.canceled)
//         {
//             submitPressed = false;
//         } 
//     }

//     public Vector2 GetMoveDirection() 
//     {
//         return moveDirection;
//     }

//     public bool GetInteractPressed() 
//     {
//         bool result = interactPressed;
//         interactPressed = false;
//         return result;
//     }

//     public bool GetSubmitPressed() 
//     {
//         bool result = submitPressed;
//         submitPressed = false;
//         return result;
//     }
// }