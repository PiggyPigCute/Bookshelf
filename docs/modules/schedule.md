# ⏲️ Schedule

**`#bs.schedule:help`**

Enhance command scheduling with this module, providing flexibility beyond vanilla capabilities. Cancel commands and maintain execution context (entity & location).

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Cancel

::::{tab-set}
:::{tab-item} All

```{function} #bs.schedule:cancel

Cancel all scheduled commands that match the given id.

:Inputs:
  **Macro Var `with.id` [any]**: Scheduled command parameter to match against.
```

*Cancel all commands that have an `id` parameter set to "foo":*
```mcfunction
function #bs.schedule:cancel {with:{id:"foo"}}
```

:::
:::{tab-item} Single one

```{function} #bs.schedule:cancel_one

Cancel the first scheduled command that match the given id.

:Inputs:
  **Macro Var `with.id` [any]**: Scheduled command parameter to match against.
```

*Cancel the next command that have an `id` parameter set to "foo":*
```mcfunction
function #bs.schedule:cancel_one {with:{id:"foo"}}
```
:::
::::

> **Credits**: Aksiome, theogiraudet

---

### Clear

```{function} #bs.schedule:clear

Clear all scheduled commands.
```

*Remove all scheduled commands:*

```mcfunction
function #bs.schedule:clear
```

> **Credits**: Aksiome, theogiraudet

---

### Schedule

```{function} #bs.schedule:schedule

Schedule a command for execution.
If a command is registered in a tick where commands are already registered, adds the command after those already registered.

:Inputs:
  **Macro Var `with.command` [string]**: Command to schedule.

  **Macro Var `with.time` [int]**: Time to wait. In ticks by default if unit is not defined.

  **Macro Var `with.unit` [string]**: Unit of the specified time (tick, second, minute, hour, t, s, m, h).

  **Macro Var `with.id` [any]**: Optional parameter used to identify the scheduled command.

:Outputs:
  **Return**: The `suid` identifier of the scheduled command.
```

*Execute `say foo` in 2 seconds:*

```mcfunction
function #bs.schedule:schedule {with:{command:"say foo",time:2,unit:"s"}}
```

*Schedule then cancel commands that match a complex id:*

```mcfunction
function #bs.schedule:schedule {with:{id:{foo:"bar",fails:true},command:"say failure",time:10,unit:"s"}}
function #bs.schedule:schedule {with:{id:{foo:"bar"},command:"say success",time:10,unit:"s"}}
function #bs.schedule:cancel {with:{id:{fails:true}}}
```

> **Credits**: Aksiome, theogiraudet

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
