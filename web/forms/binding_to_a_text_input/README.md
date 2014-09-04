# Binding to a Text Input

Ports https://github.com/PolymerLabs/polymer-snippets/blob/ca250355c6d4076f16353fb386c07ca106d6fc4e/snippets/forms/binding-to-a-text-input.html 

Shows the use of data binding using a text input.

To create a two-way binding for a text field, bind the field to the `<input>`'s
`value` attribute:

    <input type="text" value="{{message}}" ...>
    
Changing the value of the `<input>` updates the `message` field.     

