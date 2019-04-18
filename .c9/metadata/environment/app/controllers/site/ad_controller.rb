{"changed":true,"filter":false,"title":"ad_controller.rb","tooltip":"/app/controllers/site/ad_controller.rb","value":"class Site::AdsController < ApplicationController\n  before_action :authenticate_member!, only: [:new_ad]    \n  layout 'site'\n  def new_ad\n      @ad = Ad.new\n  end\n  \n  def create_ad\n    @ad = Ad.new(ads_params)\n    if @ad.save\n      flash[:notice] = 'Anúncio criado com sucesso'\n      redirect_to site_ad_path(params[:id])\n    else\n      flash[:notice] = 'Não foi possível criar o anuncio'\n      redirect_to member_index_path\n    end\n  end\n  \n  def update_ad\n  end\n  \n  def delete_ad\n      # Esse método não deleta o anúncio, mas muda um valor de seu campo que o torna invisível\n  end\n\n  private\n  \n  def ads_params\n    Params.require(:ad).permit(:title, :description, :category_id, :member_id, :price, :image)\n  end\nend","undoManager":{"mark":99,"position":100,"stack":[[{"start":{"row":17,"column":71},"end":{"row":17,"column":72},"action":"insert","lines":["b"],"id":124},{"start":{"row":17,"column":72},"end":{"row":17,"column":73},"action":"insert","lines":["e"]},{"start":{"row":17,"column":73},"end":{"row":17,"column":74},"action":"insert","lines":["r"]},{"start":{"row":17,"column":74},"end":{"row":17,"column":75},"action":"insert","lines":["_"]},{"start":{"row":17,"column":75},"end":{"row":17,"column":76},"action":"insert","lines":["i"]},{"start":{"row":17,"column":76},"end":{"row":17,"column":77},"action":"insert","lines":["s"]},{"start":{"row":17,"column":77},"end":{"row":17,"column":78},"action":"insert","lines":[","]}],[{"start":{"row":17,"column":78},"end":{"row":17,"column":79},"action":"insert","lines":[" "],"id":125}],[{"start":{"row":17,"column":78},"end":{"row":17,"column":79},"action":"remove","lines":[" "],"id":126},{"start":{"row":17,"column":77},"end":{"row":17,"column":78},"action":"remove","lines":[","]},{"start":{"row":17,"column":76},"end":{"row":17,"column":77},"action":"remove","lines":["s"]}],[{"start":{"row":17,"column":76},"end":{"row":17,"column":77},"action":"insert","lines":["d"],"id":127},{"start":{"row":17,"column":77},"end":{"row":17,"column":78},"action":"insert","lines":[","]}],[{"start":{"row":17,"column":78},"end":{"row":17,"column":79},"action":"insert","lines":[" "],"id":128},{"start":{"row":17,"column":79},"end":{"row":17,"column":80},"action":"insert","lines":[":"]}],[{"start":{"row":17,"column":80},"end":{"row":17,"column":81},"action":"insert","lines":["´"],"id":129},{"start":{"row":17,"column":81},"end":{"row":17,"column":82},"action":"insert","lines":["r"]},{"start":{"row":17,"column":82},"end":{"row":17,"column":83},"action":"insert","lines":["i"]},{"start":{"row":17,"column":83},"end":{"row":17,"column":84},"action":"insert","lines":["o"]},{"start":{"row":17,"column":84},"end":{"row":17,"column":85},"action":"insert","lines":["c"]},{"start":{"row":17,"column":85},"end":{"row":17,"column":86},"action":"insert","lines":["e"]}],[{"start":{"row":17,"column":85},"end":{"row":17,"column":86},"action":"remove","lines":["e"],"id":130},{"start":{"row":17,"column":84},"end":{"row":17,"column":85},"action":"remove","lines":["c"]},{"start":{"row":17,"column":83},"end":{"row":17,"column":84},"action":"remove","lines":["o"]},{"start":{"row":17,"column":82},"end":{"row":17,"column":83},"action":"remove","lines":["i"]},{"start":{"row":17,"column":81},"end":{"row":17,"column":82},"action":"remove","lines":["r"]},{"start":{"row":17,"column":80},"end":{"row":17,"column":81},"action":"remove","lines":["´"]}],[{"start":{"row":17,"column":80},"end":{"row":17,"column":81},"action":"insert","lines":["p"],"id":131},{"start":{"row":17,"column":81},"end":{"row":17,"column":82},"action":"insert","lines":["r"]},{"start":{"row":17,"column":82},"end":{"row":17,"column":83},"action":"insert","lines":["c"]}],[{"start":{"row":17,"column":82},"end":{"row":17,"column":83},"action":"remove","lines":["c"],"id":132}],[{"start":{"row":17,"column":82},"end":{"row":17,"column":83},"action":"insert","lines":["i"],"id":133},{"start":{"row":17,"column":83},"end":{"row":17,"column":84},"action":"insert","lines":["c"]},{"start":{"row":17,"column":84},"end":{"row":17,"column":85},"action":"insert","lines":["e"]},{"start":{"row":17,"column":85},"end":{"row":17,"column":86},"action":"insert","lines":[","]}],[{"start":{"row":17,"column":86},"end":{"row":17,"column":87},"action":"insert","lines":[" "],"id":134},{"start":{"row":17,"column":87},"end":{"row":17,"column":88},"action":"insert","lines":[":"]}],[{"start":{"row":17,"column":88},"end":{"row":17,"column":89},"action":"insert","lines":["i"],"id":135},{"start":{"row":17,"column":89},"end":{"row":17,"column":90},"action":"insert","lines":["m"]},{"start":{"row":17,"column":90},"end":{"row":17,"column":91},"action":"insert","lines":["a"]},{"start":{"row":17,"column":91},"end":{"row":17,"column":92},"action":"insert","lines":["g"]},{"start":{"row":17,"column":92},"end":{"row":17,"column":93},"action":"insert","lines":["e"]}],[{"start":{"row":7,"column":15},"end":{"row":8,"column":0},"action":"insert","lines":["",""],"id":136},{"start":{"row":8,"column":0},"end":{"row":8,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":8,"column":4},"end":{"row":8,"column":5},"action":"insert","lines":["@"],"id":137}],[{"start":{"row":8,"column":5},"end":{"row":8,"column":6},"action":"insert","lines":["a"],"id":138},{"start":{"row":8,"column":6},"end":{"row":8,"column":7},"action":"insert","lines":["d"]}],[{"start":{"row":8,"column":7},"end":{"row":8,"column":8},"action":"insert","lines":[" "],"id":139},{"start":{"row":8,"column":8},"end":{"row":8,"column":9},"action":"insert","lines":["="]}],[{"start":{"row":8,"column":9},"end":{"row":8,"column":10},"action":"insert","lines":[" "],"id":140},{"start":{"row":8,"column":10},"end":{"row":8,"column":11},"action":"insert","lines":["A"]},{"start":{"row":8,"column":11},"end":{"row":8,"column":12},"action":"insert","lines":["d"]}],[{"start":{"row":8,"column":12},"end":{"row":8,"column":13},"action":"insert","lines":["."],"id":141},{"start":{"row":8,"column":13},"end":{"row":8,"column":14},"action":"insert","lines":["b"]},{"start":{"row":8,"column":14},"end":{"row":8,"column":15},"action":"insert","lines":["e"]},{"start":{"row":8,"column":15},"end":{"row":8,"column":16},"action":"insert","lines":["w"]}],[{"start":{"row":8,"column":15},"end":{"row":8,"column":16},"action":"remove","lines":["w"],"id":142},{"start":{"row":8,"column":14},"end":{"row":8,"column":15},"action":"remove","lines":["e"]},{"start":{"row":8,"column":13},"end":{"row":8,"column":14},"action":"remove","lines":["b"]}],[{"start":{"row":8,"column":13},"end":{"row":8,"column":14},"action":"insert","lines":["n"],"id":143},{"start":{"row":8,"column":14},"end":{"row":8,"column":15},"action":"insert","lines":["e"]},{"start":{"row":8,"column":15},"end":{"row":8,"column":16},"action":"insert","lines":["w"]}],[{"start":{"row":8,"column":16},"end":{"row":8,"column":18},"action":"insert","lines":["()"],"id":144}],[{"start":{"row":8,"column":17},"end":{"row":8,"column":18},"action":"insert","lines":["a"],"id":145},{"start":{"row":8,"column":18},"end":{"row":8,"column":19},"action":"insert","lines":["d"]},{"start":{"row":8,"column":19},"end":{"row":8,"column":20},"action":"insert","lines":["s"]},{"start":{"row":8,"column":20},"end":{"row":8,"column":21},"action":"insert","lines":["_"]},{"start":{"row":8,"column":21},"end":{"row":8,"column":22},"action":"insert","lines":["p"]},{"start":{"row":8,"column":22},"end":{"row":8,"column":23},"action":"insert","lines":["a"]},{"start":{"row":8,"column":23},"end":{"row":8,"column":24},"action":"insert","lines":["r"]},{"start":{"row":8,"column":24},"end":{"row":8,"column":25},"action":"insert","lines":["a"]},{"start":{"row":8,"column":25},"end":{"row":8,"column":26},"action":"insert","lines":["m"]},{"start":{"row":8,"column":26},"end":{"row":8,"column":27},"action":"insert","lines":["s"]}],[{"start":{"row":8,"column":28},"end":{"row":9,"column":0},"action":"insert","lines":["",""],"id":146},{"start":{"row":9,"column":0},"end":{"row":9,"column":4},"action":"insert","lines":["    "]},{"start":{"row":9,"column":4},"end":{"row":9,"column":5},"action":"insert","lines":["i"]},{"start":{"row":9,"column":5},"end":{"row":9,"column":6},"action":"insert","lines":["f"]}],[{"start":{"row":9,"column":6},"end":{"row":9,"column":7},"action":"insert","lines":[" "],"id":147},{"start":{"row":9,"column":7},"end":{"row":9,"column":8},"action":"insert","lines":["@"]},{"start":{"row":9,"column":8},"end":{"row":9,"column":9},"action":"insert","lines":["a"]},{"start":{"row":9,"column":9},"end":{"row":9,"column":10},"action":"insert","lines":["d"]},{"start":{"row":9,"column":10},"end":{"row":9,"column":11},"action":"insert","lines":["."]},{"start":{"row":9,"column":11},"end":{"row":9,"column":12},"action":"insert","lines":["s"]},{"start":{"row":9,"column":12},"end":{"row":9,"column":13},"action":"insert","lines":["a"]},{"start":{"row":9,"column":13},"end":{"row":9,"column":14},"action":"insert","lines":["v"]},{"start":{"row":9,"column":14},"end":{"row":9,"column":15},"action":"insert","lines":["e"]}],[{"start":{"row":9,"column":15},"end":{"row":10,"column":0},"action":"insert","lines":["",""],"id":148},{"start":{"row":10,"column":0},"end":{"row":10,"column":6},"action":"insert","lines":["      "]},{"start":{"row":10,"column":6},"end":{"row":10,"column":7},"action":"insert","lines":["f"]}],[{"start":{"row":10,"column":7},"end":{"row":10,"column":8},"action":"insert","lines":["l"],"id":149},{"start":{"row":10,"column":8},"end":{"row":10,"column":9},"action":"insert","lines":["a"]},{"start":{"row":10,"column":9},"end":{"row":10,"column":10},"action":"insert","lines":["s"]},{"start":{"row":10,"column":10},"end":{"row":10,"column":11},"action":"insert","lines":["h"]}],[{"start":{"row":10,"column":11},"end":{"row":10,"column":13},"action":"insert","lines":["[]"],"id":150}],[{"start":{"row":10,"column":12},"end":{"row":10,"column":13},"action":"insert","lines":["n"],"id":151}],[{"start":{"row":10,"column":12},"end":{"row":10,"column":13},"action":"remove","lines":["n"],"id":152}],[{"start":{"row":10,"column":12},"end":{"row":10,"column":13},"action":"insert","lines":[":"],"id":153},{"start":{"row":10,"column":13},"end":{"row":10,"column":14},"action":"insert","lines":["n"]},{"start":{"row":10,"column":14},"end":{"row":10,"column":15},"action":"insert","lines":["o"]},{"start":{"row":10,"column":15},"end":{"row":10,"column":16},"action":"insert","lines":["t"]},{"start":{"row":10,"column":16},"end":{"row":10,"column":17},"action":"insert","lines":["i"]},{"start":{"row":10,"column":17},"end":{"row":10,"column":18},"action":"insert","lines":["c"]},{"start":{"row":10,"column":18},"end":{"row":10,"column":19},"action":"insert","lines":["e"]}],[{"start":{"row":10,"column":20},"end":{"row":10,"column":21},"action":"insert","lines":[" "],"id":154},{"start":{"row":10,"column":21},"end":{"row":10,"column":22},"action":"insert","lines":["="]}],[{"start":{"row":10,"column":22},"end":{"row":11,"column":0},"action":"insert","lines":["",""],"id":155},{"start":{"row":11,"column":0},"end":{"row":11,"column":6},"action":"insert","lines":["      "]},{"start":{"row":11,"column":6},"end":{"row":12,"column":0},"action":"insert","lines":["",""]},{"start":{"row":12,"column":0},"end":{"row":12,"column":6},"action":"insert","lines":["      "]},{"start":{"row":12,"column":6},"end":{"row":12,"column":7},"action":"insert","lines":["e"]},{"start":{"row":12,"column":7},"end":{"row":12,"column":8},"action":"insert","lines":["l"]},{"start":{"row":12,"column":8},"end":{"row":12,"column":9},"action":"insert","lines":["s"]},{"start":{"row":12,"column":9},"end":{"row":12,"column":10},"action":"insert","lines":["e"]},{"start":{"row":12,"column":4},"end":{"row":12,"column":6},"action":"remove","lines":["  "]}],[{"start":{"row":12,"column":8},"end":{"row":13,"column":0},"action":"insert","lines":["",""],"id":156},{"start":{"row":13,"column":0},"end":{"row":13,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":13,"column":6},"end":{"row":13,"column":22},"action":"insert","lines":["flash[:notice] ="],"id":157}],[{"start":{"row":10,"column":22},"end":{"row":10,"column":23},"action":"insert","lines":[" "],"id":158}],[{"start":{"row":10,"column":23},"end":{"row":10,"column":25},"action":"insert","lines":["''"],"id":159}],[{"start":{"row":10,"column":24},"end":{"row":10,"column":25},"action":"insert","lines":["A"],"id":160},{"start":{"row":10,"column":25},"end":{"row":10,"column":26},"action":"insert","lines":["n"]},{"start":{"row":10,"column":26},"end":{"row":10,"column":27},"action":"insert","lines":["ú"]},{"start":{"row":10,"column":27},"end":{"row":10,"column":28},"action":"insert","lines":["n"]},{"start":{"row":10,"column":28},"end":{"row":10,"column":29},"action":"insert","lines":["c"]},{"start":{"row":10,"column":29},"end":{"row":10,"column":30},"action":"insert","lines":["i"]},{"start":{"row":10,"column":30},"end":{"row":10,"column":31},"action":"insert","lines":["o"]}],[{"start":{"row":10,"column":31},"end":{"row":10,"column":32},"action":"insert","lines":[" "],"id":161},{"start":{"row":10,"column":32},"end":{"row":10,"column":33},"action":"insert","lines":["s"]},{"start":{"row":10,"column":33},"end":{"row":10,"column":34},"action":"insert","lines":["a"]},{"start":{"row":10,"column":34},"end":{"row":10,"column":35},"action":"insert","lines":["l"]},{"start":{"row":10,"column":35},"end":{"row":10,"column":36},"action":"insert","lines":["v"]},{"start":{"row":10,"column":36},"end":{"row":10,"column":37},"action":"insert","lines":["o"]}],[{"start":{"row":10,"column":37},"end":{"row":10,"column":38},"action":"insert","lines":[" "],"id":162}],[{"start":{"row":10,"column":37},"end":{"row":10,"column":38},"action":"remove","lines":[" "],"id":163},{"start":{"row":10,"column":36},"end":{"row":10,"column":37},"action":"remove","lines":["o"]},{"start":{"row":10,"column":35},"end":{"row":10,"column":36},"action":"remove","lines":["v"]},{"start":{"row":10,"column":34},"end":{"row":10,"column":35},"action":"remove","lines":["l"]},{"start":{"row":10,"column":33},"end":{"row":10,"column":34},"action":"remove","lines":["a"]},{"start":{"row":10,"column":32},"end":{"row":10,"column":33},"action":"remove","lines":["s"]}],[{"start":{"row":10,"column":32},"end":{"row":10,"column":33},"action":"insert","lines":["c"],"id":164},{"start":{"row":10,"column":33},"end":{"row":10,"column":34},"action":"insert","lines":["r"]},{"start":{"row":10,"column":34},"end":{"row":10,"column":35},"action":"insert","lines":["i"]},{"start":{"row":10,"column":35},"end":{"row":10,"column":36},"action":"insert","lines":["o"]},{"start":{"row":10,"column":36},"end":{"row":10,"column":37},"action":"insert","lines":["a"]},{"start":{"row":10,"column":37},"end":{"row":10,"column":38},"action":"insert","lines":["d"]}],[{"start":{"row":10,"column":37},"end":{"row":10,"column":38},"action":"remove","lines":["d"],"id":165},{"start":{"row":10,"column":36},"end":{"row":10,"column":37},"action":"remove","lines":["a"]},{"start":{"row":10,"column":35},"end":{"row":10,"column":36},"action":"remove","lines":["o"]}],[{"start":{"row":10,"column":35},"end":{"row":10,"column":36},"action":"insert","lines":["a"],"id":166},{"start":{"row":10,"column":36},"end":{"row":10,"column":37},"action":"insert","lines":["d"]},{"start":{"row":10,"column":37},"end":{"row":10,"column":38},"action":"insert","lines":["o"]}],[{"start":{"row":10,"column":38},"end":{"row":10,"column":39},"action":"insert","lines":[" "],"id":167},{"start":{"row":10,"column":39},"end":{"row":10,"column":40},"action":"insert","lines":["c"]},{"start":{"row":10,"column":40},"end":{"row":10,"column":41},"action":"insert","lines":["o"]},{"start":{"row":10,"column":41},"end":{"row":10,"column":42},"action":"insert","lines":["m"]}],[{"start":{"row":10,"column":42},"end":{"row":10,"column":43},"action":"insert","lines":[" "],"id":168},{"start":{"row":10,"column":43},"end":{"row":10,"column":44},"action":"insert","lines":["s"]},{"start":{"row":10,"column":44},"end":{"row":10,"column":45},"action":"insert","lines":["u"]},{"start":{"row":10,"column":45},"end":{"row":10,"column":46},"action":"insert","lines":["c"]},{"start":{"row":10,"column":46},"end":{"row":10,"column":47},"action":"insert","lines":["e"]},{"start":{"row":10,"column":47},"end":{"row":10,"column":48},"action":"insert","lines":["s"]},{"start":{"row":10,"column":48},"end":{"row":10,"column":49},"action":"insert","lines":["s"]},{"start":{"row":10,"column":49},"end":{"row":10,"column":50},"action":"insert","lines":["o"]}],[{"start":{"row":10,"column":51},"end":{"row":11,"column":0},"action":"insert","lines":["",""],"id":169},{"start":{"row":11,"column":0},"end":{"row":11,"column":6},"action":"insert","lines":["      "]},{"start":{"row":11,"column":6},"end":{"row":11,"column":7},"action":"insert","lines":["r"]},{"start":{"row":11,"column":7},"end":{"row":11,"column":8},"action":"insert","lines":["e"]},{"start":{"row":11,"column":8},"end":{"row":11,"column":9},"action":"insert","lines":["d"]},{"start":{"row":11,"column":9},"end":{"row":11,"column":10},"action":"insert","lines":["i"]}],[{"start":{"row":11,"column":10},"end":{"row":11,"column":11},"action":"insert","lines":["r"],"id":170},{"start":{"row":11,"column":11},"end":{"row":11,"column":12},"action":"insert","lines":["e"]},{"start":{"row":11,"column":12},"end":{"row":11,"column":13},"action":"insert","lines":["c"]},{"start":{"row":11,"column":13},"end":{"row":11,"column":14},"action":"insert","lines":["t"]},{"start":{"row":11,"column":14},"end":{"row":11,"column":15},"action":"insert","lines":["_"]},{"start":{"row":11,"column":15},"end":{"row":11,"column":16},"action":"insert","lines":["t"]},{"start":{"row":11,"column":16},"end":{"row":11,"column":17},"action":"insert","lines":["o"]}],[{"start":{"row":11,"column":17},"end":{"row":11,"column":18},"action":"insert","lines":[" "],"id":171}],[{"start":{"row":11,"column":18},"end":{"row":11,"column":19},"action":"insert","lines":["s"],"id":172},{"start":{"row":11,"column":19},"end":{"row":11,"column":20},"action":"insert","lines":["i"]},{"start":{"row":11,"column":20},"end":{"row":11,"column":21},"action":"insert","lines":["t"]},{"start":{"row":11,"column":21},"end":{"row":11,"column":22},"action":"insert","lines":["e"]},{"start":{"row":11,"column":22},"end":{"row":11,"column":23},"action":"insert","lines":["_"]}],[{"start":{"row":11,"column":23},"end":{"row":11,"column":24},"action":"insert","lines":["a"],"id":173},{"start":{"row":11,"column":24},"end":{"row":11,"column":25},"action":"insert","lines":["d"]},{"start":{"row":11,"column":25},"end":{"row":11,"column":26},"action":"insert","lines":["_"]},{"start":{"row":11,"column":26},"end":{"row":11,"column":27},"action":"insert","lines":["a"]},{"start":{"row":11,"column":27},"end":{"row":11,"column":28},"action":"insert","lines":["p"]},{"start":{"row":11,"column":28},"end":{"row":11,"column":29},"action":"insert","lines":["t"]},{"start":{"row":11,"column":29},"end":{"row":11,"column":30},"action":"insert","lines":["j"]},{"start":{"row":11,"column":30},"end":{"row":11,"column":31},"action":"insert","lines":["h"]}],[{"start":{"row":11,"column":30},"end":{"row":11,"column":31},"action":"remove","lines":["h"],"id":174},{"start":{"row":11,"column":29},"end":{"row":11,"column":30},"action":"remove","lines":["j"]},{"start":{"row":11,"column":28},"end":{"row":11,"column":29},"action":"remove","lines":["t"]},{"start":{"row":11,"column":27},"end":{"row":11,"column":28},"action":"remove","lines":["p"]},{"start":{"row":11,"column":26},"end":{"row":11,"column":27},"action":"remove","lines":["a"]}],[{"start":{"row":11,"column":26},"end":{"row":11,"column":27},"action":"insert","lines":["p"],"id":175},{"start":{"row":11,"column":27},"end":{"row":11,"column":28},"action":"insert","lines":["a"]},{"start":{"row":11,"column":28},"end":{"row":11,"column":29},"action":"insert","lines":["r"]},{"start":{"row":11,"column":29},"end":{"row":11,"column":30},"action":"insert","lines":["h"]}],[{"start":{"row":11,"column":29},"end":{"row":11,"column":30},"action":"remove","lines":["h"],"id":176},{"start":{"row":11,"column":28},"end":{"row":11,"column":29},"action":"remove","lines":["r"]}],[{"start":{"row":11,"column":28},"end":{"row":11,"column":29},"action":"insert","lines":["t"],"id":177},{"start":{"row":11,"column":29},"end":{"row":11,"column":30},"action":"insert","lines":["h"]},{"start":{"row":11,"column":30},"end":{"row":11,"column":31},"action":"insert","lines":["s"]}],[{"start":{"row":11,"column":30},"end":{"row":11,"column":31},"action":"remove","lines":["s"],"id":178}],[{"start":{"row":11,"column":30},"end":{"row":11,"column":31},"action":"insert","lines":[")"],"id":179}],[{"start":{"row":11,"column":30},"end":{"row":11,"column":31},"action":"remove","lines":[")"],"id":180}],[{"start":{"row":11,"column":30},"end":{"row":11,"column":32},"action":"insert","lines":["()"],"id":181}],[{"start":{"row":11,"column":31},"end":{"row":11,"column":32},"action":"insert","lines":["p"],"id":182},{"start":{"row":11,"column":32},"end":{"row":11,"column":33},"action":"insert","lines":["a"]},{"start":{"row":11,"column":33},"end":{"row":11,"column":34},"action":"insert","lines":["r"]},{"start":{"row":11,"column":34},"end":{"row":11,"column":35},"action":"insert","lines":["a"]},{"start":{"row":11,"column":35},"end":{"row":11,"column":36},"action":"insert","lines":["m"]},{"start":{"row":11,"column":36},"end":{"row":11,"column":37},"action":"insert","lines":["s"]}],[{"start":{"row":11,"column":37},"end":{"row":11,"column":39},"action":"insert","lines":["[]"],"id":183}],[{"start":{"row":11,"column":38},"end":{"row":11,"column":39},"action":"insert","lines":[":"],"id":184},{"start":{"row":11,"column":39},"end":{"row":11,"column":40},"action":"insert","lines":["i"]},{"start":{"row":11,"column":40},"end":{"row":11,"column":41},"action":"insert","lines":["d"]}],[{"start":{"row":11,"column":43},"end":{"row":12,"column":6},"action":"remove","lines":["","      "],"id":185}],[{"start":{"row":13,"column":22},"end":{"row":13,"column":23},"action":"insert","lines":[" "],"id":186}],[{"start":{"row":13,"column":23},"end":{"row":13,"column":25},"action":"insert","lines":["''"],"id":187}],[{"start":{"row":13,"column":24},"end":{"row":13,"column":25},"action":"insert","lines":["N"],"id":188},{"start":{"row":13,"column":25},"end":{"row":13,"column":26},"action":"insert","lines":["ã"]},{"start":{"row":13,"column":26},"end":{"row":13,"column":27},"action":"insert","lines":["o"]}],[{"start":{"row":13,"column":27},"end":{"row":13,"column":28},"action":"insert","lines":[" "],"id":189},{"start":{"row":13,"column":28},"end":{"row":13,"column":29},"action":"insert","lines":["f"]},{"start":{"row":13,"column":29},"end":{"row":13,"column":30},"action":"insert","lines":["o"]},{"start":{"row":13,"column":30},"end":{"row":13,"column":31},"action":"insert","lines":["i"]}],[{"start":{"row":13,"column":31},"end":{"row":13,"column":32},"action":"insert","lines":[" "],"id":190},{"start":{"row":13,"column":32},"end":{"row":13,"column":33},"action":"insert","lines":["p"]},{"start":{"row":13,"column":33},"end":{"row":13,"column":34},"action":"insert","lines":["s"]}],[{"start":{"row":13,"column":33},"end":{"row":13,"column":34},"action":"remove","lines":["s"],"id":191}],[{"start":{"row":13,"column":33},"end":{"row":13,"column":34},"action":"insert","lines":["o"],"id":192},{"start":{"row":13,"column":34},"end":{"row":13,"column":35},"action":"insert","lines":["´"]},{"start":{"row":13,"column":35},"end":{"row":13,"column":36},"action":"insert","lines":["s"]}],[{"start":{"row":13,"column":35},"end":{"row":13,"column":36},"action":"remove","lines":["s"],"id":193},{"start":{"row":13,"column":34},"end":{"row":13,"column":35},"action":"remove","lines":["´"]}],[{"start":{"row":13,"column":34},"end":{"row":13,"column":35},"action":"insert","lines":["s"],"id":194},{"start":{"row":13,"column":35},"end":{"row":13,"column":36},"action":"insert","lines":["´"]},{"start":{"row":13,"column":36},"end":{"row":13,"column":37},"action":"insert","lines":["s"]}],[{"start":{"row":13,"column":36},"end":{"row":13,"column":37},"action":"remove","lines":["s"],"id":195},{"start":{"row":13,"column":35},"end":{"row":13,"column":36},"action":"remove","lines":["´"]}],[{"start":{"row":13,"column":35},"end":{"row":13,"column":36},"action":"insert","lines":["s"],"id":196},{"start":{"row":13,"column":36},"end":{"row":13,"column":37},"action":"insert","lines":["í"]},{"start":{"row":13,"column":37},"end":{"row":13,"column":38},"action":"insert","lines":["v"]},{"start":{"row":13,"column":38},"end":{"row":13,"column":39},"action":"insert","lines":["e"]},{"start":{"row":13,"column":39},"end":{"row":13,"column":40},"action":"insert","lines":["l"]}],[{"start":{"row":13,"column":40},"end":{"row":13,"column":41},"action":"insert","lines":[" "],"id":197},{"start":{"row":13,"column":41},"end":{"row":13,"column":42},"action":"insert","lines":["c"]},{"start":{"row":13,"column":42},"end":{"row":13,"column":43},"action":"insert","lines":["r"]},{"start":{"row":13,"column":43},"end":{"row":13,"column":44},"action":"insert","lines":["i"]},{"start":{"row":13,"column":44},"end":{"row":13,"column":45},"action":"insert","lines":["a"]},{"start":{"row":13,"column":45},"end":{"row":13,"column":46},"action":"insert","lines":["r"]}],[{"start":{"row":13,"column":46},"end":{"row":13,"column":47},"action":"insert","lines":[" "],"id":198},{"start":{"row":13,"column":47},"end":{"row":13,"column":48},"action":"insert","lines":["o"]}],[{"start":{"row":13,"column":48},"end":{"row":13,"column":49},"action":"insert","lines":[" "],"id":199},{"start":{"row":13,"column":49},"end":{"row":13,"column":50},"action":"insert","lines":["a"]},{"start":{"row":13,"column":50},"end":{"row":13,"column":51},"action":"insert","lines":["n"]},{"start":{"row":13,"column":51},"end":{"row":13,"column":52},"action":"insert","lines":["u"]},{"start":{"row":13,"column":52},"end":{"row":13,"column":53},"action":"insert","lines":["n"]},{"start":{"row":13,"column":53},"end":{"row":13,"column":54},"action":"insert","lines":["c"]},{"start":{"row":13,"column":54},"end":{"row":13,"column":55},"action":"insert","lines":["i"]},{"start":{"row":13,"column":55},"end":{"row":13,"column":56},"action":"insert","lines":["o"]}],[{"start":{"row":13,"column":57},"end":{"row":14,"column":0},"action":"insert","lines":["",""],"id":200},{"start":{"row":14,"column":0},"end":{"row":14,"column":6},"action":"insert","lines":["      "]},{"start":{"row":14,"column":6},"end":{"row":14,"column":7},"action":"insert","lines":["r"]},{"start":{"row":14,"column":7},"end":{"row":14,"column":8},"action":"insert","lines":["e"]},{"start":{"row":14,"column":8},"end":{"row":14,"column":9},"action":"insert","lines":["i"]},{"start":{"row":14,"column":9},"end":{"row":14,"column":10},"action":"insert","lines":["d"]}],[{"start":{"row":14,"column":9},"end":{"row":14,"column":10},"action":"remove","lines":["d"],"id":201},{"start":{"row":14,"column":8},"end":{"row":14,"column":9},"action":"remove","lines":["i"]}],[{"start":{"row":14,"column":8},"end":{"row":14,"column":9},"action":"insert","lines":["d"],"id":202},{"start":{"row":14,"column":9},"end":{"row":14,"column":10},"action":"insert","lines":["i"]},{"start":{"row":14,"column":10},"end":{"row":14,"column":11},"action":"insert","lines":["r"]},{"start":{"row":14,"column":11},"end":{"row":14,"column":12},"action":"insert","lines":["e"]},{"start":{"row":14,"column":12},"end":{"row":14,"column":13},"action":"insert","lines":["c"]},{"start":{"row":14,"column":13},"end":{"row":14,"column":14},"action":"insert","lines":["t"]}],[{"start":{"row":14,"column":14},"end":{"row":14,"column":15},"action":"insert","lines":[" "],"id":203}],[{"start":{"row":14,"column":14},"end":{"row":14,"column":15},"action":"remove","lines":[" "],"id":204}],[{"start":{"row":14,"column":14},"end":{"row":14,"column":15},"action":"insert","lines":["_"],"id":205},{"start":{"row":14,"column":15},"end":{"row":14,"column":16},"action":"insert","lines":["t"]},{"start":{"row":14,"column":16},"end":{"row":14,"column":17},"action":"insert","lines":["o"]}],[{"start":{"row":14,"column":17},"end":{"row":14,"column":18},"action":"insert","lines":[" "],"id":206}],[{"start":{"row":14,"column":18},"end":{"row":14,"column":19},"action":"insert","lines":["m"],"id":207},{"start":{"row":14,"column":19},"end":{"row":14,"column":20},"action":"insert","lines":["e"]},{"start":{"row":14,"column":20},"end":{"row":14,"column":21},"action":"insert","lines":["m"]},{"start":{"row":14,"column":21},"end":{"row":14,"column":22},"action":"insert","lines":["b"]},{"start":{"row":14,"column":22},"end":{"row":14,"column":23},"action":"insert","lines":["e"]},{"start":{"row":14,"column":23},"end":{"row":14,"column":24},"action":"insert","lines":["r"]},{"start":{"row":14,"column":24},"end":{"row":14,"column":25},"action":"insert","lines":["_"]},{"start":{"row":14,"column":25},"end":{"row":14,"column":26},"action":"insert","lines":["i"]}],[{"start":{"row":14,"column":26},"end":{"row":14,"column":27},"action":"insert","lines":["n"],"id":208},{"start":{"row":14,"column":27},"end":{"row":14,"column":28},"action":"insert","lines":["d"]},{"start":{"row":14,"column":28},"end":{"row":14,"column":29},"action":"insert","lines":["e"]},{"start":{"row":14,"column":29},"end":{"row":14,"column":30},"action":"insert","lines":["x"]},{"start":{"row":14,"column":30},"end":{"row":14,"column":31},"action":"insert","lines":["_"]},{"start":{"row":14,"column":31},"end":{"row":14,"column":32},"action":"insert","lines":["p"]},{"start":{"row":14,"column":32},"end":{"row":14,"column":33},"action":"insert","lines":["a"]},{"start":{"row":14,"column":33},"end":{"row":14,"column":34},"action":"insert","lines":["t"]},{"start":{"row":14,"column":34},"end":{"row":14,"column":35},"action":"insert","lines":["r"]},{"start":{"row":14,"column":35},"end":{"row":14,"column":36},"action":"insert","lines":["h"]}],[{"start":{"row":14,"column":35},"end":{"row":14,"column":36},"action":"remove","lines":["h"],"id":209},{"start":{"row":14,"column":34},"end":{"row":14,"column":35},"action":"remove","lines":["r"]}],[{"start":{"row":14,"column":34},"end":{"row":14,"column":35},"action":"insert","lines":["t"],"id":210},{"start":{"row":14,"column":35},"end":{"row":14,"column":36},"action":"insert","lines":["h"]}],[{"start":{"row":14,"column":35},"end":{"row":14,"column":36},"action":"remove","lines":["h"],"id":211},{"start":{"row":14,"column":34},"end":{"row":14,"column":35},"action":"remove","lines":["t"]}],[{"start":{"row":14,"column":34},"end":{"row":14,"column":35},"action":"insert","lines":["h"],"id":212}],[{"start":{"row":14,"column":35},"end":{"row":15,"column":0},"action":"insert","lines":["",""],"id":213},{"start":{"row":15,"column":0},"end":{"row":15,"column":6},"action":"insert","lines":["      "]},{"start":{"row":15,"column":6},"end":{"row":15,"column":7},"action":"insert","lines":["e"]},{"start":{"row":15,"column":7},"end":{"row":15,"column":8},"action":"insert","lines":["n"]},{"start":{"row":15,"column":8},"end":{"row":15,"column":9},"action":"insert","lines":["d"]},{"start":{"row":15,"column":4},"end":{"row":15,"column":6},"action":"remove","lines":["  "]}],[{"start":{"row":16,"column":5},"end":{"row":17,"column":0},"action":"insert","lines":["",""],"id":214},{"start":{"row":17,"column":0},"end":{"row":17,"column":2},"action":"insert","lines":["  "]},{"start":{"row":17,"column":2},"end":{"row":18,"column":0},"action":"insert","lines":["",""]},{"start":{"row":18,"column":0},"end":{"row":18,"column":2},"action":"insert","lines":["  "]},{"start":{"row":18,"column":2},"end":{"row":18,"column":3},"action":"insert","lines":["d"]},{"start":{"row":18,"column":3},"end":{"row":18,"column":4},"action":"insert","lines":["e"]},{"start":{"row":18,"column":4},"end":{"row":18,"column":5},"action":"insert","lines":["f"]}],[{"start":{"row":18,"column":5},"end":{"row":18,"column":6},"action":"insert","lines":[" "],"id":215},{"start":{"row":18,"column":6},"end":{"row":18,"column":7},"action":"insert","lines":["u"]},{"start":{"row":18,"column":7},"end":{"row":18,"column":8},"action":"insert","lines":["p"]},{"start":{"row":18,"column":8},"end":{"row":18,"column":9},"action":"insert","lines":["d"]},{"start":{"row":18,"column":9},"end":{"row":18,"column":10},"action":"insert","lines":["a"]},{"start":{"row":18,"column":10},"end":{"row":18,"column":11},"action":"insert","lines":["t"]},{"start":{"row":18,"column":11},"end":{"row":18,"column":12},"action":"insert","lines":["e"]},{"start":{"row":18,"column":12},"end":{"row":18,"column":13},"action":"insert","lines":["_"]},{"start":{"row":18,"column":13},"end":{"row":18,"column":14},"action":"insert","lines":["a"]},{"start":{"row":18,"column":14},"end":{"row":18,"column":15},"action":"insert","lines":["d"]}],[{"start":{"row":18,"column":15},"end":{"row":19,"column":0},"action":"insert","lines":["",""],"id":216},{"start":{"row":19,"column":0},"end":{"row":19,"column":4},"action":"insert","lines":["    "]},{"start":{"row":19,"column":4},"end":{"row":19,"column":5},"action":"insert","lines":["e"]},{"start":{"row":19,"column":5},"end":{"row":19,"column":6},"action":"insert","lines":["n"]},{"start":{"row":19,"column":6},"end":{"row":19,"column":7},"action":"insert","lines":["d"]},{"start":{"row":19,"column":2},"end":{"row":19,"column":4},"action":"remove","lines":["  "]}],[{"start":{"row":2,"column":2},"end":{"row":2,"column":3},"action":"insert","lines":["l"],"id":217},{"start":{"row":2,"column":3},"end":{"row":2,"column":4},"action":"insert","lines":["a"]},{"start":{"row":2,"column":4},"end":{"row":2,"column":5},"action":"insert","lines":["y"]},{"start":{"row":2,"column":5},"end":{"row":2,"column":6},"action":"insert","lines":["o"]},{"start":{"row":2,"column":6},"end":{"row":2,"column":7},"action":"insert","lines":["u"]},{"start":{"row":2,"column":7},"end":{"row":2,"column":8},"action":"insert","lines":["t"]}],[{"start":{"row":2,"column":8},"end":{"row":2,"column":9},"action":"insert","lines":[" "],"id":218}],[{"start":{"row":2,"column":9},"end":{"row":2,"column":11},"action":"insert","lines":["''"],"id":219}],[{"start":{"row":2,"column":10},"end":{"row":2,"column":11},"action":"insert","lines":["s"],"id":220},{"start":{"row":2,"column":11},"end":{"row":2,"column":12},"action":"insert","lines":["i"]},{"start":{"row":2,"column":12},"end":{"row":2,"column":13},"action":"insert","lines":["t"]},{"start":{"row":2,"column":13},"end":{"row":2,"column":14},"action":"insert","lines":["e"]}],[{"start":{"row":28,"column":94},"end":{"row":29,"column":0},"action":"insert","lines":["",""],"id":221},{"start":{"row":29,"column":0},"end":{"row":29,"column":4},"action":"insert","lines":["    "]},{"start":{"row":29,"column":4},"end":{"row":30,"column":0},"action":"insert","lines":["",""]},{"start":{"row":30,"column":0},"end":{"row":30,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":30,"column":2},"end":{"row":30,"column":4},"action":"remove","lines":["  "],"id":222},{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"remove","lines":["  "]},{"start":{"row":29,"column":4},"end":{"row":30,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":29,"column":4},"end":{"row":29,"column":5},"action":"insert","lines":["e"],"id":223},{"start":{"row":29,"column":5},"end":{"row":29,"column":6},"action":"insert","lines":["n"]},{"start":{"row":29,"column":6},"end":{"row":29,"column":7},"action":"insert","lines":["d"]},{"start":{"row":29,"column":2},"end":{"row":29,"column":4},"action":"remove","lines":["  "]}],[{"start":{"row":0,"column":14},"end":{"row":0,"column":15},"action":"insert","lines":["s"],"id":224}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":0,"column":15},"end":{"row":0,"column":15},"isBackwards":false},"options":{"tabSize":2,"useSoftTabs":true,"guessTabSize":false,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1555454237406}