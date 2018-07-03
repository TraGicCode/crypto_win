# == Class: crypto_win::ciphers::aes_128_128
class crypto_win::ciphers::aes_128_128 {

  if $crypto_win::aes_128_128 {
    $aes_128_128_enabled = 4294967295
  } else {
    $aes_128_128_enabled = 0
  }

  registry::value { 'Enabled':
    key  => 'HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\AES 128/128',
    data => $aes_128_128_enabled,
  }

}