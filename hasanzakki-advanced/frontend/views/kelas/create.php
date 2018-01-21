<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model frontend\models\Kelas */

$this->title = Yii::t('app', 'Create Kelas');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Kelas'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kelas-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
