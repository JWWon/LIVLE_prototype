# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = 'nil'
int_nil = 0
# Stage seeds
stages = Stage.create([
                          {title: 'New Face', artist: 'PSY', user_id: user, youtube_id: 'Y_Cxmj2m4wc', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'RIGHT NOW, GENTLEMAN', artist: 'PSY', user_id: user, youtube_id: 'XzhsgnWPse0', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: '밤편지', artist: '아이유', user_id: user, youtube_id: 'Neb8Wr9Zt1I', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: '금요일에 만나요', artist: '아이유', user_id: user, youtube_id: 'iKgksVxEw3M', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'I LUV IT', artist: 'PSY', user_id: user, youtube_id: 'e_VDJSChBGU', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'do it for fun', artist: '산이', user_id: user, youtube_id: 'p3tQaN5Qy00', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: '맛 좋은 산', artist: '산이', user_id: user, youtube_id: 'B3Bza_Kt0qw', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'What Do I Know', artist: 'Ed Sheeran', user_id: user, youtube_id: 'TTUQ8Idrowg', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'Castle On The Hill', artist: 'Ed Sheeran', user_id: user, youtube_id: 'P2Q5VZlVOro', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'Take me to church', artist: 'Ed Sheeran', user_id: user, youtube_id: 'oOPKDYuUzyw', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'Castle On The Hill', artist: 'Ed Sheeran', user_id: user, youtube_id: 'P2Q5VZlVOro', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'Drunk in love', artist: 'Ed Sheeran', user_id: user, youtube_id: 'dCsXSJPyAXU', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: '마에스트로', artist: '창모', user_id: user, youtube_id: 'I7SAFOkr7x8', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'Closer(Remix)', artist: 'The Chainsmokers', user_id: user, youtube_id: '602XJ4Uag_0', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'Selfie', artist: 'The Chainsmokers', user_id: user, youtube_id: 'n82N97l4olk', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'Paris', artist: 'The Chainsmokers', user_id: user, youtube_id: 'jidwjOU7bYA', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'Break Up Every Night', artist: 'The Chainsmokers', user_id: user, youtube_id: 'bs6SEAt_Rv4', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'Don\'t Let Me Down', artist: 'The Chainsmokers', user_id: user, youtube_id: 'hHwPESc-O8c', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'Closer', artist: 'The Chainsmokers', user_id: user, youtube_id: 'KnLR6DfXI0s', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'All we know', artist: 'The Chainsmokers', user_id: user, youtube_id: 'RKRvwYlLgWA', count_like: int_nil, count_view: int_nil, count_share: int_nil},
                          {title: 'Something Just Like This', artist: 'Coldplay', user_id: user, youtube_id: '4u6bWs-ZG0o', count_like: int_nil, count_view: int_nil, count_share: int_nil}
                      ])

rplace = '한강난지공원'
# Upcoming seeds
upcomings = Upcoming.create([
                                {title: '국카스텐 콘서트', artist: '국카스텐', youtube_id: 'vxd3HFNLlZM', d_day: '2017.07.08', place: rplace, ticket_link: 'http://mticket.interpark.com/Goods/GoodsInfo/info?GoodsCode=17007302&app_tapbar_state=fix'},
                                {title: '알쌈 콘서트', artist: 'Crush', youtube_id: '9_i3WU-rG8c', d_day: '2017.6.24', place: rplace, ticket_link: 'http://mticket.interpark.com/Goods/GoodsInfo/info?GoodsCode=17007166&app_tapbar_state=fix'},
                                {title: '어반뮤직페스티벌', artist: '프롬', youtube_id: 'TBDsMLAWMvM', d_day: '2017.07.22', place: rplace, ticket_link: 'http://mticket.interpark.com/Goods/GoodsInfo/info?GoodsCode=17007287'},
                                {title: '어반뮤직페스티벌', artist: '정승환', youtube_id: 'goU0uikyTik', d_day: '2017.07.22', place: rplace, ticket_link: 'http://mticket.interpark.com/Goods/GoodsInfo/info?GoodsCode=17007287'},
                                {title: 'NBA buzzer beat festival', artist: '창모', youtube_id: 'I7SAFOkr7x8', d_day: '2017.07.08', place: rplace, ticket_link: 'http://www.ticketlink.co.kr/product/16277'},
                                {title: '로이킴 라이브 투어', artist: '로이킴', youtube_id: 'HDAQ158hkI8', d_day: '2017.06.24', place: rplace, ticket_link: 'http://mticket.interpark.com/Goods/GoodsInfo/info?GoodsCode=17006010'},
                                {title: 'Planting day', artist: '박효신', youtube_id: 'QYu8lS0XqC8', d_day: '2017.6.24', place: rplace, ticket_link: 'http://ticket.melon.com/performance/index.htm?prodId=200654'},
                                {title: '전주얼티밋뮤직페스티벌', artist: '넬', youtube_id: '83IfZhO4Pd0', d_day: '2017.08.04', place: rplace, ticket_link: 'http://ticket.melon.com/performance/index.htm?prodId=200614'},
                                {title: '전주얼티밋뮤직페스티벌', artist: '10cm', youtube_id: 'RkbTZi3OFUE', d_day: '2017.08.04', place: rplace, ticket_link: 'http://ticket.melon.com/performance/index.htm?prodId=200614'},
                                {title: '스마일러브위크앤드', artist: '정준일', youtube_id: 'fP2ap8Woe0g', d_day: '2017.06.17', place: rplace, ticket_link: 'http://ticket.melon.com/performance/index.htm?prodId=200682'},
                                {title: 'NBA buzzer beat festival', artist: '딘', youtube_id: '46hn0B4GTsY', d_day: '2017.07.08', place: rplace, ticket_link: 'http://www.ticketlink.co.kr/product/16277'},
                                {title: '전주얼티밋뮤직페스티벌', artist: '서사무엘', youtube_id: 'dTlH1zUwri8', d_day: '2017.08.04', place: rplace, ticket_link: 'http://ticket.melon.com/performance/index.htm?prodId=200614'},
                                {title: '어반뮤직페스티벌', artist: '권진아', youtube_id: 'v9llEUD5Ew0', d_day: '2017.07.22', place: rplace, ticket_link: 'http://mticket.interpark.com/Goods/GoodsInfo/info?GoodsCode=17007287'},
                                {title: '어반뮤직페스티벌', artist: '치즈', youtube_id: 'NQQhd5X_njQ', d_day: '2017.07.22', place: rplace, ticket_link: 'http://mticket.interpark.com/Goods/GoodsInfo/info?GoodsCode=17007287'},
                                {title: '지산 밸리록 뮤직앤드아츠 페스티벌', artist: '라이프앤타임', youtube_id: 'eLTdTkicioQ', d_day: '2017.07.28', place: rplace, ticket_link: 'http://ticket.interpark.com/Ticket/Goods/GoodsInfo.asp?GroupCode=17004843'},
                                {title: 'NBA buzzer beat festival', artist: '자이언티', youtube_id: 'e2URGNihN2A', d_day: '2017.07.28', place: rplace, ticket_link: 'http://www.ticketlink.co.kr/product/16277'},
                                {title: '전주얼티밋뮤직페스티벌', artist: '엠씨더맥스', youtube_id: 'kCu2YKCCbjk', d_day: '2017.08.04', place: rplace, ticket_link: 'http://ticket.melon.com/performance/index.htm?prodId=200614'}
                            ])