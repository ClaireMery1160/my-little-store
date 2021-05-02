<?php

namespace App\Taxes;

class Detector
{
    protected $seuil;

    public function __construct(float $seuil)
    {
        $this->seuil = $seuil;
    }

    public function detect(int $prix): bool
    {
        $result = ($prix > $this->seuil) ? true : false;
        return $result;
    }
}
