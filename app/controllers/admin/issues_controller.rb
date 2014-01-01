module Admin
  class IssuesController < ApplicationController
    # GET /issues/1/edit
    def index
      @issues = Issue.all
    end

    def edit
      @issue = Issue.find(params[:id])
    end

    def show
      @issue = Issue.find(params[:id])
    end

    # PATCH/PUT /issues/1
    # PATCH/PUT /issues/1.json
    def update
      @issue = Issue.find(params[:id])
      if @issue.update(issue_params)
        redirect_to @issue, notice: 'Issue was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /issues/1
    # DELETE /issues/1.json
    def destroy
      @issue.destroy
      respond_to do |format|
        format.html { redirect_to issues_url }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_issue
        @issue = Issue.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def issue_params
        params.require(:issue).permit(:title, :description, :is_reproducible, :category, :severity)
      end

  end
end
