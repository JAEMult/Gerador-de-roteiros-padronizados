# Script de atualização automática do "Gerador de Roteiros Padronizados".
# Baixa a versão mais recente salva no GitHub (repositório público, sem precisar de senha/token
# pra ler) e substitui a cópia local antes de abrir o app no navegador. Se não houver internet ou
# o GitHub estiver fora do ar, simplesmente abre a cópia local que já existe, sem travar nada.

$ErrorActionPreference = 'Stop'
$dir = Split-Path -Parent $MyInvocation.MyCommand.Path
$url = 'https://raw.githubusercontent.com/JAEMult/Gerador-de-roteiros-padronizados/main/Gerador%20de%20Roteiros%20Padronizados.html'
$destino = Join-Path $dir 'Gerador de Roteiros Padronizados.html'
$temp = Join-Path $dir '_atualizacao_temp.html'

Write-Host 'Buscando a versao mais recente no GitHub...'

try {
    Invoke-WebRequest -Uri $url -OutFile $temp -UseBasicParsing -TimeoutSec 15
    if ((Test-Path $temp) -and (Get-Item $temp).Length -gt 1000) {
        Move-Item -Force $temp $destino
        Write-Host 'Atualizado com sucesso! Abrindo a versao mais recente...'
    } else {
        Write-Host 'O download veio vazio ou incompleto — mantendo a versao local.'
        Remove-Item $temp -ErrorAction SilentlyContinue
    }
} catch {
    Write-Host 'Sem internet ou GitHub indisponivel no momento — abrindo a versao local que ja existe.'
    Remove-Item $temp -ErrorAction SilentlyContinue
}

if (Test-Path $destino) {
    Start-Process $destino
} else {
    Write-Host 'ERRO: nao existe copia local do app e o download falhou. Verifique sua internet e tente novamente.'
    Start-Sleep -Seconds 6
}
