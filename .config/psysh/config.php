<?php

$localLoaders = [];
$currentProjectComposerAutoloader = getcwd() . '/vendor/autoload.php';
if (is_file($currentProjectComposerAutoloader)) {
    $localLoaders[] = $currentProjectComposerAutoloader;
}

return [
    'defaultIncludes' => $localLoaders,
];
