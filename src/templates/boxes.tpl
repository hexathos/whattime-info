{if $success neq ""}
    <div class="alert-message success" style="margin-top:10px;">
    <p><strong>Erfolgreich!</strong> {$success|htmlentities}</p>
    </div>
{/if}

{if $info neq ""}
    <div class="alert-message info" style="margin-top:10px;">
    <p><strong>Hinweis!</strong> {$info|htmlentities}</p>
    </div>
{/if}

{if $error neq ""}
    <div class="alert-message error" style="margin-top:10px;">
    <p><strong>Fehler!</strong> {$error|htmlentities}</p>
    </div>
{/if}

{if $warning neq ""}
    <div class="alert-message warning" style="margin-top:10px;">
    <p><strong>Warnung!</strong> {$warning|htmlentities}</p>
    </div>
{/if}
