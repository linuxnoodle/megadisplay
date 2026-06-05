package de.mrapp.android.dialog.decorator;

import android.os.Bundle;
import android.view.View;
import android.view.Window;
import de.mrapp.android.dialog.DialogValidator;
import de.mrapp.android.dialog.model.AnimateableDialog;
import de.mrapp.android.dialog.view.DialogRootView;
import de.mrapp.util.Condition;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class ValidateableDialogDecorator extends AbstractDialogDecorator<AnimateableDialog> implements de.mrapp.android.dialog.model.ValidateableDialogDecorator {
    private final Set<DialogValidator> validators;

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected final void onDetach() {
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onRestoreInstanceState(Bundle bundle) {
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onSaveInstanceState(Bundle bundle) {
    }

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected /* bridge */ /* synthetic */ Map onAttach(Window window, View view, Map map, Void r4) {
        return onAttach2(window, view, (Map<DialogRootView.ViewType, View>) map, r4);
    }

    public ValidateableDialogDecorator(AnimateableDialog animateableDialog) {
        super(animateableDialog);
        this.validators = new LinkedHashSet();
    }

    @Override // de.mrapp.android.dialog.model.ValidateableDialogDecorator
    public final Set<DialogValidator> getDialogValidators() {
        return this.validators;
    }

    @Override // de.mrapp.android.dialog.model.ValidateableDialogDecorator
    public final void addDialogValidator(DialogValidator dialogValidator) {
        Condition.INSTANCE.ensureNotNull(dialogValidator, "The validator may not be null");
        this.validators.add(dialogValidator);
    }

    @Override // de.mrapp.android.dialog.model.ValidateableDialogDecorator
    public final void addAllDialogValidators(Collection<DialogValidator> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        this.validators.addAll(collection);
    }

    @Override // de.mrapp.android.dialog.model.ValidateableDialogDecorator
    public final void removeDialogValidator(DialogValidator dialogValidator) {
        Condition.INSTANCE.ensureNotNull(dialogValidator, "The validator may not be null");
        this.validators.remove(dialogValidator);
    }

    @Override // de.mrapp.android.dialog.model.ValidateableDialogDecorator
    public final void removeAllDialogValidators(Collection<DialogValidator> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        this.validators.removeAll(collection);
    }

    /* JADX INFO: renamed from: onAttach, reason: avoid collision after fix types in other method */
    protected final Map<DialogRootView.ViewType, View> onAttach2(Window window, View view, Map<DialogRootView.ViewType, View> map, Void r4) {
        return Collections.emptyMap();
    }
}
