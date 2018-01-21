<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\DataIndukSiswa */

$this->title = $model->nama;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Data Induk Siswa'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="data-induk-siswa-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            //'id',
            'nis',
            'nama',
            'alamat',
            'tempat_lahir',
            'tanggal_lahir',
            'nama_ortu',
            'tahun_masuk',
            'created_at',
            'updated_at',
            'createdBy.username',
            'updatedBy.username',
        ],
    ]) ?>

</div>
