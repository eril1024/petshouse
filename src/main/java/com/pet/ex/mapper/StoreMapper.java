package com.pet.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pet.ex.vo.BoardVO;
import com.pet.ex.vo.GoodsVO;
import com.pet.ex.vo.StockVO;

@Mapper
public interface StoreMapper {

	public StockVO getStock2(int stock_id);

	public GoodsVO getGoods2(int goods_id);
	
	public List<BoardVO> getStorerate();

	public List<BoardVO> getGoodsinfo();
	
	public List<BoardVO> getBestrate(int category_id);

}
