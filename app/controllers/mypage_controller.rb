class MypageController < ApplicationController

  before_action :authenticate_user!
  # before_action :ensure_current_user, only:[:index]

  def index
    @user = current_user
    # @works_random = Work.where(pick_up: true).order("RANDOM()").limit(3)
    @work_randoms = Work.where(pick_up: true).where(deleted: false).order(created_at: 'desc').limit(3) #このままだと上から３つ固定なのでちょと考える
    @mokus = Moku.where(user_id: current_user.id).where(deleted: false) #カレンダーのために取得

    @annouce = Announcement.all
  end

  #↓current_userにしてはいけない。pick upで成果物の作者を見にくる場合もアクセスされるから。
  def show
    @user = User.find(params[:user_id])
  end

  # edit/updateはaccounts_controllerでの仕事なので以下コメント

  # def edit
  #   @mypage_config = MypageConfig.find_by(user_id: current_user.id)
  #   @user = User.find_by(id: current_user.id)

  # end

  # def update
  #   @user = User.find_by(id: current_user.id)
  #   @mypage_config = MypageConfig.find_by(user_id: current_user.id)
  #   @mypage_config.update(mypage_config_params)

  #   if @mypage_config.save
  #     flash[:notice] = "更新しました！"
  #     redirect_to ("/mypage")
  #   else
  #     render action: :edit
  #   end
  # end

  # private
  # def mypage_config_params
  #   params.require(:mypage_config).permit(:items, :introduce, :public, :user_id)
  # end
end
