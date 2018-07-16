<p class="lead">Shop Name</p>
	<div class="list-group">
		<c:forEach items="${categories}" var="category">
			<a href="${contextRoot}/show/category/${category.categoryId}/products" 
			class="list-group-item" id="a_${category.categoryName}">${category.categoryName}</a>
		</c:forEach>

	</div>