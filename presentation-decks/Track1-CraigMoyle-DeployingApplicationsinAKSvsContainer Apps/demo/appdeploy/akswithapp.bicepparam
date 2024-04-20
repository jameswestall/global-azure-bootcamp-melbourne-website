using './akswithapp.bicep'

param kubeConfig = 'YXBpVmVyc2lvbjogdjEKY2x1c3RlcnM6Ci0gY2x1c3RlcjoKICAgIGNlcnRpZmljYXRlLWF1dGhvcml0eS1kYXRhOiBMUzB0TFMxQ1JVZEpUaUJEUlZKVVNVWkpRMEZVUlMwdExTMHRDazFKU1VVMlJFTkRRWFJEWjBGM1NVSkJaMGxSUkV4R1pHb3JjR1ZIVGtSdVNqUTBUVGREYzBzNGVrRk9RbWRyY1docmFVYzVkekJDUVZGelJrRkVRVTRLVFZGemQwTlJXVVJXVVZGRVJYZEthbGxVUVdkR2R6QjVUa1JCTUUxVWEzbE5lbEY1VGxST1lVZEJPSGxOUkZVd1RVUlJlRTlVU1hwT1ZFa3hUVEZ2ZHdwRVZFVk1UVUZyUjBFeFZVVkJlRTFEV1RKRmQyZG5TV2xOUVRCSFExTnhSMU5KWWpORVVVVkNRVkZWUVVFMFNVTkVkMEYzWjJkSlMwRnZTVU5CVVVSa0NtY3lSRXRaZEU0ek1TOVZTM2hMWTJKeFdsbFhPWE5ETkRONWMxVXhRMHAxWjFRcmIyUnpXbk5oYlRreFduVk9aVXd3UldGeFJWcFpkVlZKYW05c2ExVUtWa2hhVmpSeVMyVjVVWE0zVEhGTVprRnJUWGxRYUhkU1dXaDJhRU1yWVU4MVFtSkxMMUZ3U0ZOSVFrWjZOMjgyY2xwVVJqUmlOMFpPY0VoUU9IaDRVZ3BHYjFWTmJFSjBUbnBzV1dVMVpXTm9NRkExWlc1alRsaHpWRnBhT1VoS1FWaFBSblo2TUhWU1VVRmllRGh6VURKa056QXpXRWhRVjJab1VrWlZTMU5RQ2xaaVNUUkxVRU5IVW0wMWVuQTBjRU5DV0ZGTVFtVXlkak5ZT0M5VVV6aGlZbVJrVlU5SVoyNXVXalkzUjB3NVMybFBTalF4YWs0NGNqTlRUazFwVlhvS2FGVXZRbGxqUjNSd1dXczBNVWRGUnk5SVEzTjRiemROYUhkSFVERjRXVGMwV1RKU1pIaHlXR1pzY0dKQlIyZ3dkV3RqT1hsT00yeGlXbEp5VVhKVmFncEdSbUpyZFUxeVEwcFBMMEZ4UTAxUFNrczRWRmgzUm1kakswWlBLM0JGVVU5NVFsUjVWaTh3Um5FNGFWYzJSMUJCWVdoWFFsUmxiVkpxUTBrMmNXdG1Da1pzY0VKTlJqVk1XRzFwVEVjMWRVUTVSVmQ1VG5KNGNFZGtla3MxVWsxUmQxRXZOWEkwUTBreVJEZHJRemw2VFZWRksyVnNOblZWYTJJMmJqTlBNSFlLWlVkcGRFNUNlbFpvZVRORVNFMTNSV2RLUldKMFZ6TmpkMEpCZG1SNGJXdzJSakpVYUV0VlVsVXhNV00wV2pkU1FsWnpNMEpTWTFFMGF5dHZTV1U1TndwU1ZXSXZUbFJNUkdsUU1UaEdkVnBUSzIxS2IxaHVRakZEZVZKMGFGVTNkRWR6WkhwV2QzUllTamRMVjBkallubFVRVmx2V1VSV1NHSjVVVVkwY2tsRENpOW9XWFk0TjBWWGFsTlpkWGx4UTI5eE1DdHFkRE13U21NNVFWRkVPRVJtYzBOcFREVjJaV0YyT1c1cGJrMTRLemxQZEVWVVZrWlVOemRQS3pWcWRtb0tjRTFaZVRFeFRqVkJabGhHYnpCRVluSmFSRTFYZUhwNVVUUm5PWFYyTW0xeVQwbGpTekpwTUhsUlNVUkJVVUZDYnpCSmQxRkVRVTlDWjA1V1NGRTRRZ3BCWmpoRlFrRk5RMEZ4VVhkRWQxbEVWbEl3VkVGUlNDOUNRVlYzUVhkRlFpOTZRV1JDWjA1V1NGRTBSVVpuVVZWcVNXMDNPRFpqVDJKeVRraEpUMlZHQ2tSU2VrSlVRbEZRVFVkemQwUlJXVXBMYjFwSmFIWmpUa0ZSUlV4Q1VVRkVaMmRKUWtGTWMzVkJVakpwVFdRellUSjJTRUV5U25WM1NXRnlkV0o2YlVJS1JUVlFhREI1V21OQlpqazJkWFJwWms5cGRqQlpkVXBDVm1aSE9VbDFka3BQUW5WRVpITkpZbUl6Y0RkbU1VNUJPR3g1S3pSWVYyZzRWVFJZT0hReWNBcG5URVV5YlZNdlYxb3hUV1p4YTB0UFVFbG5WR2sxTm01cE4ySktWRmhxZFRab1pUVnVUbXhGVkRkd0wzaGlZMEZUYUhZM1UyRmFUMmxUT1hnNWRqZFZDbEZzUjFGSFIxcFVibTFCUW5sVVlqSlJabGt2TkhFMGJIZzNNak0wUVZoMlR6ZE9jVzFGWTI5c1ZEWkZRMVJMYW5oM2EyVlZPREoyU1ZWdGFsZEhibkVLYjJKdWVYZFBkRmMwVmlzemNsZFVSMU5VWjNJek5VVjRZeTl3UTJWSU1HSXdNSFl2Y1VrNWRHZzNaazF6ZDB4U00wRjZPVVJWTmpWbGJVaHJWbUZhY3dwc2NISjJNMk42UWtkSGNGaElhMjFpWmpKamFXTk9WWGw2U2t4MGRWQXdlVlZtUkZSU01sWXdhak5sTDNOTlRtMHpVbkYwZUhWUmRrOXdhamxzZGtsc0NsRjViSFZMVFhvMFpubHVUR1F5Y1VwU1lrNHpibkJPWmxocVNVcEtkbEZRZFRZelUwaHhaVkZuWW5oQ1FsUlFVRWhHVjFabVdqWTBPRU12WWtwbFlYb0tRVmhaY21Sc1RrRnZTR05ZWmxOWVJrcExTR05HUzJ4WWIyNXZWRGRZVEdJMk16bHNSREJEZFhBNVdXcG1jVFJHUlRSMWNGZE5iMUJRZVVJME1rNXBhd3BvU0Vjd2JETm1NbU50UVM5WVdVTnhNVlEwTkU1dE0yRkNaekZuWkhWak9WWm1WR014UkVkb01sUk1lVnBPTm01MVNUWTJkR3BHVkZCRmJYZHdURFJOQ201d1dHczFSMlo1U1RSQ05HdHhURVV3UlU5dlZETjJSeXM0TVhKclZ6WldiazQxU2l0WlRWVXJRV3hIUzAwMmJVWlFlamhJYTFoeE9XeHNXWFo1ZDBNS0wwRXZVVlk0Y2tvNFJqazNNbG9yUW1FdlNETTFVbmR6ZVRWS1pHbFdiV3BEVW5FeFdXb3paR0o1TjFGWk5FcGhjazlEUkZZNGJqWkpVVFJWYTNOT1F3b3lkR2N3WkVwbGVUTXZUa0V6U2xaVkNpMHRMUzB0UlU1RUlFTkZVbFJKUmtsRFFWUkZMUzB0TFMwSwogICAgc2VydmVyOiBodHRwczovL2Frcy1kZW1vLTV5NjBjd3lvLmhjcC5hdXN0cmFsaWFlYXN0LmF6bWs4cy5pbzo0NDMKICBuYW1lOiBha3MtZGVtbwpjb250ZXh0czoKLSBjb250ZXh0OgogICAgY2x1c3RlcjogYWtzLWRlbW8KICAgIHVzZXI6IGNsdXN0ZXJBZG1pbl9ha3MtZGVtby1yZ19ha3MtZGVtbwogIG5hbWU6IGFrcy1kZW1vLWFkbWluCi0gY29udGV4dDoKICAgIGNsdXN0ZXI6IGFrcy1kZW1vCiAgICB1c2VyOiBjbHVzdGVyVXNlcl9ha3MtZGVtby1yZ19ha3MtZGVtbwogIG5hbWU6IGFrcy1kZW1vCmN1cnJlbnQtY29udGV4dDogYWtzLWRlbW8Ka2luZDogQ29uZmlnCnByZWZlcmVuY2VzOiB7fQp1c2VyczoKLSBuYW1lOiBjbHVzdGVyQWRtaW5fYWtzLWRlbW8tcmdfYWtzLWRlbW8KICB1c2VyOgogICAgY2xpZW50LWNlcnRpZmljYXRlLWRhdGE6IExTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVVpJYWtORFFYZGhaMEYzU1VKQlowbFNRVXBWZGs0NVNYWXpTbGhLTXpsa09XUTNlU3MxY0VWM1JGRlpTa3R2V2tsb2RtTk9RVkZGVEVKUlFYY0tSRlJGVEUxQmEwZEJNVlZGUVhoTlExa3lSWGRJYUdOT1RXcFJkMDVFUlRWTmFrbDVUWHBSTTFkb1kwNU5hbGwzVGtSRk5VMXFTWHBOZWxFelYycEJkd3BOVW1OM1JsRlpSRlpSVVV0RmR6VjZaVmhPTUZwWE1EWmlWMFo2WkVkV2VXTjZSVlpOUWsxSFFURlZSVUY0VFUxaVYwWjZaRWRXZVZreWVIQmFWelV3Q2sxSlNVTkpha0ZPUW1kcmNXaHJhVWM1ZHpCQ1FWRkZSa0ZCVDBOQlp6aEJUVWxKUTBOblMwTkJaMFZCYzJKa2MxbzJWVk5SY2t0emNHNXFZMG81WnpVS2RtOTNWM1p6YWxwNlIzRkRTRFlyZFRoSFVGa3dPR0pEYUZoSVoyRmxhMUEwUmtWa1lsSTJhRzVxYzJOcE0yUnBXa0ZDWTBKVWJqZEVkMVJLVUdKT2VRcDZNM1ZwT1RGV1pGaFJkMFZxU0ZjcldrVlFXbmQwU2t3NVJYUjNhMHQ0ZFRKUVNITnNLemhoYTFwNmJuUnBWRTFCS3pkcFR6RjNiRkZtVVVrek5EQkVDbEp0VUd4dVFsaDFSa2RIT1dkVWMwRTBNMk5KWWpsRFNrVjRiWE15T1U1cFRITllNVUY0TnpndmEyTTRTbkZMZUd4R1l5c3lXbXh2TVhJeFJVWXllR01LVnpKbk9HVldhazk2VFV4elMyczBUV1p4Y0ZsRmJHTk5UQ3Q1SzFJMVozbE9iaXREVTNGRVNrbFdSMEpOU1ZWaldIaENVQzgwWWtkc1NrVnFVMUZsZWdwR2R6UlBZa3RSUjJKcU1tTllWVUV6T0RkUlIyeENiRWRJTlRGRFFsUmliMUoxZWpJcmRqQmFZa2h3T1RGemVDdE9MMmR0Y0VvMFlVVm9PRXAxUkZWcUNpdG9PVzQzTkRWalptMHZhbnBMYWsxVmNta3ZXa0pYTms0eFJGWnFNQ3RHV0hSTlprcFlha3hIYUhZcmJXMXFOR2xDVFZsSWJXNVpZVVIzUXpSRGRUQUtSbWwzVldJclVGcHdUVVZpZVdoREwxWjJZM3BwZERCWlYwZGthRVZFUzBkNldIQlBialpYTDBKUVZuWlRibGd2YjNkbk5EZzFha2MxUzFwdmREa3hWd3BYYzBJclJqSkJaMDAwVTBaUWQwRlZkM3BaVEhGS01HVXpXbFZaVW5oWVVESTRkVTVIZDNOTVduaHBhRFZzUkVscmEydDFSVVJuVGt4NVRVbHpVbVJOQ21KUVlUSldSa1YwU0hoRFZVNHZjRXgxYjA1RE9WaHVUR3B6UXprdmJYRk5SME5uU2tGTk1FMTZhMHRzZHpaQlZHdG1SRzk1VlZCRlduQmtNakpzYzJRS2VHSjVkSEYxUVc5dGRURTFWamx2UW1Sc2FGSndOWEU1VUVGTFRIVk9OVkZRUlZwdVpYRnlRM2hyTXpKalkxcGhSMFV2WjFSNmFFTkJNbE40YkdodU1ncFJkM28zU21aSWFsa3hWVTl1V1ZJNE5sQklWalp2VlVOQmQwVkJRV0ZPVjAxR1VYZEVaMWxFVmxJd1VFRlJTQzlDUVZGRVFXZFhaMDFDVFVkQk1WVmtDa3BSVVUxTlFXOUhRME56UjBGUlZVWkNkMDFEVFVGM1IwRXhWV1JGZDBWQ0wzZFJRMDFCUVhkSWQxbEVWbEl3YWtKQ1ozZEdiMEZWT0d0VlZsSm9PVkVLZWlzeWRYWndla1J5ZWsxNlRFeEtkbTR3UVhkRVVWbEtTMjlhU1doMlkwNUJVVVZNUWxGQlJHZG5TVUpCUTBvdmFqTTFjelpxSzFWcWRUVmlOSEZvVEFveGVEQkZlV3RCVW5wa1FsSlVhVEJPZDJkbk4zazNaRGRTY0M5U1kwMHZUSE5qYUVOMU5FY3haM05zY2s5clFYRlZUbXRxUWlzcmFGRnBhV1ZEYkdWYUNsQkJTMHQ1Y0dZd0x6SmFNVGgzT1N0ME9EWjRlRFFyZDNJemRVMHhXa1o1T1RkR2NUaGhTVzV6U2tadVkwTnRaMnRvYjJrMlJFSTVVVUZrVEhOUGJGZ0tlbVpPY0dKRGJ6TlZUakpGWlV3MFNtRkplV2x4TkM5Q1ZsVkxjVGhsU21WUFlVZFRORWxYVGs1c05VSnBObHBRSzFFMVRXRTFNV1I1UTA1dlRXZFBjZ3A0UmpFNWQzcElRVlZvZEZkS2FWVlJWM0JGV2tsalkxaHBZMnRFYVd0dk5ubDBTRGxZTDBSUk9HbGhiVzFRUms1MU1WaEtNRmxoUTNsblVEQlNNQ3N6Q25ZMFEyRmFURzQxWVVGWFp6TlZUVmQwU1ZSTmQwZEllRlZUYmk5VmNtdGtZV0pETjNCSVMxUkhjVzlTYVRsRldESTFhWEp5TkV0aVFscHFXSFpyYVZjS05WVkZWRzR6VTIxNVMwTjNLek0zY2pOSGFXeHJaV2xqTjJGeFFrTTJaMGNyUzJZdlpITjNWbHAzYjNGd1FVRmlkMXB6TVhaTEwxaHZUR0V4YlVkYVNBbzRkazF5TTI1cFUxQTFaVVpVWTJ4bWNUSnJZbTVLTmpsdE1UUjJaekZvZG5oTEsyODBSUzl1UjNjM2QzcG5TMGRCVTJWT05GWmpTVlZZVEVoYU5tcDZDa0pSWlhsRlpYb3Jibmt5Wm5WcVRqbGFTVmgzUTNWVU0yaGxaVVZNUTNka2FHeFFNbnBsTXpONk5VdHBjRlF3WW1sWWNXaDNSR2RRU1RBMGFYZE9XRmdLV0U1MEwweHRUVlZTTTNSbFIyZFJVbTVhZDBaeE0wOVBUMGxxUmxaS2JrSlhhVllyTVdrdk1EZHpZVmgwZGtaVFFrUnhhVlY2ZG1aWlVHWkhMMFZPZWdwNFVIZGFWa2RMSzJoMVRtVkljakZDY2tFNFlURmFaekZPTWpCNGNFdHFXbk5DYkd0clNWZEVVaXRZUjNnd1JWSlRXbkJDTWpZeFVGcFZRblZXUW1vNUNraEdVR2xpY3pCVE9VSlRVVkZFWW5kb2FtaFZSWFZMZGdvdExTMHRMVVZPUkNCRFJWSlVTVVpKUTBGVVJTMHRMUzB0Q2c9PQogICAgY2xpZW50LWtleS1kYXRhOiBMUzB0TFMxQ1JVZEpUaUJTVTBFZ1VGSkpWa0ZVUlNCTFJWa3RMUzB0TFFwTlNVbEtTMUZKUWtGQlMwTkJaMFZCYzJKa2MxbzJWVk5SY2t0emNHNXFZMG81WnpWMmIzZFhkbk5xV25wSGNVTklOaXQxT0VkUVdUQTRZa05vV0VobkNtRmxhMUEwUmtWa1lsSTJhRzVxYzJOcE0yUnBXa0ZDWTBKVWJqZEVkMVJLVUdKT2VYb3pkV2s1TVZaa1dGRjNSV3BJVnl0YVJWQmFkM1JLVERsRmRIY0thMHQ0ZFRKUVNITnNLemhoYTFwNmJuUnBWRTFCS3pkcFR6RjNiRkZtVVVrek5EQkVVbTFRYkc1Q1dIVkdSMGM1WjFSelFUUXpZMGxpT1VOS1JYaHRjd295T1U1cFRITllNVUY0TnpndmEyTTRTbkZMZUd4R1l5c3lXbXh2TVhJeFJVWXllR05YTW1jNFpWWnFUM3BOVEhOTGF6Uk5abkZ3V1VWc1kwMU1LM2tyQ2xJMVozbE9iaXREVTNGRVNrbFdSMEpOU1ZWaldIaENVQzgwWWtkc1NrVnFVMUZsZWtaM05FOWlTMUZIWW1veVkxaFZRVE00TjFGSGJFSnNSMGcxTVVNS1FsUmliMUoxZWpJcmRqQmFZa2h3T1RGemVDdE9MMmR0Y0VvMFlVVm9PRXAxUkZWcUsyZzViamMwTldObWJTOXFla3RxVFZWeWFTOWFRbGMyVGpGRVZncHFNQ3RHV0hSTlprcFlha3hIYUhZcmJXMXFOR2xDVFZsSWJXNVpZVVIzUXpSRGRUQkdhWGRWWWl0UVduQk5SV0o1YUVNdlZuWmplbWwwTUZsWFIyUm9Da1ZFUzBkNldIQlBialpYTDBKUVZuWlRibGd2YjNkbk5EZzFha2MxUzFwdmREa3hWMWR6UWl0R01rRm5UVFJUUmxCM1FWVjNlbGxNY1Vvd1pUTmFWVmtLVW5oWVVESTRkVTVIZDNOTVduaHBhRFZzUkVscmEydDFSVVJuVGt4NVRVbHpVbVJOWWxCaE1sWkdSWFJJZUVOVlRpOXdUSFZ2VGtNNVdHNU1hbk5ET1FvdmJYRk5SME5uU2tGTk1FMTZhMHRzZHpaQlZHdG1SRzk1VlZCRlduQmtNakpzYzJSNFlubDBjWFZCYjIxMU1UVldPVzlDWkd4b1VuQTFjVGxRUVV0TUNuVk9OVkZRUlZwdVpYRnlRM2hyTXpKalkxcGhSMFV2WjFSNmFFTkJNbE40YkdodU1sRjNlamRLWmtocVdURlZUMjVaVWpnMlVFaFdObTlWUTBGM1JVRUtRVkZMUTBGblJVRnZRams1V0VSR1pVdzFlR1prVTNOSFlXaDNibWQ1YTJwM1ZXbHJMMDF4YldKaWFGVmlhVWcwYkcwdlMybHZVR1JUU0VGSGNuWXhSd292ZVN0UVVGVjBWRmc1U0RCWk9XWjZSVmcxTlZZNFNHWk9SMjVCVFROUVdteFFTbXRUWkdKMlRHdE9WV2hZUTJjdmVXMU9Oa0pKYXpOVFYxRlNiMXBNQ25ZeVZtWlZaak5IZUU1WFNYZExOVE5TYW1GNlJubGhlVGRCUmxwQ2R6UjRUSEEyVUhkbGRVTXpURW95UkZnd1RuRXZiQzh5UTJKV1IyTm1kU3RsWmtFS05UaDJLemxZYW01dFNWRlZZbTE2YUc5NGRsaFhNSGg1TUc5Mkt6bDRhMGhESzNKYVoyRk1URTlTTjFSdlZHdEpWelZZTURGRFYwTkhSek52UzBSU2FBcENOalo0UzJkVlR6SjBTRVZwTVRkbFVsbFRRVE5vUjJKamEzbDFjakJKY0N0MlkySkhRemhKSzFCb1NYTmFjblZLYm1oVVRqRTNkM2RzVVVSdGQzZGtDbE5ITTA1bU0wVnhaWFZSVEdkYVFtb3JVVk1yZUhJNFUyVmtabVpxYUdoTVZETlVRemsxZG1WWlZqTlJhSFkwVXpKWVUweFFha1pRZFRGUVkwSkVjVVlLTlN0SWNHaHlSREphWnpSQ1JtUndhamxSUjFGa2R6ZG9VbFZaSzFBelRtZHRTWFIwV0VvMmNEZExObGw1YzFWWFMyaEhRVzVIVlRaSU5YUlpZaXN6TmdwcVprZzJhRE5SUjFCR1lXNVFRMGxUU0hKbWFWb3hjQzlTUmxOQmRFZEVaMnAwVVhveGVHVmFjQ3QwV0hWd1ExQk9jMWRKZEdweGEwMWhRM05CZDFkNENrZzJWMnhGYzNrd05FWm9aell4T1VWemF6ZFVhMUoyTkc1TFFVMVlkelY1ZFVGM1VFMXNiWGROU0RKb05FMU9SRWRWV1hJNVRURndjWEpzY0RoUVpHUUtjVTloYmtwNk5EZEdTRzl1UnpOTmMwaE9RazU0VFhWRFJ6SllhVkp6WTIwMlREWnVTbFptTm1zM2FrZEJkVzR5WjJaNldFVm5kRnBLZFdVMGQyeGpaUW95Tmk4dmVqWmpOeTlpU3pSUVV6bElLekpvYVdsbFNtUk5ZVTVwYlVGV1ExaDRMMUJ1U2xCclJXVXhVR0ZtT0d4UFlUQkRaMmRGUWtGT2NYZGFVMnB2Q2psdmNEQlhRelpoVG5oNFZXOUxNVVptWkRKUWEydHlNa2hXWWxZclVUVlVaRkJQYWpacVNFeDVTWHBFU1dSMFlYRndXbmhUVFhORFRHWjZTRFJhUVVrS1JFOUhXR2xpVVRSd1psQm9lVUZpV0dZcmNFdDJVbWNyUkUxS01rUTNXRzB5U1RKU1MxQTJMMlpsVjIxQ09XbERUM2xMTmtaSUwwSlRUelUwVUd0alNBb3lVVGcyVWl0d1Jrb3paaTkwYUdGdlRrOXVRbmR4Ym5jNE5uRTNlVFYwYWpWblYxSTFjRmxWV0dOa2ExaG5RbkZpVGl0UGVrWktLM2R0V1VoNGRHTlNDa1pGVEUxaFpFZGhUVVJ0TVVaUlRFWmFaeTl4UWpORlUzSXJXbk5DVFhsVE9XSkRlRmhtUWpOWFUzVkxkblpEWXpadlpYUm9WbGxqYW1sUFEzWldiMlVLUTNsM1FVRndiV05ZVWtOSlEyVlJUR3BGUW1aQ1NHczBUblYwZVROWlVFeG5RMnRNUlhSVlRsTkNTSHBRUWpsb1NVTkdlVVF5Tm5SSU1UQmFRbEZLYmdwSGNWcFVVQzlwVjNJM05uRmxSemhEWjJkRlFrRk9RVXBtUW10UVdGWlFjMDFwYURkdU5pdFRVMjlHY0ZwemN6TnBhMDFVUW0xcVJGWlpja2xGY0VwdUNqZHpMek5WU3poMFMzazFkazVNV2xNd09ITmhlV3BWVFV4UldXdFlNMHQyTDI1SGNUaFVlbXB2ZVc5QlZUZEtVbk5oTlhOcVNVbzFja2tyYkVGdU5VSUtlVVZJVkRGMVlscFFUVlpLZG1kRU4wVkRTREJETlhkUWFFZG9TbGx3TDBkMlp5OWFPR0k0VjJwNFkwdDRhRFF4T0M5eWFVMUxSazAxWTJWUldqQkpZUXBWVTBrMVIxVkpabGN3UzJsdE16RnlaRVZsZVdkQ1VrZFZZbXQyUjBONU1YYzVaSFE1UlZsWldGTjJTbUprVW5WMFVITm5iMjFKTDFSTmF6UndXV2hJQ2pob1ZEbHRZbk5JWnpoMlRrVjJiV2xGVTFBMFRIZGxZelU0TWtSNlR5dHRhRWxZYkdoMlRFbExabVJUVW1sSk9URkJNWEZ2U1ZSdVdWQm5WRzB6VDB3S1EyWnRSVVZIUTFkT1FuZExRMHRCWTIxSmNWZFdWak52WjBGQkwxTmhhMEZvYWs4MWFtWTFRMlpyYzBOblowVkJSVGh4UVRkVGJtZElabTFZWmxkbmVBcGpjSFp4UTNGU1QxWnlNMGRvU1dkMlkxbDBaSGhqUldoNFYySm9TeXMyUVZWT1ZHSXZTV3RDUWxOd2RGcDNibXRrV1hJeFV6azJaVzg0TDJWQk0xSlpDaXRJUWtoa1R6aE9kMWgwVVVRMlExWTRVV1JWVG5GalZXeEJUU3RFV1daM09HUmhUSGRVYkZBNWNqSlhWekZXTTNKNlZYTnNZWE5PU25OaGEyVllkMWNLY2xaS2VpOVRjblF4ZGxoV1JYbEpaVTk1V2xKeU9XUnFiWEk1ZDJWallWRkZhSEIzVFRKT2RWSlFSV05hY0RkWlNYWnRlazFuVmpKeGRrUnhOWEpCYndwcGVVSnlURlozUmprMGVUZGlZVEFyVWtGRmEydG5jaXQwZVZodFJsaDNTR3QwZHpCdFdIWndPR0YwZG1STVMxTXpiak5ZWlhjNVlTOVliRzEzZEZsWENubG5ZekYwWmtOb2JXSlhMM0IxVkVObE5UVnBhelp1V1VOR04ySk1ia3hOVVdWMVkxWnJObTgxVERNMGVscENXRlpWY1U1WVNVWlBUbEl3TVc1a05uUUtUM1pyWTJWM1MwTkJVVVZCY0N0dVVEWlhXVEpZVVU0Mk5VdFJURzF4YlVsVE0xaHZhVEJRZWpZdmJWTktZMHh5TmpReFlrOURTamxhWjNodVlXc3dXZ295YlhaV04zZGthR1pWUkU1VWR6TmFNVmRvVFZKblVqVmhaMDluYmxKWVlsZzBOVTR2T1V4cGFVUmxSRWhrYWxwcFJVOVhhRXBRVWpoQ1puUkVMM3AwQ21sUmRtaFBWMlJ5WlZGNFEzaHdOMkp5TVZRd1RIRlJObE5uT0U5cFlqZExiR0l5VkdSV1ZEQTNWak5sUWtsT1RuWTRjakZJVTNscGNXVXpUMVJyYlVNS00yOUVhVFJrVGpKVmJIaHVPVzVXWm1oM2JsWkRSbXhhYW1sMGIyazFPR3R5U3k5NldIaENVVTFhV1VGdGVUUmxZWGhsTW5aQk0yUXZhMVpITjA5bEt3bzBRMDVTUjI0MVQwOVhjMkpuY0dsS2JrbzJlVXhuYVVsV1NUWlVXWEZvWlM5M2JrRkpLMnRzYmtGTGFFNHdVMDlTZHpKRldHcHJkVkIwTDNsWVFrNUJDbFZvVm1wTGRVTktNblZ3UjFWMmNsUlFaQzlZVFROeFFqRTBVVUZqVDFnMGFYZExRMEZSUVRCeU1XUktkazlVY2paRGJrNXpOMjUzWm5OdFZqZHRNbUVLYlVZdmQyZEpVbTV6V0hsUGQzUTVTR0pqY25oSmVEVXJSVlIzTnpkR04ybGxaeTh3UW0xS2RFa3hkMG95SzBneVZVNXVMMFF2ZG5Kc1p6UkNNVUpUZEFwVmNHeDNZVXRzYVVzd2MxQjJPRWhaUlhaeldXUTVhVUpNYjNaT2NFeHhNM1pSTmt4alowVmpWbWxaYmtOV1p6UjFiVlYyTkRORU9IQldVblpXVmtnMUNrd3ZVakJYVW14bVNFZGthMWRUWmxOM1FVTlFaSGcxYW1wVVUxRm1WVzEzTTNadVlXeHhkSFo1TUdoSUwyOWxkVmx4SzFWRlMzWlJTRzByVmxCRkx6UUtOMkpzTTI1ekt6ZE9SaXM1V1dad2REWXpVblk0VkV0cmJGZEhLMWhCV1ZoRFMwSkhPVzU1ZFc5TFVpOHpXRTlXU1ZRMFVtaG1PVkYyWmxCcFRIQlhNd3BGVkUxSFRXaHhaWE5tTms5aVJWZHdaVlV3Y1dRNWMxZ3pSMWhzVTNaclNsSm9aVEExUTB0UGIzZ3hlVGN6UnpSM1RYWkxZMDQyU1RSdWNGSUtMUzB0TFMxRlRrUWdVbE5CSUZCU1NWWkJWRVVnUzBWWkxTMHRMUzBLCiAgICB0b2tlbjogczZpb3V6ajlvdW9nYjIydDkwbHE5bmdwejB4Znlzc2kxODA0OWJ6c2U4Z2hyOTVveWQxc2Z5bWR0MmltbTF3ZHB3NjZ1dG9nZ2pqMGx6b2xkb3VwaDViNWRmNHh3dmhhZ29zeWIyZXloMTdkemMyZHRxMHhjaHY0anZzemU0MzIKLSBuYW1lOiBjbHVzdGVyVXNlcl9ha3MtZGVtby1yZ19ha3MtZGVtbwogIHVzZXI6CiAgICBleGVjOgogICAgICBhcGlWZXJzaW9uOiBjbGllbnQuYXV0aGVudGljYXRpb24uazhzLmlvL3YxYmV0YTEKICAgICAgYXJnczoKICAgICAgLSBnZXQtdG9rZW4KICAgICAgLSAtLWVudmlyb25tZW50CiAgICAgIC0gQXp1cmVQdWJsaWNDbG91ZAogICAgICAtIC0tc2VydmVyLWlkCiAgICAgIC0gNmRhZTQyZjgtNDM2OC00Njc4LTk0ZmYtMzk2MGUyOGUzNjMwCiAgICAgIC0gLS1jbGllbnQtaWQKICAgICAgLSA4MGZhZjkyMC0xOTA4LTRiNTItYjVlZi1hOGU3YmVkZmM2N2EKICAgICAgLSAtLXRlbmFudC1pZAogICAgICAtIGU5MGE5NWQyLWE1ODctNDUyMy05MjYwLTVjMzU0ODg1Y2FhMAogICAgICAtIC0tbG9naW4KICAgICAgLSBkZXZpY2Vjb2RlCiAgICAgIGNvbW1hbmQ6IGt1YmVsb2dpbgogICAgICBlbnY6IG51bGwKICAgICAgaW5zdGFsbEhpbnQ6ICcKCiAgICAgICAga3ViZWxvZ2luIGlzIG5vdCBpbnN0YWxsZWQgd2hpY2ggaXMgcmVxdWlyZWQgdG8gY29ubmVjdCB0byBBQUQgZW5hYmxlZCBjbHVzdGVyLgoKCiAgICAgICAgVG8gbGVhcm4gbW9yZSwgcGxlYXNlIGdvIHRvIGh0dHBzOi8vYWthLm1zL2Frcy9rdWJlbG9naW4KCiAgICAgICAgJwogICAgICBwcm92aWRlQ2x1c3RlckluZm86IGZhbHNlCg=='