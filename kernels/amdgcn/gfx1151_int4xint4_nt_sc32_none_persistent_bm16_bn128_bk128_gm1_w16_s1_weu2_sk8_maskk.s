	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 251 0                         ; generate_amdgcn.py:251:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:260:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 15
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_lshr_b32 s6, s6, 28
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s33, s4, 4
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s34, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 262 17 is_stmt 1              ; generate_amdgcn.py:262:17
	s_mul_i32 s40, s34, s33
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cmp_ge_i32 s2, s40
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 276 36 is_stmt 1              ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v2, 4, v0
	v_lshlrev_b32_e32 v10, 4, v0
	v_lshlrev_b32_e32 v3, 2, v0
	v_bfe_i32 v11, v0, 3, 1
	v_bfe_i32 v12, v0, 5, 1
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshlrev_b32_e32 v13, 1, v2
	v_and_b32_e32 v2, 0x70, v10
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_and_b32_e32 v4, 0x180, v0
	v_bfe_i32 v9, v0, 7, 1
	v_bfe_u32 v6, v0, 4, 4
	v_and_b32_e32 v7, 15, v0
	v_and_or_b32 v15, 0x88, v11, v2
	v_and_b32_e32 v2, 0x77c, v3
	v_and_b32_e32 v11, 0x88, v12
	v_lshrrev_b32_e32 v4, 5, v4
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshrrev_b32_e32 v8, 2, v0
	v_and_b32_e32 v1, 0x7f, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:301:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s12, 31
.Ltmp12:
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_lshr_b32 s13, s12, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_add_i32 s12, s12, s13
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_lshr_b32 s1, s1, 27
.Ltmp16:
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_ashr_i32 s41, s12, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_add_i32 s1, s0, s1
	v_xor_b32_e32 v17, v11, v2
	s_ashr_i32 s42, s1, 5
	s_cmp_gt_i32 s0, 31
	v_lshlrev_b32_e32 v2, 1, v0
	s_cselect_b32 s0, -1, 0
	s_and_b32 s25, s5, 0xffff
	s_abs_i32 s5, s34
.Ltmp18:
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v5, 7, v0
	s_cvt_f32_u32 s1, s5
	v_and_b32_e32 v2, 60, v2
	v_and_b32_e32 v9, 0x88, v9
	v_and_b32_e32 v10, 0x7c, v3
	v_rcp_iflag_f32_e32 v11, s1
	v_lshlrev_b32_e32 v0, 6, v0
	v_and_or_b32 v2, 0x780, v3, v2
	s_mov_b32 s24, s4
	s_sub_i32 s4, 0, s5
	v_xor_b32_e32 v14, v9, v1
	v_lshl_or_b32 v9, v7, 9, v10
	v_xor_b32_e32 v2, v2, v4
	v_xor_b32_e32 v16, 8, v15
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_and_b32_e32 v12, 2, v13
	v_readfirstlane_b32 s1, v11
	v_xor_b32_e32 v18, 4, v9
	v_and_or_b32 v10, v0, 64, v2
	v_mad_u64_u32 v[0:1], null, s35, v5, v[1:2]
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_xor_b32_e32 v19, 8, v9
	v_xor_b32_e32 v20, 12, v9
	v_xor_b32_e32 v21, 16, v9
	s_cvt_u32_f32 s1, s1
	v_xor_b32_e32 v22, 20, v9
	v_xor_b32_e32 v23, 24, v9
	v_xor_b32_e32 v24, 28, v9
	s_mul_i32 s4, s4, s1
	v_xor_b32_e32 v25, 32, v9
	s_mul_hi_u32 s4, s1, s4
	v_xor_b32_e32 v4, 36, v9
	s_add_i32 s45, s1, s4
	s_lshl_b32 s1, s3, 4
	v_xor_b32_e32 v27, 40, v9
	v_xor_b32_e32 v28, 44, v9
	v_xor_b32_e32 v29, 48, v9
	v_xor_b32_e32 v30, 52, v9
	v_xor_b32_e32 v31, 56, v9
	v_xor_b32_e32 v32, 60, v9
	v_xor_b32_e32 v33, 0x810, v10
	v_xor_b32_e32 v34, 0x1020, v10
	v_xor_b32_e32 v35, 0x1830, v10
	v_cndmask_b32_e64 v5, 0, 1, s0
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_and_or_b32 v1, v3, 12, s1
	v_or_b32_e32 v2, s1, v7
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_or_b32_e32 v11, 0xfc, v13
	v_or_b32_e32 v13, 0x7c, v13
	v_cmp_ne_u32_e64 s0, 1, v5
	v_cmp_gt_i32_e64 s1, 16, v1
	v_cmp_gt_i32_e64 s3, 16, v2
	v_add_nc_u32_e32 v14, 0, v14
	v_add_nc_u32_e32 v15, 0, v15
	v_add_nc_u32_e32 v16, 0, v16
	v_add_nc_u32_e32 v17, 0, v17
	v_add_nc_u32_e32 v18, 0, v18
	v_add_nc_u32_e32 v19, 0, v19
	v_add_nc_u32_e32 v20, 0, v20
	v_add_nc_u32_e32 v21, 0, v21
	v_add_nc_u32_e32 v22, 0, v22
	v_add_nc_u32_e32 v23, 0, v23
	v_add_nc_u32_e32 v24, 0, v24
	v_add_nc_u32_e32 v25, 0, v25
	v_add_nc_u32_e32 v26, 0, v4
	v_add_nc_u32_e32 v27, 0, v27
	v_add_nc_u32_e32 v28, 0, v28
	v_add_nc_u32_e32 v29, 0, v29
	v_add_nc_u32_e32 v30, 0, v30
	v_add_nc_u32_e32 v31, 0, v31
	v_add_nc_u32_e32 v32, 0, v32
	v_add_nc_u32_e32 v33, 0, v33
	v_add_nc_u32_e32 v34, 0, v34
	v_add_nc_u32_e32 v35, 0, v35
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s29, s7, 0xffff
	s_mov_b32 s28, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_lshl_b32 s6, s35, 2
	s_lshl_b32 s7, s35, 3
	s_mul_i32 s43, s35, 12
	s_and_b32 s21, s21, 0xffff
	s_ashr_i32 s44, s34, 31
	s_mov_b32 s12, 0
	s_lshl_b32 s46, s35, 1
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_lshl_b32 s47, s42, 1
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_add_nc_u32_e32 v3, 0, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	s_lshl_b32 s4, s48, 7
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_mul_i32 s49, s49, s35
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	ds_store_2addr_b32 v3, v90, v98 offset1:32
	ds_store_2addr_b32 v3, v91, v66 offset0:64 offset1:96
	ds_store_2addr_b32 v18, v97, v96 offset1:32
	ds_store_2addr_b32 v18, v83, v65 offset0:64 offset1:96
	ds_store_2addr_b32 v19, v95, v94 offset1:32
	ds_store_2addr_b32 v19, v72, v62 offset0:64 offset1:96
	ds_store_2addr_b32 v20, v93, v92 offset1:32
	ds_store_2addr_b32 v20, v63, v60 offset0:64 offset1:96
	ds_store_2addr_b32 v21, v89, v88 offset1:32
	ds_store_2addr_b32 v21, v61, v57 offset0:64 offset1:96
	ds_store_2addr_b32 v22, v87, v86 offset1:32
	ds_store_2addr_b32 v22, v58, v54 offset0:64 offset1:96
	ds_store_2addr_b32 v23, v85, v84 offset1:32
	ds_store_2addr_b32 v23, v56, v52 offset0:64 offset1:96
	ds_store_2addr_b32 v24, v82, v81 offset1:32
	ds_store_2addr_b32 v24, v53, v50 offset0:64 offset1:96
	ds_store_2addr_b32 v25, v80, v79 offset1:32
	ds_store_2addr_b32 v25, v51, v47 offset0:64 offset1:96
	ds_store_2addr_b32 v26, v78, v77 offset1:32
	ds_store_2addr_b32 v26, v49, v45 offset0:64 offset1:96
	ds_store_2addr_b32 v27, v76, v75 offset1:32
	ds_store_2addr_b32 v27, v48, v43 offset0:64 offset1:96
	ds_store_2addr_b32 v28, v74, v73 offset1:32
	ds_store_2addr_b32 v28, v46, v40 offset0:64 offset1:96
	ds_store_2addr_b32 v29, v71, v70 offset1:32
	ds_store_2addr_b32 v29, v44, v39 offset0:64 offset1:96
	ds_store_2addr_b32 v30, v69, v67 offset1:32
	ds_store_2addr_b32 v30, v42, v38 offset0:64 offset1:96
	ds_store_2addr_b32 v31, v68, v64 offset1:32
	ds_store_2addr_b32 v31, v41, v36 offset0:64 offset1:96
	v_add_nc_u32_e32 v3, 0, v10
	ds_store_2addr_b32 v32, v59, v55 offset1:32
	ds_store_2addr_b32 v32, v37, v5 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v3, v3
	ds_load_b32 v4, v33
	ds_load_b32 v5, v34
	ds_load_b32 v36, v35
	v_add3_u32 v37, s49, s4, v0
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s2, s40
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_lshlrev_b32_e32 v38, 2, v37
	v_add_lshl_u32 v39, v37, s6, 2
	v_add_lshl_u32 v40, v37, s7, 2
	v_add_lshl_u32 v37, v37, s43, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v3, v38, s[20:23], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v4, v39, s[20:23], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v5, v40, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v36, v37, s[20:23], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s4, s2
	s_ashr_i32 s10, s2, 31
	s_mul_hi_u32 s11, s4, s45
	s_xor_b32 s10, s10, s44
	s_mul_i32 s13, s11, s5
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v36, 0
	s_sub_i32 s4, s4, s13
	s_add_i32 s13, s11, 1
	s_sub_i32 s14, s4, s5
	s_cmp_ge_u32 s4, s5
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	s_cselect_b32 s11, s13, s11
	s_cselect_b32 s4, s14, s4
	s_add_i32 s13, s11, 1
	s_cmp_ge_u32 s4, s5
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	s_cselect_b32 s4, s13, s11
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	s_xor_b32 s4, s4, s10
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	s_sub_i32 s11, s4, s10
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	.loc	1 273 35                        ; generate_amdgcn.py:273:35
	s_sub_i32 s4, s33, s11
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_mul_i32 s15, s11, s34
	.loc	1 273 24                        ; generate_amdgcn.py:273:24
	s_min_i32 s13, s4, 1
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_sub_i32 s15, s2, s15
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s4, s13
	s_abs_i32 s16, s15
	s_cvt_f32_u32 s10, s4
	s_sub_i32 s14, 0, s4
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v3, s10
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v53, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s10, v3
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v63, 0
	s_mul_f32 s10, s10, 0x4f7ffffe
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v91, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s10, s10
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	s_mul_i32 s14, s14, s10
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v84, 0
	s_mul_hi_u32 s14, s10, s14
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v86, 0
	s_add_i32 s10, s10, s14
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v88, 0
	s_mul_hi_u32 s14, s16, s10
	s_xor_b32 s10, s15, s13
	s_mul_i32 s17, s14, s4
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s16, s16, s17
	s_add_i32 s17, s14, 1
	s_sub_i32 s18, s16, s4
	s_cmp_ge_u32 s16, s4
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v92, 0
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s4
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v94, 0
	s_cselect_b32 s4, s17, s14
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v59, 0
	s_xor_b32 s4, s4, s10
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v69, 0
	s_sub_i32 s48, s4, s10
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	.loc	1 274 32                        ; generate_amdgcn.py:274:32
	s_mul_i32 s13, s48, s13
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v85, 0
	s_sub_i32 s13, s15, s13
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v90, 0
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_add_i32 s13, s13, s11
	.loc	1 307 13 is_stmt 1              ; generate_amdgcn.py:307:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 276 18                        ; generate_amdgcn.py:276:18
	s_lshl_b32 s49, s13, 4
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v3, s4, 7, v8
	s_lshl_b32 s11, s10, 8
	s_lshl_b32 s10, s10, 7
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v4, s49, v7
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v5, s49, v6
	v_subrev_nc_u32_e32 v36, s10, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v102, s47, v4
	v_subrev_nc_u32_e32 v99, s11, v11
	v_mad_u64_u32 v[3:4], null, s41, v5, v[2:3]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[4:5], null, s41, v36, v[1:2]
	v_subrev_nc_u32_e32 v100, s11, v12
	v_subrev_nc_u32_e32 v101, s11, v13
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v5, 0
	s_lshl_b32 s50, s4, 8
	s_mov_b32 s51, 0
	s_mov_b32 s52, s42
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 314 31                        ; generate_amdgcn.py:314:31
	v_add_nc_u32_e32 v105, s51, v2
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_dual_mov_b32 v141, s19 :: v_dual_add_nc_u32 v104, s51, v1
	v_mov_b32_e32 v140, s18
	v_dual_mov_b32 v139, s17 :: v_dual_add_nc_u32 v106, s51, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 314 31                        ; generate_amdgcn.py:314:31
	v_cmp_gt_i32_e32 vcc_lo, s41, v105
	v_cmp_gt_i32_e64 s4, s41, v104
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_dual_mov_b32 v138, s16 :: v_dual_add_nc_u32 v107, s51, v4
	.loc	1 323 30                        ; generate_amdgcn.py:323:30
	s_mov_b32 s30, s26
	.loc	1 314 30                        ; generate_amdgcn.py:314:30
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s4, s4, s1
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	v_cndmask_b32_e32 v104, 0x80000000, v106, vcc_lo
	.loc	1 323 30                        ; generate_amdgcn.py:323:30
	v_cndmask_b32_e64 v105, 0x80000000, v107, s4
	s_mov_b32 s31, s27
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	buffer_load_u8 v104, v104, s[24:27], 0 offen
	.loc	1 323 30                        ; generate_amdgcn.py:323:30
	buffer_load_b32 v105, v105, s[28:31], 0 offen
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_dual_mov_b32 v136, s14 :: v_dual_add_nc_u32 v103, s50, v100
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_dual_mov_b32 v134, s12 :: v_dual_add_nc_u32 v181, s50, v101
	v_dual_mov_b32 v137, s15 :: v_dual_add_nc_u32 v142, s50, v99
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_add_i32 s52, s52, -1
	s_add_i32 s51, s51, 16
	s_cmp_lg_u32 s52, 0
	v_add_nc_u32_e32 v101, s46, v101
	v_add_nc_u32_e32 v100, s46, v100
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	s_waitcnt vmcnt(1)
	ds_store_b8 v14, v104
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[132:133], v15
	ds_load_b64 v[179:180], v16
	.loc	1 323 30                        ; generate_amdgcn.py:323:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v17, v105
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[118:121], v15 offset1:32
	ds_load_2addr_b64 v[128:131], v15 offset0:64 offset1:96
	ds_load_2addr_b64 v[165:168], v15 offset0:128 offset1:160
	ds_load_2addr_b64 v[175:178], v15 offset0:192 offset1:224
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	buffer_load_u16 v182, v102, s[8:11], 0 offen
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v183, v103, s[36:39], 0 offen
	buffer_load_u16 v184, v103, s[36:39], 0 offen offset:4
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_mov_b32_e32 v135, s13
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[118:119], v[132:133], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[132:133], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[128:129], v[132:133], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[143:150], v[130:131], v[132:133], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[151:158], v[165:166], v[132:133], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[167:168], v[132:133], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[167:174], v[175:176], v[132:133], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[177:178], v[132:133], v[134:141] neg_lo:[1,1,0]
	.loc	1 323 30                        ; generate_amdgcn.py:323:30
	ds_load_2addr_b64 v[128:131], v16 offset1:32
	ds_load_2addr_b64 v[175:178], v16 offset0:64 offset1:96
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[128:129], v[179:180], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[130:131], v[179:180], v[112:119] neg_lo:[1,1,0]
	.loc	1 323 30                        ; generate_amdgcn.py:323:30
	ds_load_2addr_b64 v[128:131], v16 offset0:128 offset1:160
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[175:176], v[179:180], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[143:150], v[177:178], v[179:180], v[143:150] neg_lo:[1,1,0]
	.loc	1 323 30                        ; generate_amdgcn.py:323:30
	ds_load_2addr_b64 v[175:178], v16 offset0:192 offset1:224
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_cvt_f32_i32_e32 v185, v110
	v_cvt_f32_i32_e32 v186, v111
	v_cvt_f32_i32_e32 v187, v112
	v_cvt_f32_i32_e32 v203, v143
	v_cvt_f32_i32_e32 v188, v113
	v_cvt_f32_i32_e32 v189, v114
	v_cvt_f32_i32_e32 v190, v115
	v_cvt_f32_i32_e32 v192, v117
	v_cvt_f32_i32_e32 v191, v116
	v_cvt_f32_i32_e32 v193, v118
	v_cvt_f32_i32_e32 v197, v122
	v_cvt_f32_i32_e32 v198, v123
	v_cvt_f32_i32_e32 v199, v124
	v_cvt_f32_i32_e32 v194, v119
	v_cvt_f32_i32_e32 v195, v120
	v_cvt_f32_i32_e32 v196, v121
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[151:158], v[128:129], v[179:180], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[130:131], v[179:180], v[159:166] neg_lo:[1,1,0]
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_cvt_f32_i32_e32 v202, v127
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[167:174], v[175:176], v[179:180], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[177:178], v[179:180], v[134:141] neg_lo:[1,1,0]
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_cvt_f32_i32_e32 v175, v104
	v_cvt_f32_i32_e32 v176, v105
	v_cvt_f32_i32_e32 v177, v106
	v_cvt_f32_i32_e32 v178, v107
	v_cvt_f32_i32_e32 v179, v108
	v_cvt_f32_i32_e32 v180, v109
	v_cvt_f32_i32_e32 v104, v145
	v_cvt_f32_i32_e32 v105, v146
	v_cvt_f32_i32_e32 v106, v147
	v_cvt_f32_i32_e32 v107, v148
	v_cvt_f32_i32_e32 v108, v149
	v_cvt_f32_i32_e32 v109, v150
	v_cvt_f32_i32_e32 v110, v151
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x6
	buffer_load_u16 v145, v103, s[36:39], 0 offen offset:8
	buffer_load_u16 v146, v103, s[36:39], 0 offen offset:12
	buffer_load_u16 v147, v103, s[36:39], 0 offen offset:16
	buffer_load_u16 v148, v103, s[36:39], 0 offen offset:20
	buffer_load_u16 v149, v103, s[36:39], 0 offen offset:24
	buffer_load_u16 v150, v103, s[36:39], 0 offen offset:28
	buffer_load_u16 v151, v103, s[36:39], 0 offen offset:32
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_cvt_f32_i32_e32 v111, v152
	v_cvt_f32_i32_e32 v112, v153
	v_cvt_f32_i32_e32 v113, v154
	v_cvt_f32_i32_e32 v114, v155
	v_cvt_f32_i32_e32 v115, v156
	v_cvt_f32_i32_e32 v117, v158
	v_cvt_f32_i32_e32 v116, v157
	v_cvt_f32_i32_e32 v118, v159
	v_cvt_f32_i32_e32 v122, v163
	v_cvt_f32_i32_e32 v123, v164
	v_cvt_f32_i32_e32 v124, v165
	v_cvt_f32_i32_e32 v119, v160
	v_cvt_f32_i32_e32 v120, v161
	v_cvt_f32_i32_e32 v121, v162
	v_cvt_f32_i32_e32 v127, v168
	v_cvt_f32_i32_e32 v201, v126
	v_cvt_f32_i32_e32 v126, v167
	v_cvt_f32_i32_e32 v129, v170
	v_cvt_f32_i32_e32 v132, v173
	v_cvt_f32_i32_e32 v133, v174
	v_cvt_f32_i32_e32 v130, v171
	v_cvt_f32_i32_e32 v131, v172
	v_cvt_f32_i32_e32 v128, v169
	v_cvt_f32_i32_e32 v200, v125
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v125, v166
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v152, 16, v183
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	v_lshlrev_b32_e32 v143, 16, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v153, v175, v143
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v90, v153, v152
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v155, v176, v143 :: v_dual_lshlrev_b32 v154, 16, v184
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v152, v103, s[36:39], 0 offen offset:36
	buffer_load_u16 v153, v103, s[36:39], 0 offen offset:40
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v156, v177, v143
	v_mul_f32_e32 v158, v179, v143
	v_mul_f32_e32 v157, v178, v143
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v97, v155, v154
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v154, v103, s[36:39], 0 offen offset:44
	buffer_load_u16 v155, v103, s[36:39], 0 offen offset:48
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v159, v180, v143
	v_mul_f32_e32 v163, v188, v143
	v_mul_f32_e32 v164, v189, v143
	v_mul_f32_e32 v160, v185, v143
	v_mul_f32_e32 v162, v187, v143
	v_mul_f32_e32 v168, v192, v143
	v_mul_f32_e32 v170, v194, v143
	v_mul_f32_e32 v172, v196, v143
	v_mul_f32_e32 v144, v144, v143
	v_mul_f32_e32 v108, v108, v143
	v_mul_f32_e32 v111, v111, v143
	v_dual_mul_f32 v109, v109, v143 :: v_dual_add_nc_u32 v102, 2, v102
	v_mul_f32_e32 v105, v105, v143
	v_mul_f32_e32 v104, v104, v143
	v_mul_f32_e32 v106, v106, v143
	v_mul_f32_e32 v107, v107, v143
	v_mul_f32_e32 v113, v113, v143
	v_mul_f32_e32 v115, v115, v143
	v_mul_f32_e32 v117, v117, v143
	v_mul_f32_e32 v121, v121, v143
	v_mul_f32_e32 v123, v123, v143
	v_mul_f32_e32 v179, v203, v143
	v_mul_f32_e32 v129, v129, v143
	v_mul_f32_e32 v131, v131, v143
	v_mul_f32_e32 v112, v112, v143
	v_mul_f32_e32 v116, v116, v143
	v_mul_f32_e32 v125, v125, v143
	v_mul_f32_e32 v133, v133, v143
	v_mul_f32_e32 v135, v135, v143
	v_mul_f32_e32 v118, v118, v143
	v_mul_f32_e32 v119, v119, v143
	v_mul_f32_e32 v110, v110, v143
	v_mul_f32_e32 v120, v120, v143
	v_mul_f32_e32 v137, v137, v143
	v_mul_f32_e32 v139, v139, v143
	v_mul_f32_e32 v141, v141, v143
	v_mul_f32_e32 v127, v127, v143
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v114, v114, v143 :: v_dual_lshlrev_b32 v145, 16, v145
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v95, v156, v145 :: v_dual_lshlrev_b32 v148, 16, v148
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v145, v103, s[36:39], 0 offen offset:52
	buffer_load_u16 v156, v103, s[36:39], 0 offen offset:56
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v165, v190, v143
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v93, v157, v146
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v146, v103, s[36:39], 0 offen offset:60
	buffer_load_u16 v157, v103, s[36:39], 0 offen offset:64
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v87, v159, v148 :: v_dual_lshlrev_b32 v150, 16, v150
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v148, v103, s[36:39], 0 offen offset:76
	buffer_load_u16 v159, v103, s[36:39], 0 offen offset:80
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v167, v191, v143
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v173, v197, v143 :: v_dual_lshlrev_b32 v152, 16, v152
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v153, 16, v153
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v161, v186, v143 :: v_dual_lshlrev_b32 v154, 16, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v76, v164, v153 :: v_dual_lshlrev_b32 v147, 16, v147
	v_fmac_f32_e32 v82, v161, v150
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_clause 0x3
	buffer_load_u16 v150, v103, s[36:39], 0 offen offset:92
	buffer_load_u16 v161, v103, s[36:39], 0 offen offset:96
	buffer_load_u16 v153, v103, s[36:39], 0 offen offset:116
	buffer_load_u16 v164, v103, s[36:39], 0 offen offset:120
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v177, v201, v143
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v89, v158, v147
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v147, v103, s[36:39], 0 offen offset:68
	buffer_load_u16 v158, v103, s[36:39], 0 offen offset:72
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v176, v200, v143
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v78, v163, v152
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v152, v103, s[36:39], 0 offen offset:108
	buffer_load_u16 v163, v103, s[36:39], 0 offen offset:112
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v74, v165, v154 :: v_dual_lshlrev_b32 v151, 16, v151
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	v_lshlrev_b32_e32 v149, 16, v149
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v69, v168, v145
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v145, v103, s[36:39], 0 offen offset:144
	buffer_load_u16 v168, v103, s[36:39], 0 offen offset:148
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v80, v162, v151
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v151, v103, s[36:39], 0 offen offset:100
	buffer_load_u16 v162, v103, s[36:39], 0 offen offset:104
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v85, v160, v149
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v149, v103, s[36:39], 0 offen offset:84
	buffer_load_u16 v160, v103, s[36:39], 0 offen offset:88
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v146, 16, v146
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v174, v198, v143
	v_mul_f32_e32 v171, v195, v143
	v_mul_f32_e32 v175, v199, v143
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v59, v170, v146
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_clause 0x4
	buffer_load_u16 v154, v103, s[36:39], 0 offen offset:128
	buffer_load_u16 v165, v181, s[36:39], 0 offen
	buffer_load_u16 v166, v103, s[36:39], 0 offen offset:132
	buffer_load_u16 v146, v103, s[36:39], 0 offen offset:160
	buffer_load_u16 v170, v103, s[36:39], 0 offen offset:164
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v150, 16, v150
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v178, v202, v143 :: v_dual_lshlrev_b32 v161, 16, v161
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v153, 16, v153
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	s_waitcnt vmcnt(13)
	v_dual_fmac_f32 v79, v179, v161 :: v_dual_lshlrev_b32 v158, 16, v158
	v_fmac_f32_e32 v81, v178, v150
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x3
	buffer_load_u16 v150, v103, s[36:39], 0 offen offset:224
	buffer_load_u16 v178, v103, s[36:39], 0 offen offset:228
	buffer_load_u16 v161, v103, s[36:39], 0 offen offset:232
	buffer_load_u16 v179, v103, s[36:39], 0 offen offset:236
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v94, v173, v158
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v158, v103, s[36:39], 0 offen offset:184
	buffer_load_u16 v173, v103, s[36:39], 0 offen offset:188
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v64, v108, v164
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v152, 16, v152
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_dual_mul_f32 v124, v124, v143 :: v_dual_fmac_f32 v67, v107, v153
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v73, v105, v152
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v168, 16, v168
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v149, 16, v149
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v92, v174, v148 :: v_dual_lshlrev_b32 v147, 16, v147
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v86, v176, v149 :: v_dual_lshlrev_b32 v159, 16, v159
	v_fmac_f32_e32 v96, v172, v147
	.loc	1 329 24 is_stmt 0              ; generate_amdgcn.py:329:24
	v_dual_mul_f32 v169, v193, v143 :: v_dual_fmac_f32 v98, v171, v157
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v84, v177, v160 :: v_dual_lshlrev_b32 v155, 16, v155
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v157, v103, s[36:39], 0 offen offset:168
	buffer_load_u16 v171, v103, s[36:39], 0 offen offset:172
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v68, v169, v156
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v156, v103, s[36:39], 0 offen offset:152
	buffer_load_u16 v169, v103, s[36:39], 0 offen offset:156
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v71, v167, v155
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x5
	buffer_load_u16 v155, v103, s[36:39], 0 offen offset:136
	buffer_load_u16 v167, v103, s[36:39], 0 offen offset:140
	buffer_load_u16 v147, v103, s[36:39], 0 offen offset:176
	buffer_load_u16 v172, v103, s[36:39], 0 offen offset:180
	buffer_load_u16 v148, v103, s[36:39], 0 offen offset:192
	buffer_load_u16 v174, v103, s[36:39], 0 offen offset:196
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v88, v175, v159
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x5
	buffer_load_u16 v159, v103, s[36:39], 0 offen offset:200
	buffer_load_u16 v175, v103, s[36:39], 0 offen offset:204
	buffer_load_u16 v149, v103, s[36:39], 0 offen offset:208
	buffer_load_u16 v176, v103, s[36:39], 0 offen offset:212
	buffer_load_u16 v160, v103, s[36:39], 0 offen offset:216
	buffer_load_u16 v177, v103, s[36:39], 0 offen offset:220
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v77, v144, v151
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x3
	buffer_load_u16 v144, v103, s[36:39], 0 offen offset:240
	buffer_load_u16 v151, v103, s[36:39], 0 offen offset:244
	buffer_load_u16 v103, v103, s[36:39], 0 offen offset:248
	buffer_load_u16 v142, v142, s[36:39], 0 offen
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v165, 16, v165
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v166, 16, v166
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v146, 16, v146
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v170, 16, v170
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_dual_mul_f32 v122, v122, v143 :: v_dual_fmac_f32 v75, v104, v162
	v_dual_mul_f32 v126, v126, v143 :: v_dual_fmac_f32 v55, v109, v165
	v_dual_mul_f32 v128, v128, v143 :: v_dual_fmac_f32 v91, v110, v154
	v_dual_mul_f32 v130, v130, v143 :: v_dual_fmac_f32 v83, v111, v166
	v_dual_mul_f32 v132, v132, v143 :: v_dual_fmac_f32 v61, v114, v145
	v_dual_mul_f32 v136, v136, v143 :: v_dual_fmac_f32 v51, v118, v146
	v_dual_mul_f32 v138, v138, v143 :: v_dual_fmac_f32 v49, v119, v170
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v58, v115, v168 :: v_dual_add_nc_u32 v99, s46, v99
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v150, 16, v150
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v173, 16, v173
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_dual_mul_f32 v140, v140, v143 :: v_dual_fmac_f32 v45, v135, v178
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v41, v124, v158
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v37, v125, v173
	v_fmac_f32_e32 v43, v136, v161
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v156, 16, v156
	v_lshlrev_b32_e32 v163, 16, v163
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v48, v120, v157 :: v_dual_lshlrev_b32 v155, 16, v155
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	v_lshlrev_b32_e32 v169, 16, v169
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v172, 16, v172
	v_lshlrev_b32_e32 v167, 16, v167
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v148, 16, v148
	v_lshlrev_b32_e32 v171, 16, v171
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v174, 16, v174
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v149, 16, v149
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v176, 16, v176
	v_lshlrev_b32_e32 v147, 16, v147
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v160, 16, v160
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v177, 16, v177
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v103, 16, v103
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v142, 16, v142
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_dual_mul_f32 v134, v134, v143 :: v_dual_fmac_f32 v53, v117, v169
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v72, v112, v155 :: v_dual_fmac_f32 v65, v127, v174
	v_fmac_f32_e32 v56, v116, v156
	v_fmac_f32_e32 v70, v106, v163
	v_dual_fmac_f32 v42, v123, v172 :: v_dual_fmac_f32 v63, v113, v167
	v_fmac_f32_e32 v66, v126, v148
	v_dual_fmac_f32 v46, v121, v171 :: v_dual_fmac_f32 v57, v130, v149
	v_fmac_f32_e32 v54, v131, v176
	v_fmac_f32_e32 v44, v122, v147
	v_fmac_f32_e32 v52, v132, v160
	v_dual_fmac_f32 v62, v128, v159 :: v_dual_fmac_f32 v47, v134, v150
	v_fmac_f32_e32 v50, v133, v177
	v_fmac_f32_e32 v60, v129, v175
	v_dual_fmac_f32 v40, v137, v179 :: v_dual_fmac_f32 v39, v138, v144
	v_dual_fmac_f32 v38, v139, v151 :: v_dual_fmac_f32 v5, v141, v142
	v_fmac_f32_e32 v36, v140, v103
	.loc	1 307 13 is_stmt 1              ; generate_amdgcn.py:307:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge7
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 204
		.amdhsa_next_free_sgpr 53
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 34
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_vgpr, 204
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4336
; TotalNumSgprs: 55
; NumVgprs: 204
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 204
; Occupancy: 7
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	260                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	261                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	301                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     204
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
