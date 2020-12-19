<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">READ BOARD</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" method="post">
					<input type="hidden" name="bno" value="${vo.bno }">
				</form>


				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">Title</label> <input type="text"
							class="form-control" name="title" value="${vo.title }"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Content</label>
						<textarea class="form-control" name="content" rows="3"
							readonly="readonly">${vo.content }</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Writer</label> <input type="text"
							class="form-control" name="writer" readonly="readonly"
							value="${vo.writer }">
					</div>
				</div>
				<!-- /.box-body -->

				<div class="box-footer">
					<button type="submit" class="btn btn-warning">Modify</button>
					<button type="submit" class="btn btn-danger">REMOVE</button>
					<button type="submit" class="btn btn-primary">LIST ALL</button>
				</div>

				<script type="text/javascript">
					$(document).ready(function() {

						var formObj = $("form[role='form']");

						console.log(formObj);

						// 수정
						$(".btn-warning").on("click", function() {
							formObj.attr("action", "/board/modify");
							formObj.attr("method", "get");
							formObj.submit();
						});
						// 삭제 클릭시
						// 이동정보,방식 결정 
						$(".btn-danger").on("click", function() {
							formObj.attr("action", "/board/remove");
							formObj.submit();
						});

						// 목록
						$(".btn-primary").on("click", function() {
							self.location = "/board/listAll";
						});

					});
				</script>

			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@include file="../include/footer.jsp"%>
