## Basic of Assembly Language

* Conditional Check using ```cmp``` command\
    **example :** bx = 4 and check bx == 5\
    then the code will be
    ```asm
    mov bx, 4
    cmp bx, 5
    ```

    **Now to check :**

    | Condition | Command |
    |   :---:   |  :---:  |
    |  A == B   | ```je```|
    |  A != B   |```jne```|
    |  A > B    |```jg``` |
    |  A < B    |```jl``` |
    |  A >= B   |```jge```|
    |  A <= B   |```jle```|

## Print Char

* Switch to Teletype Mode
    ```asm
    mov ah, 0x0e
    mov al, 's'
    ```
* Call BIOS Interrupt : ```0x10```

## Few 'DB'(Define Byte) Codes 

<table>
    <tr>
        <th>Code</th>
        <th>Command</th>
    </tr>
    <tr>
        <td>0</td>
        <td>String End</td>
    </tr>
    <tr>
        <td>10</td>
        <td>\n (new line)</td>
    </tr>
</table>
