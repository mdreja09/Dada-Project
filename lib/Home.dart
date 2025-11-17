import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List imgList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtPJkr1UQPUT9Qhh2Gi9hymMfLumlKZOjBew&s",
    "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhIVFhUVFhcYFhgXFhcZFxcYFhkXGBcaGBcYHSggGh0lGxcYITEhJSkrLi4wGCAzODMtNygtLisBCgoKDg0OGxAQGy0lICYtLy0uLS0tLS0tLS0tLS0tLS0tLS0vLS0tMC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAIgBcQMBEQACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAABQQGAgMHAQj/xABGEAACAQIEAwUFBAYHCAMBAAABAgMAEQQSITEFBkETIlFhgQcycZGhFCNCsVJicqLB0RUzNGOCsuEWJFRzksLw8UOTw1P/xAAbAQABBQEBAAAAAAAAAAAAAAAAAQIDBAUGB//EADwRAAEDAgMFBgUCBgIBBQAAAAEAAhEDBBIhMQVBUWFxEyKBkaGxMsHR4fAGFCNCUmJy8RU0gjNjorLC/9oADAMBAAIRAxEAPwC615UumRQhFCEUIRQhFCEUIRQhFCEUIRQhFCEUIRQhFCEUIRQhFCFsyjLe+oNreXlSSZhMk443Kvc4cV7CAhTZ5LqviB+Jvlp8SK1dl2vb1pOjcz8gtCxodrVk6DP6Ll0K5e6BYD3db3H+m3yrsSZzW1QHZ/wgIA0z1H20jhC2U1WUUIRQmuMCSsIjcXubNYgEWsLDS1KeCjokuBfJg5gERAgZfPPin+TEQYK90EWLYaf/ACERE6/s3PnuPHXPmjWuozxUx4d75qtNKtcxniZ5Z/P83JHV9XkUJUUIRQhFCEUIRQhFCF6qkkAC5OgA3NCQkASVIxPD5oxeSKRB4sjKPmRRKiZXpVDDHA9CCo1CmRQhbDA2UPlbKdA1jlJ8jtQo+0biwSJ4b/Ja6FIrn7Kv7W//ACG/zx1gfqL/AKrf8h7FY23P+uP8h7FdVrjFyqKEIoQqXzH7TMDg5zh5O1d1tmyKCq5gGGrEX0IOl627PYF1dUhVbAB0k+HD3UTqzWmFY+BcagxkInw750OngVI3DA6g1m3VpVtahp1RB/NE9rg4SExqsnJDV9aa04zFJEjSObKouT/51qSlSdVeGMEkp7GOe4NbqUqwvHWYxFoskczZYyWu50uCVtYA/HrV+pYtaHBrpc0Scsuk/ZWH2oAcA6S3Xh5p3WaqiKRCKEKLHxCJpTCGvIozEa6DTrt1GnnU7rao2mKpHdOUqQ0nhgqEZFSqgUahRcTRp3w4BzIoYnprbS/Q6irLrZzaLa24mFMaLhTFTcVNqsoUUIRQhFCEUIRQhFCEUIRQhZxOoN2Hd6+Q8aCCcm6prw4ju6rlfNOMeaXtSrCI3EJYEBkU2uL76728a7TZ1FtGl2cjEPijcSulsqbabMEjFv5EpKVBtcbG48jWhJVp1NriCRpmORWCZhYHvb3bb4adaXJRN7VmFru9rJ06Ze8eSFkJA7h1NjcroPHeiBxQKz3AHAdYzIyHHX2zXioTYudQSRluBbYX8TRPBI2k9xBqnMEkRIHKeKa8D4es8yxtIsam5ZmIACqLm1+thVS7rmjSL2tJO4Dii6rGjSLwJPBYcVnu5RZHeKMlYs51CX0sOnpTrdkNxOaA45ujinUGQ3E5oDjrHFQqnU6KEIoQihCKEIoQihCKEKz8j4YkzSKbOioqN1UytZmXwbs1cA9L0+nqTwWTtSoBgYdCSTzwiQDymJTdoZFOZWZS1r2ZhbNc6kdAouTuTuaklVJpkQ4Axy4fU5DcFDxcq2LzxRyKBdiyhXsRpeRLHNYX3sB1NJhBUgZgHceW+OXPIyIHHfwTnl3hGBU/aHwuIUZQyiTK6L5qvvH/ABL8KaQxpWZc391UHZtcI4jIn85JhjOZcHIG7HFIxGhRwyMt/EOLD4/SpiFStmlzsJbpwVG4vw4SEvCl+v3dmU621yE2+PnfXXKw0huW9RvzRIbUMjnqPt+dWXsrFsZIP7hv88dcz+ov+s3/ACHsVLtog27SP6h7FdUrjFyyKELXiFJRgpsSpAPgSNPrTmEBwJ0lBXz6Dg3xjxTwTNMZACZAAIxEoFigbvABdd8w2tXokXDLYPpPaGxu3yeMZa5cN8qlkXZro/siiiEMzQxsqGQKXPuyuoOdkAOXLc2BUAWsOlc1+oHPNRgqOkxpvAOgO+es8d6noxBhX+ueUyQ1fWmkfNWDbERZIu8UdWdAbZhY9342INaezaraFXFUyBBAPDmrlnUFKpifkCMiovFJUCHGq5JiXJFGVt2chIU3G9/I1Nbtdi/akfEZcZ1GuXJSUWuxdgRqZJ4hZYbj0vaQiQIqvGXkFtUULfOTfS52Hh8aSpY08DyySQYHMzp4byh9qzC7DJIMDnyWjh/MzSzXBURXa4tqiKD32boSbACpK+zG06UH4svEncB03p1WyDKf93ueACm8O4zJLnn7iYZCR3gczADVr301tpaoK9nTpYaWZqHhoOSiq27WRTzLz5dFBj45kgbEdmglmdliAWzOAbKW6m38vGrDrLHXFHEcLQC7PIHfHVTG1xVRSk4WjPgOik8P4xL2pjmaMrFFnmYC2Vjay77jbzqGtZ0jSD6QMudDQd44qOrbswBzJkmAF5yq4YyTt7+Idio69nHpc+AubfKl2k0tDaLdGAT1P57pbwYQKY0aM+pVkrHWeihCKEIoQihCKEIoQihCKEKs888V7OLsVPel38k6/Pb51s7Hte0qdo7Rvv8AbXyWjs6hjqYzoPdU6Pi7mEYWRrw5wwJXM8fj2dzpoTp+VzXQOtWCqa7B3ojWAev1Wo62aKhrM+KOgPVb8bwMGVY8HJ9pDqXGUWZQNw4Ox/08aipXhFMvuG4IMZ6HomU7shhdXbggxnoeiUzwMjFXUqw3VgQR8Qdquse14xNMjiFba9rhiaZCzw2Ekk0jR3I3yqWt8h5Uj6rKebyB1MJH1WM+MgdTCnYbgbNh3xDSxIq3Cqzd92H4VUa3+P5VWfeBtYUQ0kneBkBxlV33YFUUg0k8QMh4o4txRJI4oooUiWMakau7kAMxbe2g0/0stvbPpvfUe8uJ8gNwj5paFu5j3Pe4knyA3CEqq2raKEIoQihCKEIoQi1CRFqEIoSq5+zZrtOnisbf9LFf/wBKfT1KwttDJjv8h5j7K0YjCkj/AA/9jCnLPa/3+YUSHlqLG5HMjdnHMGyC2WUJkNmJF8ulvSpmjCFl3l25x7PcPXOVdMSe0QADKSNb6gdNNrjSoQwOVVtUsK4R7SsGsGIGWQCYLmYopAAJ0Um51I1sfLxq1REDDuU5quIFRpgjelvA+LJNZZAA/iNNeh8tflelqMwnJbljei5bDh3h69FeuD8TmgkDg59CDnF2y31XNqRqh01F1O9heheWlG6ZgqifcJ9WzY9uEd3pp5ab/VdJ4bjVmjEi7HcdQRuD/wCfnXn209nusquCZB0P5vCxKlN1NxY7VSqzUxFCEs4ly9hMQwefDQyONMzopNhsLkajyq1Rvrii3DTqOA4AlNLGnUJhFEqqFVQqgWAAAAA6ADaq7nFxlxkpyzpqEhq+tNK8Xwcs7PHPJEXsXC2IJAtex2NgNvCr1K8a1ga9gdGkqyy4AaGuaDGiScTwAzw4KNixLNNIz94ki9i/iDY/StG3r9x908RkGtAy8lbo1e66u4f2gDLyTDAcud6STEP2jyAg20UC1tPh08NPCqtfaPdayiMIb5qCpeZBtMQApeH4IqoI2YsgXKosFtoRmNvebXc7eFQVL1zn4wIJMnf/AKHJRvuXF2ICD+eQWmPlxBB2BkYrY5dALXN72HvHzNSO2i41u2DRO/XP6BON47tO0AErx+WoyIu+2aK2VrDYWsMu2lrjzuaUbSeC/IQ7UfdAvHguyyO5Yx8rxgSrnciU3O1wdbEndrXNr+PjSu2o8lhgS388E43zyWmBkmPDOHLCoUEsQoW5tsuwAGw1J9TVS4uDWdJy3+ar1apqOkqZVZRIoQihCKEIoQihCKEIoQsJpQilmNlUEk+AGppzGF7g1upShpcQAuS8Z4g2IlaU9T3R4KNh8q7m1txQpCmPwrqLeiKVMNChVYU6zgnZGDIxVhsykgj4EaimvY14wuEjgU1zGuEOEhMeHcw4mGRpUlOdwAzPZywFrXLX8KrVrC3rMFNze6NAMvZVq1lRqsDHNyGgGXsvIuP4lDKyTMpmN5Cthc66iw7u52tSusbd4aHNBw5CfzPxSus6Lg0ObOHRLCatKzCKEqKEIoQihCKEIoSJTj+L5W7OJczXtfcX8ABuanZRyxO0XObR26KLjToAEjU7geHNQXjxZTtGkyAx9ouaRELqGK9xbgsbjQAXtrtSipSxYQJzjIEwYnM7uum5c4/aV4/N1Q+Bj2ha8Pj51Fw2YAXIJDWF9b9alNNh3K3Q2jfU2y1+IATnBgTnO/7ead8O4ksots36N/yPWqz6ZYun2dtWleCNHcPpx58Fc/Z5PlxgU/8AyRyL6qO0H1jA9aazVG12YraeBB+XzXQOIGwPgL/Gw3/db6VIufpCfzj9wlPsvxDLDPDKy/7vNkTp3WGa7N4E3ANulS1XHKN6zH05qHJWTA4r7145HjublQkmYjysQOlv9aryWKV9KWh0LkHtBw69pIwuxJN2O5O1TUHknNOqNAYudIzIQ/pWiQHBUqVV1GoHjcup8u8Q7aO4OoGvxtAf81Z7xBXX0KoqsDhy/wD18l0PlI27Rellb1DSJ+SqPSuZ/UjAbZruDvcH6LMv88Ljr9gfclWKuJWcihCKEIoQihCQ1fWmoPHsY0OGmlQAtHGzC+1wNL2qxaUm1a7KbtCQEjjAlczw3PONkcyR4WJ3AyllikYgHWxIbaupfsi1Y3A6oQNYJA+Sj7Z+HDu4K2cC5lxDYTEYjFRCMwglRkZM3duPeOt20rIurCi24p0qDpxa5g7+XJK15gykHA/aHiJMRCkyRCORgpKqwPeuoIJY/it9a0LrYdBlF7qZMgTqOvDgmioZVw5v5kXAxByuZ3NkW9rkakk+A0+YrF2fYG7qFswBqU97sKo6e0HHraV8OpiJ0PZuFPwe9q3jsSzPca84uo9kztHJ/wA4c3z4WPDOkSqZldmSQElSuSw7pH6RrP2dsyjcPqNc4nCRBG/Xj0TnPIAT6PirnAfarLn7DtLWOXNlzbXva/nWebZou+x3Yo5xKdPdlVvljnLEYiHFyOsYMEQdMoYAkhz3rtqO6K077ZVGhUpMaT3jB9OXNMa8mVK5D5rlxnbmcRqIghBUEe9nve5P6NQ7V2bTtcHZycU6+H1SseTqkvEvaNPJKY8FCGFzYlWd2A6hV2FXqOwqTGYrh0eIAHimmodyl8te0FnmEGLjCMxyhgCtm2AdTtr1qK92I1lM1aBkDOOXIpW1M4Kz5150xGDxPYxrGVyK3eDE3N77MPCm7N2TRuaHaPJmSMoQ55BhNeNc0leHrjYApLZNGuQCTZgbEaggj0qpbbODrw29Wcp09Epf3ZCm8mcYkxeFWaQKGLMO6CBZTYbk1BtK1ZbVzTZMQNU5jpEp5WenKn8/cVyqMOp1azP+z0HqdfSt/YtrLjWduyHXetXZlCT2h3aKi10i20UIRQhFCEUIRQhFCEUIRQhFCEUIS/jeLMcdgbMxsNtuv009alpNxOWNtu8Nvbw0952Xhv8Ap4pdFMMLEhRrYiTK+cCRJMMoY5cjAgEyLZr20Uj9LRXMNeoQ4dwZRkQ8xnP+Jyjj0XCaBWleTsJIFlRsTL2iM6J2kKSTESImdSykAHMTkPe086yjtS4YSxwa2CATDiG5EwY4REjJSdm05pfNypF2HbxNMxVGLRqVeRZLDIpVVumU581xf7onS9WG7Rqdr2bwBJEHMCN5zOc5RHEJA2O8FV0xBuJAQHU6m+r38vhofG9axaPh3K024dIrgw9pzM5unl6HiDnvV24LxIxyRYhN1ZXAubGxuVv4HUetUSC09F3ncu7bk4eU/RdSx2OR0WSM3RlDKd+7qASPK5Rh0qXXRc5Tplji2pqMj1++o4qo8icWzcSlw6sV+1JJkYC5SSK8kbC+miq+/UCpy3uAncsms8CpKuOJ4Z9mlE0880zJfs+0ZScxFidFFv2Rp5VVqVJyAUtOCyG+K5rz1jBkbXX+N6ktR3kVjDZXPsRiHcKGN8gyrpsN/wCNabWgaLMc4nVWzkLGZSQToDf0Fmb55EHrVWu3Nb+x3lzSwfk5fNdq5NibJI7C3uIPMoC7/vSEelch+pqgFFlPeTPkPul2i4Y2tHM+eQ9BPirFXGLOU/CxjKLgG9+lehbIsKRsWCqwGe9mAddPSFSe84yQo+MUBrAW0rm/1BQoULhrKLYyk+J+3qp6LiQZWisFTIoQkNX1ppRzf/YsT/yX/Kruzv8AtU/8gmv+Erk3KXHcXhhIMND2gcrm7jta17e6dNzXX7Qs7e4w9s6I0zA91A0kaKxc28wTScMjE6ZJZ5SGXKy9yI32bXfJWds+ypMvnGmZa0azOZ6eKc5xLc1XOONAMLguxlUyordoBe6sxDj5EkVpWoqmvW7RpwkiOe5NMQFeOZuEvxTBYeeG3aKuYKTbNmADrfocyj5GsKyuW7PuqlKp8JMT009CpCMQBCq+A5qx2AtBPHmRdAkq2IA/RbqPnWrV2daXs1aToJ3j5j/SYHFuSk+0riaYmHBTpfK4m0O4IMYIPwINRbFt3W9StTdqMPzSvMgFRF41xT7L2YibsOyy5ux07PLa+b4damNrYfuMeLvzMYt88EkuhbOQf7LxL/kD/LLTNrf+vb/5fMIZvUflBiMFxIjfsox6EuD9Cal2gAbq3n+o/JI3Qqwex2JbYh9M90HmFsT+f5VnfqJzpY3dn55J9LelPtZjVcYrLozRKWt4hmAPxsB8qubAc42xB0DjHkElTVec6qH4jAsmzx4cN/i0P50bMJZZPLdxdHgkd8SgPO8OGxfD5TrHIrp8VcK9vIqQ3zqwGNq16V0zeCD4jL1ySaAhdA9l39gT9uT/ADVzm3f+2eg9lLS+FWbHYpYo2kf3VFz5+AHmTpWZRpOqvDG6lT02Go4NbqVyPHYtpZGkf3mNz/AfADSu6o0m0mBjdAuppUxTYGjctFSKRFCEUIRQhFCEUIRQhFCEUIRQhFCEi5nPueHe/h03qzb71yf6mJ/hjdn8vFReZly4hgAwAWLIHkEhCdmhj74JBXLa1tALDpRZnFRBMTJmBGcmcuM6881y7tV0Dg64jEiBxHgVDfeGEpLp2klhOcvukyQ+6h26a1z9waNEvaXVCRlikbh8PPJ2pGu9TCTGiWycQbDRDFLisNIJGnZF7LEL28vaRyM57oClWCAZrCykdTVkURXeaJpuEBsmW90QQBvmRMxOZ5JswJlUXC7Pv7hvYA9RvfYXrfduUltMPOfwnQTvGvATvVl4IfuU9evmap1vjK7bYpJsmTz9ymzcUmSBolP3ZYE/qE6Fgfw3Gh6HTwFPt2ySqe3XNp9mRkXHCTujn46eKQYLjEuCxq4iIgyRE5Sw0IZSuovsUY9etXcAcyFytUw+DuXRuH8XxnE+1ZgqSRZTk192QXVhcdbEelZ1an2ZB4q9QeILY0Ve5g5cnKFmBYjYClo1WtclrNxNhUnE4KRTZly3Ot9LGtMVGkZFZjqbgYTfk0H7QIl1Z2AW4Ni17gm2uUWvbrYVDXcGsL3GANVo7PrNouJcvpHh2EEMSRA3CC1zuTuzHzJJPrXl+1r793cF7fhGQ6cfFJVqGq81Dv8AwDwUiqz7OoxjKjhDXafntxUcyoOO5hCPCikZhOsciDU5WuoJ8NLNXptIBoawaAR5Ku6nhaXHkmM73YmvONrV+2vKj+ceWXyUtIQwLCs5SIoQkNX1ppZzPA0mEnRFLM0TBQNySNAKt2L2suWOcYAITX6Ksey3hc+HWcTRPHmMeXMLXsGvb51q7duKVYs7NwMTp4JlIHOUv594TisXjUVIZDEgRM4Xu943dr+AuPlVjZNzQtrVxc4YjJjfloE14JcpfMvIEC4Z2wsbmYZSozs1+8MwsfK59KisttVXVwK7hhznKOiV1MAZJVgsDxZcEIYo3j7KQtb3ZGB1GUnQgNe48xVurV2ebk1HkHEI4gdeZSDFGSicRh4vjgkM0LkK17tGEF7WuzfAmpaL9nWhNSm4Z859EhxHVTebOU50w+DghjaUxiXtCguAzlD8r3t8KhsNpUnVqtSo4NnDE8BKVzSAArlFhJP6L7LI3afZcuS3ezZLWt43rEdUYb/HOWOZ5SpP5VUOTOB4mLD49ZIJFaSEBARYsbSaDx3HzrZ2ld0KlagWPBAdny0UbAc1L9m/AJUXFR4mF0WVEXvC2YfeBrfMVFtm9pvNJ1FwJaScvBLTac5SccC4lw2Zmwys6HQMq5wy9MydCKufvLG+pAVjB4HKDyKbhc05LfwflXGY3EjEY1WVbgtnADMF2VU6DpTLjaNta0OytjJ3Ru5zxShpcc1L504LiJeIxyxwu0Y7G7BdBla518qg2bd0adk5j3AHvZeCHg4lv9pnK8k0iYjDxs7MMsgUXOnut8tPQUzYm0GU2GlVdA1E+oS1G7wn3s8wUkOCVJUZGDucrCxsTpWdtiqyrclzDIgaJ9MQM0r5/wCK3YYdTovef4/hHoNfUeFaOxbWGms7fkOm9bmzKEA1T4KnVvLWRQlRQhFCEUIRQhFCEUIRQhFCEUIRQhLuO4bPESN016bdfpr6VLRdDoWLt217a2Lxq3Pw3+mfgl0WG+1RosSg4iMFezjjC9pEivIZCwPekWxUi1yMu5vTnP8A27yXnuHeTMOJAjkDrrAM6ZLhdQrHy9ztBh44bxymRESJipTJkjkklVl1vmJcCx00rMu9k1az3Q4YSSd8yQBB5ZKRtQAJPxDmvETYWLDdviGbNJ215GIlDlMgPeJe2XrV2ls6jSuHVQ1oGWGAMomek8kgLnw0ST7pLHGdI11ZyL76b90/Qn4VeJ3lTspExQZm5xHHL+07uZ4RyVtgiyKF8ABVJxkyvRLeiKNJtMbhC2Ck0Mp72Ne0tcJByIS/jECd0mwNj3vLW3xN7aeF6v0XuLfzxXDbQtqVGu4l0HPLU5Du578WXTOSrp7EZ2lnkU6hcMFPxWQZPpm+dRXTIGu9VG12lrGtbBAIJ45z8111+Fq261RwKTtoSPFcsQY7R417BDbMB3pWG+Vt1QHS41JHgNZWS3MKV9QU24XCXH0+/t1S3ifsxwqFJMEjQzRsHRldjdlN7MGJuPlpTqjzUa6m/NpEFVAGEZ5K2YziEMC3nkVDa5GYeo865qz/AE+xjsVY4uQ08U7vO0VGxfPJmxCxYGJpG72UmwuWCgkD8KhQdT41v12UqdLtK0Brc/p9gnd0CFYuW+AvDJLiZ3DTTG5C+7GOoBOrdNdNvU8ZtbawuwKdMQ0Z56k/JOmU3gxWeR0A7sdgW8XIzFR42UqSf1rbg2yH08LGuJzO7lx8TP5CaDmpNQpyKEJDV9aa8drAk7AE/KnNEmEsTkqRguY8fNcxQowBsbKdL7firoq2zrGjAqPInn9lsVLO1pwHuI/OiZtxLGrhpJZI0V0YWXKdU/Efe8/oaqC2s3XDabHEgjWd+7cqwo2zqzWNJIPv5LCPm0DCds2XtblQo2zDUG3hYg052ySbrs2/DrPL6ynGwPb4B8OsoXiPEDAkixIzOfdCnRLaE97cmkNvYis5hcQBvnU+W5J2NqKhaXGBz3+SXLzLjzIYRFH2g3XKb7X/AEvCrZ2bZCn2pccPGfsrBsrYMx4jHH8Cny8axkWHklnjRGDIsYsdSb5r97wFVm2VrVrtp0nEiCT8tyhFtbvqtZTJIzn8hL5OasaipI8KZH905SA3wOarTdl2j3FjHnENeXopxY27iWtcZH5wVkx/GcmE+0gWLKpUH9JrWB/86VkULPHddidxM9As+nbYq/ZHjn4JDwvmjEvPFHIiKJCPwsCVN7EXPlWncbMt2UXvYSSOe/yV2tY0W03OaTI5710PhfD+1zFmyqu5+tVdl7L/AHkucYaFztzc9lAAklSMNgcPOrHDzZiuh6i/S+la3/CWlZh7F5kfnBVv3lVh74ULl+BcRmLEhVGpB6/H0NZuy9mNuKju0+EDdxVi5uDTaMOpWzjkEUMKSxsWDsADcEEEE3FvhVvaOyaFGgKlInXjuUVvdPe/C9ROPSR4bAHFtctYZRfQszWUfKlo7FpvtG1CTiPlmfopqNV1W67IaLl/KHDft+NSOUsRIXaQg2OisxN7eNq3KVJohgyH0XUX1z+1tDUZqIAVy4hy5wKCRopcW6SLbMpfUXAI/B4EVYNKmNSsFm1to1Bia0EdPuueccEAxEi4Vi0IYBGJuSLC5vYdb1A4AHJdHY1qlSkDVHe3qHTVeRQhFCEUIRQhFCEUIRQhFCEUIRehIk3EuChyWj0JNyDtrckg9PhVinXjJy5vaOwRVcalDInUHTmeXTRRcZicU4ZZUzs+S7tGrydwAKBLYsNAAQDr1padKiwgsyAnIEgZ65aemS5qpY3TThdTd5T6haYcLO+gUqDlv3Qo02PTwvpUhcxu9W6NpfVzhazCDE5Bo5HQdclauSuXFfERQsdZGAZh0XdgvnYG3naq9SpiMblvULFuzLd9fV8eA5dJXSOYfZ4GMf2JGVTfO0j90DS2hGamFvBVbTbr2z+4z6DP6Kj8d4O+Fl7NyraXDLex+dNW/Z3jLluJuUbipHKvK6YtpJJSexgQswBFyzarYMCGHdIsfKrArkCAFze07Hs6jQXYsU66+O726LrXKfBo8Fh1BCI796Vu6LsdbEiwsBoBsAKic4uMlY5bnhZmveIcZSZ0wkD6ykh3GyxqCXynqxAygjbNegK021fRZ21UaaDid08lYIgqqFUAKoAAGwA0AFEqiZJkpXzRjjDhpJFNmCm3xppUlMZrm3I3LseP7TE4xnlKyZVQsQugVrtbU6tttpWLt3ala0LaVDKRJO/UjLyT9SukYHh8MIywxRxjwRFX8hXG1rmrWM1XF3Uk+6WF5xDElF7oBdiFjB2Lm9r+QALHyU0lGmHu72gzPT76DmUOMLLAQLGgjU3y+8Ta5Zu8zNb8TFix/apKzy92IjX20AHIaIaICkVElRQhIavrTS7mOfJhZmvbuEerd0fnVuwZjuWDn7ZqxatxVmjn7KmcvYPG9lmw8qIjE6ErckaX1B8K6G+rWfaYazSSPzita6qW+OKjSSFbuJYxYMLechyUynbvsRYgfWsKhRdWuYpCBM9AsqlTNWtFPLOegXPeERKs8JnU5GIOuxBJAPwzflXU3T3OovFI5j89lvV3F1N3ZnMLrAriFzCpXKn3uOnl6DPb/EwA+gNdFtL+FZU6fT0H1Wve9y2Yzp7Lf7RZ7RxJ+kxb/pFv+6othU/4j38BHn/pN2W2Xudy9/8ASSY0zu0GCmKIq5ApA/SFgSeuht8a0aPYsa+6pSSZnwVumKTWvr05JzU/nvEBexwy+6igt/lX1sD86rbHpl2OudSfuVBs1hOKqdT+FRo8fHNjsO0YIVQiAMAD3b+BqV1B9GyqB5zMnLmpDSdTtnh2uZXVMFipYI2k7LPEdW1AItoSAd6j2PUr29E1CyaZz1HRcjdtZUeGzDlrkwsEmFkxGFLwWDMQpKAlBcgqDbbqK1nU6VS3dVoEty3ZactFVDnNeGPzUjg3DWGAKRkK8ykgsbABxYaj9XX1pbG3c2zgfE7Pz09ElaoDW5BQ+a8MYsBh4zYlGiU22uEINvKm7RYWWbWndHsnW7sVYlIvbKxTBYXDqDrIL210jS2vqw+VX8HZ0msG4AeQV7ZADrhzz+SUq9i2CJxUshBHZxW18XYfwU0lAS4rV/UFUC2Ywbz7D7rfzPxng0hxLfZJHxJEgDlHymQAqpvmtluB6U95Znlmsy0pXTS2HQ3LyXM4RpVYrs6QELZSKdFCEUIRQhFCEUIRQhFCEUIRQhFCEUIRQhFCFYuRkK4lMQdFiJJ8zlYkeiB3PkvmKVozkrJ2u+aBot1d6CR7mAOZ5K3cD5oxUvECkjjsC7JkyjS4OU33uDlBJ8afI0XP3GzmUbcVGmTAOnP88kn9psBEoY+P5gfyFQjVauxagzbxHt/tYcoSMuGdLWEkgYnxCAWH/Vf5Uuas3lMOrh53CPP7JpKS2rEnzJJ/OhRtaG6CFly+2XGROdsko9WyEfRGpdAq20WF1GBxCsz8aJxMUIHvsQf8Ks38KYDKxHUw1srR7Qj/ALqR4mpB8QUVPeq77OJWjVr/ANU8gT9mTKMpv4NfL8QlveNc1+pGNe5gHxBpPUT8tek8Emjl0CuST0m+1Al8URmVLxwKN3JIViL6XeSyDpZQQbMavdnAFEGCc3ct/oMzzMahRzvWIw32a2IJBLf2pvEE3D3P4YybC+yE/oil7Tt5pDd8A+XV3q7qiIzTuqEKRFIhIavrTUPi/DhiIjEzFQSCSLX0N+tWLW4NvUFQCVNRqmk/GAq//sJD/wD1k/d/lWp/ztX+kequ/wDKVOAU7FcrxyCJWkfJEoULpYgbk6bmq9Paj6ZeWtEuMz+cFCy+ezEQBJ3rfxrl6LEhASUyXAy22001+FR2m0KluXEZzxTLe7fRJjOUziiIQIWJIW2Y7nS1/jVNzw5+KN+irky6YS7gXAkwufKzNntfNbpfw+NWry+fdYcQAjgp7m6dXiRELHjXAExLozuwyDQC1jrc7+lOtNoOtmlrQM0tvdOotIaNV5xnl6PEOshdkZBYFbdDcb+BpbTaL7dhYACDxS0Lt1FpbEgoXl9PtP2lnZm8DbLtlH0pDtB37fsGgAfeUhu3dj2QAAXuI4Aj4hcTnYMpWyi1u7QzaD2W5oQIM5780NunNpGlGSfw8amgXKqK69Abgi++oq7s7a77ZnZkSNyyLi0FR2Lel3FeNYnEIYsixofeC3uw8L9BVq420ajMIAAUdO0DTKx47ipcUqRMioiG9lvrpYb+Av8AOobna5rsDYiE+na4DKh818wPFho0aNLRNHk1N2KCwB8ramrdtfuuw2jhENgnoPqprbZxqVcj1Stva/iv+Fh+b/zrf7c8FaP6fA0cUvwHtKxEU08/2eItOUuCWsojXKAPLr60gqkElTv2LjpNZiPdn1UnGe1nFSRvH9niXOrLmBe65gRcX6i9Kax4KGnsENcCXHIqiRDSoF1FIEDNZ0ilRQhFCEUIRQhFCEUIRQhFCEUIRQhFCF1flHlrD/YY5ZoUaRsz3YX0a6qD4jLbQ+NY17d1GPLWGFxu0r6qbp7GOIaIEdNfVIuP8pRSEtAxibw3Q+nT0+VNttqPZlVEj1T6N9VaIJVbMmJwcOIWVD/VMqMLZPvcsbkEbsbpvrlDVuUa9GuO4fDenV6+MtcDnIOf9uY8ihuYDFi53awWICQWBvd3g189x8hVl1ETKrOvH9jgMbvSfqr/AO0rB54w46kW9bWqmdVNsupgeOX+lAhRUUKNlAA9KcVqZnNeTTACiE9rCSqvxTiTXBViMpuCNNRtUgatNtBopnENU15I43JPj4FkFz95c+No26U3AAua2jbNp08TVc/aM/3FvOkHxBY1P4SkvIQvA8UgvFNI6j9WRUUkE73ZbFT0MZ1uRXL/AKgkXDXt+JrQeoJPscjxnkU06wVYftruPspYie5WRlFrRgAmUeGZWUDwZyNchrF7JrD20dzUdf6fA68QOYSSdN6I8ZA01u0iWPDdxVzqPvbWbS+gRTkHmzjoKHU6rac4SS/MmDpu8zn0A4oBE9EwbiOHIsZoiDuM6WN/WqooVho0+RTsQUXgeLTvYcSK5iAykMGJiNxGSQTcixQm9zlufeqa6pOyqkRi1y/m3+eo6xuSNO5NapJ6RVfWml/HcU0cJZWVWJUAtYDU66nQG17X0q3ZUm1KsOBIz0/J8s1PbsD3wRKQf03KRCFkbUqXOQah5QiqxAIHdDai19LVqfsqQxktG+BPBskjfrGW7erv7ZgxSOmfATl6ZLbiOPN2IKyjO07A2Md1jBcgd7Qd1Rv40xli3tiCzINB35nLhnqdyRlqO0gtyDeeZy4ZrYnE5PtEcQmuDkBFkJN1LNnAsdrWZdKY62p9g6pgg58eMCPmDmmmizsnPw8ePGBH0Oa2Y/GTESlJSuWeOJAFU3zZA248WPyptGjSGAObMtLjmd0xv5JtKmwYQ5sy0k681q/pJ0xDxvOxWJQT/VDNZS7XFs3gO7T/ANsx9Br2sEuP92WcDl5p3YtdSDg3M9eMfkqLDxnFZQAWaTthdcgByCLtHQC3oDvUzrO2xSYDcOs78UAqV1tRngI1nfMAp7y/iZZEd5d+1cKNO6q2FvOxvWbfUqdNzW0/6RPMneqVyxjHBrOATSqKrIoQihCLUqEWpELmXOPFe3nIU9yO6r5n8R+f0Arsdl2vYUZOrsz8guisLfsqcnUpFWkrsIoRCKEQihKihCKEIoQihCKEIoQihCKEIoQihCKELbg8OZHSNfedgo+LGw/OkcYEqOrUFNhedAJ8l3ziEQiw4jXRVCIPgtgPoK5eqcUk7152HF9QuOpM+aq771CrgWjFIGUqwBBBBBFwfiDvQxzmuxNMFOVE5n5e7Rp5IO6ZERchOlkMZ0PT+r2NdJa7WGTagy4qvVbAhdLhQ4rh0WcWYxLmHg4UA/UVOXBxlpkKe2fgfIVPxePyNkPvDepWiRK6u3pCqzGFDx2MOXanAK1SpAFVvFyk7D6VIEtw92gCsXsvgP2+NiraJIbnQe7b+NI7ILB2o0i3kg6+CuvtEm7oFQt+JYLBDFC9n6rNBiICSLOrgjdWI7rDzDRg+lc3+owadalWA1BB5gbvEOUbhJVk/pAhO0yIJFcRYg/oZbkE21KXcML7LLm01rA7EF2CTEYm85+eUHm2E3Ep9pv7v96q38Pn6J+a8tN/d/vUn8Pn6IzXv3393+9RNPn6IzR99/d/vUfwufojNKqtLUQVB0NvXrT2dYRJGiljCw9SD7o0tuNPDbbWtNtG3HxPnTQ79D4c+CrmrV3DisRgoCfw2zDQ5dtATt53HwoFKgTlU38d2h95HIaJe2qgeCzbCxbqRexscy+gofQoYe67j/MPDJNFWpMEehUMIPLe+3XxrNBM5lWSSpAwsJte1yBmPd679NbeHnWgxlCGjEdBOek6+XDXPkoDUqj5fnzXrQRC53OpFiL7gDpuRfTyprmW7Qcyf/IcRG7fJMboQH1DA+S2DDwjQN49QPP63HyNSdhaye/PiBp/sAcwU3tKp1H5+fJeDDx29/p4j3v5a/Q00W1vGb93Ea/TnyKO0qTp/pQ6zFZUrDxIQczfW3S/XXer9vRoOBL3esbueeqgqPeD3QtiQRH8Vh01F+m46WqVlvaE5uy3Zj8Eac9dE01Ko3eiRc146OHDMQ4WRk7ozi5N7NYWvcD86s2NlRquDuABOYInPL0V2yp1KlYSJaDnkqWnDMBfScm+awMirYZGkW5I/WjQ7d5X8q6iGcVrm4u4+H0J3wfYnpCxw/CcGbZ519w5rSLpIWQqASLMArkEjS6E3GwQBvFK+5uf5Wb+B0gz0zHkfFVqmrTTjg+FwzXEz/iiswcILOyq+jrrlBJJ20pRG9U7ipWbBpjjunQGNDvUteE4TN/XrYyJYdoo+6OQSEtawN3JF9bIdDS93ioTc3EfBuO465x4ZbuOq8bAYMLfNdipNu3jsrXiGW+XvaO5v1yUd38KBWuS7TKf6Tn8WevIea2ycKwXf+/0HuHtEObUg3UC9l082BJG1LDeKaLm6y7nXI+/P00K1S8JwuoSdSbzaGRALWkMHeIANygzf8wbUkN4/m5Pbc1/5mH+XceWLLxy6b0gVBrdgLA+JuR0Fv8A1TStAnSArH/RuBMmUS90NZmMqad0EEd3vXYldPdten93isz9xdBklufQ8euUDPnohuE4LMf940zPYZ0OYdmhXX8P3hI13A01ohvFAubqPg4bjlmfPLhoVFxvC8OsbNHMjsoTTtFHeGftbKbFhotrfpdaaQOKmpXFYvAe0gZ7jplGe7fKmR8MwByntj3rXBkQZLoX1JHQgKfM06GcVAbi7z7unI55x9+ixwvCcGSM86jR84Ei90kgx5WtZu7e9r60gDeKc+5uQDhZwjI58emenJVuRbEjzPUH6jQ01aQMhY0Jytfsy4f2uORiNIlaQ/Ed1fqwPpVa8dFIjisfbdbs7Uje4x9V1bmI2RR4t+Qrn6whq4+jmVVwdarq2FpxHWkCeEnOtxVlMeJCdcs8Q7rwn8Oo+B/1rYs3yyElL2SHmbBKGmmvYrGrL5lWNx6qfoK0WHctixuHUXcjqk/FZAsF11zEAeovUjdVuNqH4hwS3DcFdu8zEE9BvTpTQwTLyrX7NoETGGzFiIn8SAbr+La9r6Ux+iztsFv7aGz8Q+anc/SnNTaWZXPfyrR7PuErOJmdpVAKKOynmiJPeJzdk65ulr33NYP6juXUuzDQM51a13DTED4xyUDhJV4wHBoou0y9o3agB+1mlmuACLfeu1tGO29cpUu6lTDMCNIa1v8A9QEBgCy4W5GaFyS0VrE6l42v2bE9TYFSTqShOxFJcNBio3Q+h3j5jkY3IbwU+qycihCKEJDV9aa9ApzRKCpZwqaWfc+WgtmJ+VvWtI2lHKH7+WQiZ8o8clWFV/D809/RefZl8Te52I1ta1vQ39DSftaYGZMyeGcRp1BnwKXtXcPdZjBrr3unl4L/ADPyqQWNIg9724N+p5ZapprO4fmf0Wt8MO9ZvdtbUa6XNQPtGjGWu0iMx+eCeKpykarNcIth3tTvqLA2BF/K5qUWdIsaS7M9IBgRPimms6TkgYRSRZri63OmgbN/IfOgWdJzgGukSJOWhn2ynqjtnRmOPpCPsiad4638NN/5Uv7Oj3ZcRPTLX3j/AEk7Z+eX5+FQ7a/zrMyLoGnNWdykx4YEAk7jxG+ax/d1q5TtWOAJOo4j+qD/APHNQuqkE5fkfXJZjCL0b6jwGvwG1TCypESHeo8+g068E01ncF59kXq4211Gh1zegt9aQWLJjFu4jXOfIj1CO2dw/Ny5Rzxic+KYA3Re6mo2HUW8Tr6/CumtbRtszA3zXU7NZFAE6nVLuGYNZGAZwBZtARmJVbgC+gvsCasgSrFeqWDIcOnXwTv/AGcgK37YqSlxmZLA5Mwvbpm0Ph50/CI1VH99VxRhnPdPGPbML08u4YZPvXbMbXBQD3Fe9jsCSR46UYBxSfvqxnugR14kLXHwGAmO0jWdQSbx9wlA2V9bg3O9tBRhCc68qgO7oy655xIVaNMWonHB+GxSFlkcixiAKMuX7x1TW/UZr+hpQAVSuLioyCwcdZ3AlTv6AgGW7v3pVjIzR3CtoJP2b6agHQ7U7AOKg/e1c4A+Gd+o3dUR8vRN2RV3yuGL3ZLpaMOo06ljl26UYQg31RuIECREa55wfIZpVxvAJCyhGLXW5uVJBvaxy00iFbtazqrSXDetuD4bGUZnk90tfIy2AVQw943JckqLDcUQEypcPDgGt14zxj01PLRNU5cw5fL2zAXcalL92SNMwIFrWdj46fGnYBxVQ39YNnCN3HeCY47gtb8vQZQe2IOVyQWTukMQtz0BAJ2+NqMA4pwvqsxh3jj4+X5Kq96YtVF6EIoSooQur+x7h+WGWcjV3CD9lBc/VvpWfeGSAuR/UNfFVbSG4T5qy8zv7g+J/Ksm63BY1Deqvm1qrCtKPipaAE4BLSLE1OEpSz+kuwxCSfh2b9k9fTetSy0UA7r5UTmHif2pssZPZ37zbXt0ArTxCmJOqs1LptNhjMr0jOsQ6Kx/d0H0tUjCuqswG0hOsD2WeJcuwiS+vvEeHhT1Yww3EU15ccQSPMLEQxFQB+kwLE32GiEa0sZLM2lTNVrKYyk+n4VH544zHLkMbXvqbX08j50yi0g5rEdZ1g7DhKsXsw4wssbRZArRWUkbOGLsn+Id+/oa5z9RWcUjVBJ7wPSRB8MmqvdWxoPHAj2V5rjVAoHE4iMsyLd4r6Dd4zbtEHmbBgP0lWrNB4M03HJ3odx+R5EprhvUyGVXUOhDKwDKwNwQRcEHqCKge0tcWkQQlBlEsqqpZiFVQSxJsABqST0AFDGlxwgSSlJhJf8AaUf8Liv/AKT/ADq9/wAf/wC4zzTMfIrykWsihCKWUIolCKJQiiUIolCKEIolCKRCKWUIolCrPPPFOyi7JT35dD5J1+e3zrY2Pa9rV7Rwyb7/AG18lobOoY6mM6D3XO66pdAihIiiEIohCKIQihKihIiiEIohCKEqKEiKIQiiEIoSooQihCKEL6D5Q4f2GDgjtYiMFh+s/fb6sazaoBcSvOr+v21y9+6cugyHok/NWLHbZb+6oHz1/jWXcjvwloDuykAkvVciFYhaMQaVqe1RJmqUBOhVziIuTWnRyUb2Sl+ANiR51fqCQCqNVpOQXReAxXw8V/0Afnc/xqpVnGV0tUhr3AcfbJT5MOn6C+fdFN7Rw0Kja93ErBsHGRlCAA3zW0B0su3xb51IK7wIBRjfjxE6aKBi+W8O+6kfBjThdVArIvK0YScui0YLluOFJRFJIpfsyDcXVo3DBl033pxucbS14BBGiq1iajmkjj6hW3C8XbKAy5iALkG1z426VzVTYrCSWPjlCpus4ORW1eNLfVD8xUJ2I7c8eSabN0arLB/dSGEnuvmki30ubyR38mOYeTWAslZ1T+LTFTeIB+R8RkeYk5lUBkYWWL+9kEI9xbPL56/dp6kZiPBQDo1JTApsNTech8z4aDmeSDmYTC9Vk9IavLTRQhFCEUIRQhFCEUIRQhFCEUIRQhacRi40vndVsCbEgGw62qRlJ7z3QTuQMzhGpXKOM8QbETPKep7o8FGij5fW9dva24oUhTHjzO9dTb0RSphgUKrCnRQhFCEUIRQhFCEUIWKsDsQfhSwmte12hlZUicihCKEIoQihCKEIoQihCacscP8AtGKhiIuGcZv2V7zfQGmVHhjSSqd/X7G3e/eBl1OQ9V9DiqDMVQyRAXnWio3M8KnEPcD8Oux90daybiW1Sr9A9wJOYcut9KhxSp1ExDnwqRoUjVAlmFWmsUgCU4w71dpDJBakqNle/nWjEtCpmniqtaN5A9V1nhS5YIh4RoP3RWe/NxWvV71Rx5lbHOtMQAvQKELxjSIC1ZjSJ8BbYxYU5MdmVqX3gPEgfM01xwglOd8J6Kz8RwxdO6QHU5o2OwcbX8jqp8QxFcVQqBjs9Dken5mOawCJC84dhezTvau5LyHxdrXt5AAKPBVUdKWvUxuy0GQ6ffU8yUrRClVAlSGr600UIRQhFCEUIRQhFCEUIRQhFCEUoQuJc3xkSujxWxGeXOzIW7VWkzwtG/4bKQulrBQPId3s4g0w5ru5AgToQIcCOufUqlToOcXGO9nGRzzygjIR6ezPhc0KxBZU++zxntCboAL57pbUXtp19NbMtXX9ncQ2XT3YI4ugaHz6J7icZhD9pyyR9+ZWiBw57i3Viw7vxXJtbN40pc3P6Kqylcfw8TTk0g97U55a+M66cFiuPwZxU0mZFiMQCqYLq75Ap0C3QZrtcBSfKjE3FO7olNG5FBjYOKdcWYE9c8st8KXg+MYAdn2gU5YQjWh7txk8RcuQrXOxvuL04Pbv9lDUtrvvYJzdPxdfTSPYqHwLimDSCNZ4lZxJf+ruR7xzObd4aqMoJ0G1NY5oaAVNdW9y+q51JxAjj0yHDr6qRLxfAZbFMyifOFWJVZhuc7EAFL2sBY20NLjao22t3MgwcMSSYHTnz4qu8wTxSYiV4RaNnJUZQuh/VG2vSmOIJyWlaMeyi1tT4gM859UtlF1Nv/euo9RQNU+s0uYQP98R4jJQ8LfPbKQLb62uL3BvbXY+lSO0Wba4hWjCQOOcb5BmM9DpulXTg3GsNFhikkIaUdpkbIpFyLx3J194m/lamtcANE+5tK9SsHNdDcpEnx9Eyk5lwGa64Xu2a4MaasGR4+u2bOD5Wp2Ns6KsLC8jOpnlvOkEH0gjnK04PjuAWSQtAWjYpkHZJdQoKt110SM/Fm9UDmgnJPqWd25jYdBEzmc949z4QsouYsHY54gbwomURJo4Fnsb9TqDbpqKXG3gkdY3M9138xM4jpu8lqPMOFDoyxbFM/3UYWwSVSFU3sLtGdSdQfKkxiRCd+yuC0hzuMZniNT4FRpOLYZmw7st+yRQ6CJQGewDMdbNrdttbW602RkpRbV2tqNadTkZOQ3fTVSMJx7CIFzx9oVa5vDGuZs0hLmx6qyJk2GW9ODmhR1LO4cThdH/AJE5ZZeBBM84SPj+LhlkUwIURY0QAgX7otckbki1z1NMJBOSv2lKpTYRUMmSfP8ANFCwuKeNs8bFW11BsbHemkA6qSvQp12GnUEgq0cP40XW82pvuDfbrY1MyqG5EBcVffpEOcXWzz0d8imsUqG2Rxr4GxNvI70VLahXGYWBVtbzZ5hwIHmCspZHta1/hv8AKsevsdzDipmQrdttJrsnjyUXG4wBbdba1nNt3h3eELWpva7QykMspJJq+xuEKyFFmerIalISvEL3hVykclHTpYrimP7gfIyuuQ6Ko8AB8hWWTmrhzMr0UiFlehIsXNIlAWApE9bL05Mha8Oe+g/WX8xUVX/03dD7JamVMnkrhXDrCRQhFCEhq+tNFCEUIRQhFCEUIRQhFCEUIRQhacbilijaRz3VFz/L4napaNJ1V4Y3Up7GF7g0alcj4hi2mkeRt2N/h4D0Fh6V3VGk2lTDG6BdTSpimwMG5R6kUiKEIoQihCKEIoQihCKEIoQihCKEIoQihCKEIoQihCKEIoQnXDijBY7PmtpZb3J16a9aC0qq55bLtyVc6XUxpqCpb4gi1WLXesjakPY3nJUPhvNeJh0Y9ovg3vejb/O9XIlcrX2dTdm3I8lZsLzjhZhlluh/XGn/AFDb1tUNS3a/VVA24o6jEPVTJMCki5oZFZTroQR8xVJ9gQZardLaYBwuy6pTPgnB7wNvGqzmObkQtOnd0371DkjBkjHi1j60+me6Vbts67COZ8gSuqZaoFShFIhemhC1tSJ4WNCVYs9CUNUZ8WIfvW1CWY/AammPpGq00xvBCc9mNhaN4V6Ugi42O1cOQQYK51e0iEUIX//Z",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        leading: Image.asset("assets/leading.png"),
        centerTitle: true,
        title: Image.asset("assets/dadagarments.png"),
        actions: [Icon(Icons.person, size: 33)],
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Divider(thickness: 3, color: Colors.grey.withOpacity(0.6)),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search Product",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    height: 45,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.tune, size: 22),
                  ),
                ],
              ),
            ),

            // ************Slide use kora hoice

            Column(
              //mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 0.8,
                    autoPlayAnimationDuration: Duration(seconds: 1),

                    height: 200.0,
                  ),

                  items: imgList.map((a) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(image: NetworkImage(a)),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "Categories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),

                      image: DecorationImage(
                        image: AssetImage("assets/saripora.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),

                  Container(
                    width: 90,
                    height: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage("assets/babygirls.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),

                  Container(
                    width: 90,
                    height: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage("assets/hijap.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 90,
                    height: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage("assets/babygirls.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),

                  Container(
                    width: 90,
                    height: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage("assets/babygirls.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),

                  Container(
                    width: 90,
                    height: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage("assets/girls.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),

                  // ... চাইলে আরও container
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Selling",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  // SizedBox(width:20 ,),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0xffFF8900),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            //Best sealing

            Container(
              width: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
            ),



            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,


                itemCount: 7,
                  shrinkWrap: true,

                  // Dress in Scrollrable

                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsetsGeometry.only(left: 10),
                    height: 156,
                    width: 179,
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          child: Image.asset(
                            "assets/hijap.png",
                            width: double.infinity,
                            height: 160,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 5,
                          ),
                          child: Text(
                            "Party Borkha Abaya Koliza",

                            style: TextStyle(
                              color: Color(0xff1E1E1E),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(width: 8, height: 5),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: Text(
                                "2880",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(height: 10, width: 8),

                            // 3200 lineThorugh
                            Text(
                              "3200",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.lineThrough,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text("Add to Card"),
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),


              ),
            )]
        ),
      ),
    );
  }
}
