<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use frontend\models\Kelas;
use frontend\models\TahunAjaran;

/* @var $this yii\web\View */
/* @var $model frontend\models\KelasTahunAjaran */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="kelas-tahun-ajaran-form">

    <?php $form = ActiveForm::begin(); ?>

    <?php //$form->field($model, 'id_tahun_ajaran')->textInput() ?>

    <?= $form->field($model,'id_tahun_ajaran')->dropDownList(ArrayHelper::map(TahunAjaran::find()->all(),'id','nama')) ?>

    <?php //$form->field($model, 'id_kelas')->textInput() ?>

    <?= $form->field($model,'id_kelas')->dropDownList(ArrayHelper::map(Kelas::find()->all(),'id','nama')) ?>

    <?php //$form->field($model, 'created_at')->textInput() ?>

    <?php //$form->field($model, 'updated_at')->textInput() ?>

    <?php //$form->field($model, 'created_by')->textInput() ?>

    <?php //$form->field($model, 'updated_by')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
