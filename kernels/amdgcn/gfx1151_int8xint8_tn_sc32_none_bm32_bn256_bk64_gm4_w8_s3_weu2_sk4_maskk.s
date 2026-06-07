	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s28, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s30, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s4, s2, s5
	v_or_b32_e32 v59, s30, v0
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s28, 0xff
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s2, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_lshl_b32 s6, s25, 4
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	v_or_b32_e32 v1, s30, v0
	v_mov_b32_e32 v60, s6
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 14 is_stmt 0                ; generate_amdgcn.py:0:14
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr60
.LBB0_3:                                ; %Flow495
	s_load_b64 s[26:27], s[0:1], 0x20
	v_dual_mov_b32 v27, 0 :: v_dual_lshlrev_b32 v58, 2, v0
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v57, 0xf0, v0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s29, s4, 5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v60, 3, v0
	v_lshrrev_b32_e32 v61, 4, v57
	s_mov_b32 s4, 0
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v2, 28, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v3, s24, v60
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_mul_lo_u32 v4, s25, v61
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s2, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s28, 31
.Ltmp16:
	.loc	1 312 26 is_stmt 1              ; generate_amdgcn.py:312:26
	s_lshl_b32 s31, s3, 6
	v_add3_u32 v63, v3, v2, s29
	v_lshrrev_b32_e32 v2, 1, v0
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 24
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s3, s1, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s2, s2, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s3, 27
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s20, s10
	s_mov_b32 s21, s11
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
.Ltmp21:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v0
	v_lshrrev_b32_e32 v6, 6, v0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v3, s29, v1
	v_lshl_add_u32 v64, v1, 4, v4
	v_and_or_b32 v2, 0x70, v2, v1
	v_add_nc_u32_e32 v66, 0, v1
	s_ashr_i32 s34, s1, 5
	v_or_b32_e32 v1, 16, v3
	v_mul_lo_u32 v68, v3, s34
	v_add_nc_u32_e32 v67, 0, v2
	v_and_b32_e32 v2, 2, v6
	v_dual_mov_b32 v26, 0 :: v_dual_lshlrev_b32 v3, 1, v57
	v_mul_lo_u32 v69, v1, s34
	v_lshlrev_b32_e32 v1, 5, v0
	v_and_b32_e32 v6, 0x1c0, v58
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v2, 0, v2
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v70, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v48, 0 :: v_dual_and_b32 v1, 32, v1
	v_lshlrev_b32_e32 v4, 4, v0
	v_or_b32_e32 v5, 0x3f0, v0
	v_dual_mov_b32 v44, 0 :: v_dual_and_b32 v9, 28, v7
	v_add3_u32 v10, v2, v6, v1
	v_add3_u32 v11, v70, v3, v1
	s_lshl_b32 s35, s25, 4
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v73, 0, v4
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v74, 0, v5
	v_mov_b32_e32 v1, s4
.Ltmp23:
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v62, 16, v61
	v_dual_mov_b32 v4, s7 :: v_dual_add_nc_u32 v65, s35, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_lshl_add_u32 v71, s24, 5, v63
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v72, 0, v58
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v75, v10, v9
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v76, v11, v9
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s33, s2, 8
	s_lshl_b32 s36, s25, 5
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
.Ltmp25:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s6, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s6, s6, s31
	v_or_b32_e32 v9, s6, v60
	v_or_b32_e32 v10, s6, v61
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s1, s6, s25
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v11, s6, v62
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_mul_i32 s0, s6, s24
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_or_b32 s5, s6, 32
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s1, s1, s30
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add_nc_u32_e32 v12, s0, v63
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v14, s5, v61
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v9
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v13, s5, v60
	v_add_nc_u32_e32 v16, s0, v71
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v17, s1, v64
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s0, s28, v10
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v18, s1, v65
	s_add_i32 s2, s1, s36
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s1, s28, v11
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v9, s2, v64
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v14
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v15, s5, v62
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s3, s28, v13
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v13, 0x80000000, v17, s0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s6, 5
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v14, 0x80000000, v18, s1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s25
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s34
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v79, v68, s0, 1
	v_add_lshl_u32 v80, v69, s0, 1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v81, v59, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s5, 5
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v10, s2, v65
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s2, s28, v15
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v83, v69, s0, 1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e64 v12, 0x80000000, v16, s3
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s34
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v79, 0x80000000, v79 :: v_dual_cndmask_b32 v80, 0x80000000, v80
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v15, 0x80000000, v10, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v118, 0x80000000, v83, vcc_lo
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_clause 0x1
	buffer_load_b32 v78, v11, s[16:19], 0 offen
	buffer_load_b32 v77, v12, s[16:19], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[17:20], v13, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v14, s[20:23], 0 offen
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v15, s[20:23], 0 offen
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s25
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v82, v68, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v84, v59, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s4, 1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v72, v78 offset:16384
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v73, v[17:20]
	s_waitcnt vmcnt(2)
	ds_store_b128 v73, v[21:24] offset:4096
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v72, v77 offset:17408
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v73, v[9:12] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v73, v[13:16] offset:12288
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v147, v79, s[8:11], 0 offen
	buffer_load_u16 v155, v80, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v120, v81, s[12:15], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v79, v66 offset:16672
	ds_load_u8 v148, v66 offset:16640
	ds_load_u8 v149, v66 offset:16736
	ds_load_u8 v150, v66 offset:16704
	ds_load_u8 v151, v66 offset:16752
	ds_load_u8 v152, v66 offset:16720
	ds_load_u8 v153, v66 offset:16688
	ds_load_u8 v154, v66 offset:16656
	ds_load_u8 v80, v66 offset:16544
	ds_load_u8 v156, v66 offset:16512
	ds_load_u8 v157, v66 offset:16608
	ds_load_u8 v158, v66 offset:16576
	ds_load_u8 v159, v66 offset:16624
	ds_load_u8 v160, v66 offset:16592
	ds_load_u8 v161, v66 offset:16560
	ds_load_u8 v162, v66 offset:16528
	ds_load_u8 v163, v66 offset:17184
	ds_load_u8 v164, v66 offset:17152
	ds_load_u8 v165, v66 offset:17248
	ds_load_u8 v166, v66 offset:17216
	ds_load_u8 v167, v66 offset:17264
	ds_load_u8 v168, v66 offset:17232
	ds_load_u8 v169, v66 offset:17200
	ds_load_u8 v170, v66 offset:17168
	ds_load_u8 v171, v66 offset:17056
	ds_load_u8 v172, v66 offset:17024
	ds_load_u8 v173, v66 offset:17120
	ds_load_u8 v174, v66 offset:17088
	ds_load_u8 v175, v66 offset:17136
	ds_load_u8 v176, v66 offset:17104
	ds_load_u8 v177, v66 offset:17072
	ds_load_u8 v178, v66 offset:17040
	ds_load_u8 v179, v66 offset:16928
	ds_load_u8 v180, v66 offset:16896
	ds_load_u8 v181, v66 offset:16992
	ds_load_u8 v182, v66 offset:16960
	ds_load_u8 v183, v66 offset:17008
	ds_load_u8 v184, v66 offset:16976
	ds_load_u8 v185, v66 offset:16944
	ds_load_u8 v186, v66 offset:16912
	ds_load_u8 v187, v67
	ds_load_u8 v188, v66 offset:17312
	ds_load_u8 v189, v66 offset:17280
	ds_load_u8 v190, v66 offset:17376
	ds_load_u8 v191, v66 offset:17344
	ds_load_u8 v192, v66 offset:17360
	ds_load_u8 v193, v66 offset:17328
	ds_load_u8 v194, v66 offset:17296
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s4, s33
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v79, v148, v79, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v148, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v157, v182, v181, 0xc0c0004
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v155, 16, v155
	v_lshlrev_b32_e32 v147, 16, v147
	v_cndmask_b32_e32 v117, 0x80000000, v82, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v119, 0x80000000, v84, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v66 offset:16480
	ds_load_u8 v10, v66 offset:16448
	ds_load_u8 v11, v66 offset:16384
	ds_load_u8 v12, v66 offset:16400
	ds_load_u8 v13, v66 offset:16416
	ds_load_u8 v14, v66 offset:16496
	ds_load_u8 v15, v66 offset:16464
	ds_load_u8 v16, v66 offset:16432
	ds_load_u8 v17, v67 offset:3328
	ds_load_u8 v18, v67 offset:3840
	ds_load_u8 v19, v67 offset:3584
	ds_load_u8 v20, v67 offset:4096
	ds_load_u8 v21, v67 offset:3968
	ds_load_u8 v22, v67 offset:3712
	ds_load_u8 v23, v67 offset:3456
	ds_load_u8 v24, v67 offset:3200
	ds_load_u8 v77, v67 offset:3072
	ds_load_u8 v78, v67 offset:2304
	ds_load_u8 v81, v67 offset:2816
	ds_load_u8 v82, v67 offset:2560
	ds_load_u8 v83, v67 offset:2944
	ds_load_u8 v84, v67 offset:2688
	ds_load_u8 v85, v67 offset:2432
	ds_load_u8 v86, v67 offset:2176
	ds_load_u8 v87, v67 offset:2048
	ds_load_u8 v88, v67 offset:1280
	ds_load_u8 v89, v67 offset:1792
	ds_load_u8 v90, v67 offset:1536
	ds_load_u8 v91, v67 offset:1920
	ds_load_u8 v92, v67 offset:1664
	ds_load_u8 v93, v67 offset:1408
	ds_load_u8 v94, v67 offset:1152
	ds_load_u8 v95, v67 offset:1024
	ds_load_u8 v96, v67 offset:256
	ds_load_u8 v97, v67 offset:768
	ds_load_u8 v98, v67 offset:512
	ds_load_u8 v99, v67 offset:896
	ds_load_u8 v100, v67 offset:640
	ds_load_u8 v101, v67 offset:384
	ds_load_u8 v102, v67 offset:128
	ds_load_u8 v103, v67 offset:7424
	ds_load_u8 v104, v67 offset:7936
	ds_load_u8 v105, v67 offset:7680
	ds_load_u8 v106, v67 offset:8064
	ds_load_u8 v107, v74 offset:16384
	ds_load_u8 v108, v67 offset:7808
	ds_load_u8 v109, v67 offset:7552
	ds_load_u8 v110, v67 offset:7296
	ds_load_u8 v111, v67 offset:7168
	ds_load_u8 v112, v67 offset:6400
	ds_load_u8 v113, v67 offset:6912
	ds_load_u8 v114, v67 offset:6656
	ds_load_u8 v115, v67 offset:7040
	ds_load_u8 v116, v67 offset:6784
	ds_load_u8 v121, v67 offset:6528
	ds_load_u8 v122, v67 offset:6272
	ds_load_u8 v123, v67 offset:6144
	ds_load_u8 v124, v67 offset:5376
	ds_load_u8 v125, v67 offset:5888
	ds_load_u8 v126, v67 offset:5632
	ds_load_u8 v127, v67 offset:6016
	ds_load_u8 v128, v67 offset:5760
	ds_load_u8 v129, v67 offset:5504
	ds_load_u8 v130, v67 offset:5248
	ds_load_u8 v131, v67 offset:5120
	ds_load_u8 v132, v67 offset:4352
	ds_load_u8 v133, v67 offset:4864
	ds_load_u8 v134, v67 offset:4608
	ds_load_u8 v135, v67 offset:4992
	ds_load_u8 v136, v67 offset:4736
	ds_load_u8 v137, v67 offset:4480
	ds_load_u8 v138, v67 offset:4224
	ds_load_u8 v139, v66 offset:16800
	ds_load_u8 v140, v66 offset:16768
	ds_load_u8 v141, v66 offset:16864
	ds_load_u8 v142, v66 offset:16832
	ds_load_u8 v143, v66 offset:16880
	ds_load_u8 v144, v66 offset:16848
	ds_load_u8 v145, v66 offset:16816
	ds_load_u8 v146, v66 offset:16784
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v10, v11, v13, 0xc0c0004
	v_perm_b32 v11, v77, v17, 0xc0c0004
	v_perm_b32 v13, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v17, v87, v78, 0xc0c0004
	v_perm_b32 v18, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v19, v95, v88, 0xc0c0004
	v_perm_b32 v81, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v82, v187, v96, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v89, v98, v97, 0xc0c0004
	v_perm_b32 v90, v189, v188, 0xc0c0004
	v_perm_b32 v95, v191, v190, 0xc0c0004
	v_perm_b32 v97, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	v_perm_b32 v98, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v140, v142, v141, 0xc0c0004
	v_perm_b32 v141, v150, v149, 0xc0c0004
	v_perm_b32 v142, v156, v80, 0xc0c0004
	v_perm_b32 v103, v111, v103, 0xc0c0004
	v_perm_b32 v104, v105, v104, 0xc0c0004
	v_perm_b32 v105, v123, v112, 0xc0c0004
	v_perm_b32 v111, v114, v113, 0xc0c0004
	v_perm_b32 v112, v131, v124, 0xc0c0004
	v_perm_b32 v113, v126, v125, 0xc0c0004
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_perm_b32 v21, v22, v21, 0xc0c0004
	v_perm_b32 v22, v86, v85, 0xc0c0004
	v_perm_b32 v24, v84, v83, 0xc0c0004
	v_perm_b32 v83, v94, v93, 0xc0c0004
	v_perm_b32 v84, v92, v91, 0xc0c0004
	v_perm_b32 v91, v102, v101, 0xc0c0004
	v_perm_b32 v92, v100, v99, 0xc0c0004
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_perm_b32 v106, v108, v106, 0xc0c0004
	v_perm_b32 v110, v122, v121, 0xc0c0004
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_perm_b32 v116, v130, v129, 0xc0c0004
	v_perm_b32 v121, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v146, v145, 0xc0c0004
	v_perm_b32 v125, v144, v143, 0xc0c0004
	v_perm_b32 v126, v154, v153, 0xc0c0004
	v_perm_b32 v127, v152, v151, 0xc0c0004
	v_perm_b32 v128, v162, v161, 0xc0c0004
	v_perm_b32 v129, v160, v159, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v12, v12, v16, 0xc0c0004
	v_perm_b32 v149, v172, v171, 0xc0c0004
	v_perm_b32 v150, v174, v173, 0xc0c0004
	v_perm_b32 v156, v180, v179, 0xc0c0004
	v_perm_b32 v20, v20, v132, 0xc0c0004
	v_perm_b32 v114, v134, v133, 0xc0c0004
	v_perm_b32 v122, v138, v137, 0xc0c0004
	v_perm_b32 v123, v136, v135, 0xc0c0004
	v_perm_b32 v15, v170, v169, 0xc0c0004
	v_perm_b32 v16, v168, v167, 0xc0c0004
	v_perm_b32 v130, v178, v177, 0xc0c0004
	v_perm_b32 v131, v176, v175, 0xc0c0004
	v_perm_b32 v132, v186, v185, 0xc0c0004
	v_perm_b32 v133, v184, v183, 0xc0c0004
	v_perm_b32 v134, v194, v193, 0xc0c0004
	v_perm_b32 v135, v192, v107, 0xc0c0004
	v_lshl_or_b32 v80, v140, 16, v139
	v_lshl_or_b32 v79, v141, 16, v79
	v_lshl_or_b32 v78, v148, 16, v142
	v_lshl_or_b32 v77, v9, 16, v10
	v_lshl_or_b32 v88, v13, 16, v11
	v_lshl_or_b32 v87, v18, 16, v17
	v_lshl_or_b32 v86, v81, 16, v19
	v_lshl_or_b32 v85, v89, 16, v82
	v_lshl_or_b32 v96, v95, 16, v90
	v_lshl_or_b32 v95, v98, 16, v97
	v_lshl_or_b32 v100, v104, 16, v103
	v_lshl_or_b32 v99, v111, 16, v105
	v_lshl_or_b32 v98, v113, 16, v112
	v_lshl_or_b32 v104, v21, 16, v23
	v_lshl_or_b32 v103, v24, 16, v22
	v_lshl_or_b32 v102, v84, 16, v83
	v_lshl_or_b32 v101, v92, 16, v91
	v_lshl_or_b32 v108, v106, 16, v109
	v_lshl_or_b32 v107, v115, 16, v110
	v_lshl_or_b32 v112, v125, 16, v124
	v_lshl_or_b32 v111, v127, 16, v126
	v_lshl_or_b32 v110, v129, 16, v128
	v_lshl_or_b32 v109, v14, 16, v12
	v_lshl_or_b32 v94, v150, 16, v149
	v_lshl_or_b32 v93, v157, 16, v156
	v_lshl_or_b32 v97, v114, 16, v20
	v_lshl_or_b32 v106, v121, 16, v116
	v_lshl_or_b32 v105, v123, 16, v122
	v_lshl_or_b32 v115, v16, 16, v15
	v_lshl_or_b32 v114, v131, 16, v130
	v_lshl_or_b32 v113, v133, 16, v132
	v_lshl_or_b32 v116, v135, 16, v134
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[101:104], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[109:112], v[1:8] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v75, v120 offset:18432
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[17:24], v[105:108], v[93:96], v[17:24] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[77:84], v[97:100], v[113:116], v[77:84] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[85:92], v[101:104], v[109:112], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v82, v82
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[93:96], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[105:108], v[113:116], v[85:92] neg_lo:[1,1,0]
	ds_load_u8 v136, v67 offset:9216
	ds_load_u8 v137, v67 offset:8448
	ds_load_u8 v138, v67 offset:8960
	ds_load_u8 v139, v67 offset:8704
	ds_load_u8 v140, v67 offset:9088
	ds_load_u8 v141, v67 offset:8832
	ds_load_u8 v142, v67 offset:8576
	ds_load_u8 v143, v67 offset:8320
	ds_load_u8 v144, v67 offset:15616
	ds_load_u8 v145, v67 offset:16128
	ds_load_u8 v146, v67 offset:15872
	ds_load_u8 v148, v67 offset:16256
	ds_load_u8 v149, v67 offset:16000
	ds_load_u8 v150, v67 offset:15744
	ds_load_u8 v151, v67 offset:15488
	ds_load_u8 v152, v67 offset:15360
	ds_load_u8 v153, v67 offset:14592
	ds_load_u8 v154, v67 offset:15104
	ds_load_u8 v156, v67 offset:14848
	ds_load_u8 v157, v67 offset:15232
	ds_load_u8 v158, v67 offset:14976
	ds_load_u8 v159, v67 offset:14720
	ds_load_u8 v160, v67 offset:14464
	ds_load_u8 v161, v67 offset:14336
	ds_load_u8 v162, v67 offset:13568
	ds_load_u8 v163, v67 offset:14080
	ds_load_u8 v164, v67 offset:13824
	ds_load_u8 v165, v67 offset:14208
	ds_load_u8 v166, v67 offset:13952
	ds_load_u8 v167, v67 offset:13696
	ds_load_u8 v168, v67 offset:13440
	ds_load_u8 v169, v67 offset:13312
	ds_load_u8 v170, v67 offset:12544
	ds_load_u8 v171, v67 offset:13056
	ds_load_u8 v172, v67 offset:12800
	ds_load_u8 v173, v67 offset:13184
	ds_load_u8 v174, v67 offset:12928
	ds_load_u8 v175, v67 offset:12672
	ds_load_u8 v176, v67 offset:12416
	ds_load_u8 v177, v66 offset:17824
	ds_load_u8 v178, v66 offset:17792
	ds_load_u8 v179, v66 offset:17888
	ds_load_u8 v180, v66 offset:17856
	ds_load_u8 v181, v66 offset:17904
	ds_load_u8 v182, v66 offset:17872
	ds_load_u8 v183, v66 offset:17840
	ds_load_u8 v184, v66 offset:17808
	ds_load_u8 v185, v66 offset:17696
	ds_load_u8 v186, v66 offset:17664
	ds_load_u8 v187, v66 offset:17760
	ds_load_u8 v188, v66 offset:17728
	ds_load_u8 v189, v66 offset:17776
	ds_load_u8 v190, v66 offset:17744
	ds_load_u8 v191, v66 offset:17712
	ds_load_u8 v192, v66 offset:17680
	ds_load_u8 v193, v66 offset:17568
	ds_load_u8 v194, v66 offset:17536
	ds_load_u8 v195, v66 offset:17632
	ds_load_u8 v196, v66 offset:17600
	ds_load_u8 v197, v66 offset:17648
	ds_load_u8 v198, v66 offset:17616
	ds_load_u8 v199, v66 offset:17584
	ds_load_u8 v200, v66 offset:17552
	ds_load_u8 v201, v66 offset:18208
	ds_load_u8 v202, v66 offset:18176
	ds_load_u8 v203, v66 offset:18272
	ds_load_u8 v204, v66 offset:18240
	ds_load_u8 v205, v66 offset:18288
	ds_load_u8 v206, v66 offset:18256
	ds_load_u8 v207, v66 offset:18224
	ds_load_u8 v208, v66 offset:18192
	ds_load_u8 v209, v66 offset:18080
	ds_load_u8 v210, v66 offset:18048
	ds_load_u8 v211, v66 offset:18144
	ds_load_u8 v212, v66 offset:18112
	ds_load_u8 v213, v66 offset:18160
	ds_load_u8 v214, v66 offset:18128
	ds_load_u8 v215, v66 offset:18096
	ds_load_u8 v216, v66 offset:18064
	ds_load_u8 v217, v66 offset:17952
	ds_load_u8 v218, v66 offset:17920
	ds_load_u8 v219, v66 offset:18016
	ds_load_u8 v220, v66 offset:17984
	ds_load_u8 v221, v66 offset:18032
	ds_load_u8 v222, v66 offset:18000
	ds_load_u8 v223, v66 offset:17968
	ds_load_u8 v224, v66 offset:17936
	ds_load_u8 v225, v67 offset:8192
	ds_load_u8 v226, v66 offset:18336
	ds_load_u8 v227, v66 offset:18304
	ds_load_u8 v228, v66 offset:18400
	ds_load_u8 v229, v66 offset:18368
	ds_load_u8 v230, v66 offset:18384
	ds_load_u8 v231, v66 offset:18352
	ds_load_u8 v232, v66 offset:18320
	ds_load_u8 v233, v74 offset:17408
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v82, v155, v82
	v_mul_f32_e32 v18, v147, v18
	v_mul_f32_e32 v20, v147, v20
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v117, v117, s[8:11], 0 offen
	buffer_load_u16 v118, v118, s[8:11], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v119, v119, s[12:15], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v93, v10
	v_cvt_f32_i32_e32 v94, v11
	v_cvt_f32_i32_e32 v95, v12
	v_cvt_f32_i32_e32 v96, v13
	v_cvt_f32_i32_e32 v97, v14
	v_cvt_f32_i32_e32 v98, v15
	v_cvt_f32_i32_e32 v99, v16
	v_cvt_f32_i32_e32 v100, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[9:12], v70 offset:18432
	ds_load_b128 v[13:16], v70 offset:18448
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v101, v66 offset:17504
	ds_load_u8 v102, v66 offset:17472
	ds_load_u8 v103, v66 offset:17408
	ds_load_u8 v104, v66 offset:17424
	ds_load_u8 v105, v66 offset:17440
	ds_load_u8 v106, v66 offset:17520
	ds_load_u8 v107, v66 offset:17488
	ds_load_u8 v108, v66 offset:17456
	ds_load_u8 v109, v67 offset:11520
	ds_load_u8 v110, v67 offset:12032
	ds_load_u8 v111, v67 offset:11776
	ds_load_u8 v112, v67 offset:12288
	ds_load_u8 v113, v67 offset:12160
	ds_load_u8 v114, v67 offset:11904
	ds_load_u8 v115, v67 offset:11648
	ds_load_u8 v116, v67 offset:11392
	ds_load_u8 v120, v67 offset:11264
	ds_load_u8 v121, v67 offset:10496
	ds_load_u8 v122, v67 offset:11008
	ds_load_u8 v123, v67 offset:10752
	ds_load_u8 v124, v67 offset:11136
	ds_load_u8 v125, v67 offset:10880
	ds_load_u8 v126, v67 offset:10624
	ds_load_u8 v127, v67 offset:10368
	ds_load_u8 v128, v67 offset:10240
	ds_load_u8 v129, v67 offset:9472
	ds_load_u8 v130, v67 offset:9984
	ds_load_u8 v131, v67 offset:9728
	ds_load_u8 v132, v67 offset:10112
	ds_load_u8 v133, v67 offset:9856
	ds_load_u8 v134, v67 offset:9600
	ds_load_u8 v135, v67 offset:9344
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v234, v147, v93
	v_mul_f32_e32 v235, v147, v94
	v_mul_f32_e32 v236, v147, v95
	v_mul_f32_e32 v237, v147, v96
	v_mul_f32_e32 v238, v147, v97
	v_mul_f32_e32 v239, v147, v98
	v_mul_f32_e32 v240, v147, v99
	s_waitcnt lgkmcnt(33)
	v_dual_mul_f32 v17, v147, v17 :: v_dual_lshlrev_b32 v250, 16, v11
	v_mul_f32_e32 v19, v147, v19
	s_waitcnt lgkmcnt(32)
	v_dual_mul_f32 v21, v147, v21 :: v_dual_lshlrev_b32 v254, 16, v15
	v_mul_f32_e32 v22, v147, v22
	v_dual_mul_f32 v23, v147, v23 :: v_dual_lshlrev_b32 v248, 16, v9
	v_dual_mul_f32 v24, v147, v24 :: v_dual_mul_f32 v147, v100, v147
	v_dual_mul_f32 v241, v155, v78 :: v_dual_lshlrev_b32 v252, 16, v13
	v_dual_mul_f32 v242, v155, v79 :: v_dual_lshlrev_b32 v249, 16, v10
	v_dual_mul_f32 v243, v155, v80 :: v_dual_and_b32 v10, 0xffff0000, v10
	v_mul_f32_e32 v81, v155, v81
	v_mul_f32_e32 v83, v155, v83
	v_mul_f32_e32 v84, v155, v84
	v_dual_mul_f32 v244, v155, v85 :: v_dual_lshlrev_b32 v251, 16, v12
	v_mul_f32_e32 v245, v155, v86
	v_dual_mul_f32 v246, v155, v87 :: v_dual_lshlrev_b32 v253, 16, v14
	v_dual_mul_f32 v247, v155, v88 :: v_dual_fmac_f32 v52, v241, v249
	v_dual_mul_f32 v89, v155, v89 :: v_dual_fmac_f32 v48, v242, v250
	v_dual_mul_f32 v90, v155, v90 :: v_dual_lshlrev_b32 v255, 16, v16
	v_dual_mul_f32 v92, v155, v92 :: v_dual_and_b32 v9, 0xffff0000, v9
	v_dual_mul_f32 v91, v155, v91 :: v_dual_and_b32 v12, 0xffff0000, v12
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v40, v81, v252
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v155, v77, v155
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_perm_b32 v77, v178, v177, 0xc0c0004
	v_perm_b32 v78, v180, v179, 0xc0c0004
	v_perm_b32 v79, v186, v185, 0xc0c0004
	v_perm_b32 v85, v188, v187, 0xc0c0004
	v_perm_b32 v86, v194, v193, 0xc0c0004
	v_perm_b32 v87, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v88, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v93, v103, v105, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v94, v120, v109, 0xc0c0004
	v_perm_b32 v95, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v96, v128, v121, 0xc0c0004
	v_perm_b32 v97, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v98, v136, v129, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v99, v131, v130, 0xc0c0004
	v_perm_b32 v100, v225, v137, 0xc0c0004
	v_perm_b32 v101, v139, v138, 0xc0c0004
	v_perm_b32 v102, v227, v226, 0xc0c0004
	v_perm_b32 v103, v229, v228, 0xc0c0004
	v_perm_b32 v105, v202, v201, 0xc0c0004
	v_perm_b32 v109, v204, v203, 0xc0c0004
	v_perm_b32 v110, v210, v209, 0xc0c0004
	v_perm_b32 v111, v212, v211, 0xc0c0004
	v_perm_b32 v122, v152, v144, 0xc0c0004
	v_perm_b32 v123, v146, v145, 0xc0c0004
	v_perm_b32 v112, v112, v170, 0xc0c0004
	v_perm_b32 v136, v172, v171, 0xc0c0004
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_perm_b32 v114, v127, v126, 0xc0c0004
	v_perm_b32 v116, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v135, v134, 0xc0c0004
	v_perm_b32 v125, v133, v132, 0xc0c0004
	v_perm_b32 v126, v143, v142, 0xc0c0004
	v_perm_b32 v127, v141, v140, 0xc0c0004
	v_perm_b32 v133, v149, v148, 0xc0c0004
	v_perm_b32 v141, v184, v183, 0xc0c0004
	v_perm_b32 v142, v182, v181, 0xc0c0004
	v_perm_b32 v143, v192, v191, 0xc0c0004
	v_perm_b32 v144, v190, v189, 0xc0c0004
	v_perm_b32 v145, v200, v199, 0xc0c0004
	v_perm_b32 v146, v198, v197, 0xc0c0004
	v_perm_b32 v148, v107, v106, 0xc0c0004
	v_perm_b32 v149, v104, v108, 0xc0c0004
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v26, v155, v248 :: v_dual_and_b32 v11, 0xffff0000, v11
	v_dual_fmac_f32 v44, v243, v251 :: v_dual_and_b32 v13, 0xffff0000, v13
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v14, 0xffff0000, v14
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v36, v82, v253 :: v_dual_and_b32 v15, 0xffff0000, v15
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_and_b32_e32 v16, 0xffff0000, v16
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v128, v161, v153, 0xc0c0004
	v_perm_b32 v129, v156, v154, 0xc0c0004
	v_perm_b32 v130, v169, v162, 0xc0c0004
	v_perm_b32 v131, v164, v163, 0xc0c0004
	v_perm_b32 v132, v151, v150, 0xc0c0004
	v_perm_b32 v135, v158, v157, 0xc0c0004
	v_perm_b32 v150, v208, v207, 0xc0c0004
	v_perm_b32 v151, v206, v205, 0xc0c0004
	v_perm_b32 v152, v216, v215, 0xc0c0004
	v_perm_b32 v153, v214, v213, 0xc0c0004
	v_perm_b32 v154, v224, v223, 0xc0c0004
	v_perm_b32 v156, v222, v221, 0xc0c0004
	v_perm_b32 v157, v232, v231, 0xc0c0004
	v_perm_b32 v158, v230, v233, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	v_lshl_or_b32 v79, v85, 16, v79
	v_lshl_or_b32 v78, v87, 16, v86
	v_lshl_or_b32 v77, v88, 16, v93
	v_lshl_or_b32 v88, v95, 16, v94
	v_lshl_or_b32 v87, v97, 16, v96
	v_lshl_or_b32 v86, v99, 16, v98
	v_lshl_or_b32 v85, v101, 16, v100
	v_lshl_or_b32 v96, v103, 16, v102
	v_lshl_or_b32 v95, v109, 16, v105
	v_lshl_or_b32 v94, v111, 16, v110
	v_lshl_or_b32 v97, v136, 16, v112
	v_lshl_or_b32 v104, v113, 16, v115
	v_lshl_or_b32 v103, v116, 16, v114
	v_lshl_or_b32 v102, v125, 16, v124
	v_lshl_or_b32 v101, v127, 16, v126
	v_lshl_or_b32 v112, v142, 16, v141
	v_lshl_or_b32 v111, v144, 16, v143
	v_lshl_or_b32 v110, v146, 16, v145
	v_lshl_or_b32 v109, v148, 16, v149
	v_perm_b32 v120, v218, v217, 0xc0c0004
	v_perm_b32 v121, v220, v219, 0xc0c0004
	v_perm_b32 v134, v160, v159, 0xc0c0004
	v_perm_b32 v137, v168, v167, 0xc0c0004
	v_perm_b32 v138, v166, v165, 0xc0c0004
	v_perm_b32 v139, v176, v175, 0xc0c0004
	v_perm_b32 v140, v174, v173, 0xc0c0004
	v_lshl_or_b32 v100, v123, 16, v122
	v_lshl_or_b32 v99, v129, 16, v128
	v_lshl_or_b32 v98, v131, 16, v130
	v_lshl_or_b32 v115, v151, 16, v150
	v_lshl_or_b32 v114, v153, 16, v152
	v_lshl_or_b32 v113, v156, 16, v154
	v_lshl_or_b32 v116, v158, 16, v157
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v25, v147, v248 :: v_dual_fmac_f32 v30, v84, v255
	v_dual_fmac_f32 v51, v234, v249 :: v_dual_fmac_f32 v32, v83, v254
	v_dual_fmac_f32 v47, v235, v250 :: v_dual_fmac_f32 v56, v244, v9
	v_dual_fmac_f32 v43, v236, v251 :: v_dual_fmac_f32 v54, v245, v10
	v_dual_fmac_f32 v39, v237, v252 :: v_dual_fmac_f32 v50, v246, v11
	v_dual_fmac_f32 v35, v238, v253 :: v_dual_fmac_f32 v46, v247, v12
	v_dual_fmac_f32 v31, v239, v254 :: v_dual_fmac_f32 v42, v89, v13
	v_dual_fmac_f32 v29, v240, v255 :: v_dual_fmac_f32 v38, v90, v14
	v_dual_fmac_f32 v55, v17, v9 :: v_dual_fmac_f32 v34, v91, v15
	v_dual_fmac_f32 v53, v18, v10 :: v_dual_fmac_f32 v28, v92, v16
	v_fmac_f32_e32 v49, v19, v11
	v_fmac_f32_e32 v45, v20, v12
	v_fmac_f32_e32 v41, v21, v13
	v_fmac_f32_e32 v37, v22, v14
	v_fmac_f32_e32 v33, v23, v15
	v_fmac_f32_e32 v27, v24, v16
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[101:104], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[109:112], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v93, v121, 16, v120
	v_lshl_or_b32 v108, v133, 16, v132
	v_lshl_or_b32 v107, v135, 16, v134
	v_lshl_or_b32 v106, v138, 16, v137
	v_lshl_or_b32 v105, v140, 16, v139
	v_wmma_i32_16x16x16_iu8 v[77:84], v[97:100], v[113:116], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[101:104], v[109:112], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[93:96], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[105:108], v[93:96], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v80, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[105:108], v[113:116], v[85:92] neg_lo:[1,1,0]
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v108, v9
	v_cvt_f32_i32_e32 v100, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v93, v10
	v_cvt_f32_i32_e32 v94, v11
	v_cvt_f32_i32_e32 v95, v12
	v_cvt_f32_i32_e32 v96, v13
	v_cvt_f32_i32_e32 v97, v14
	v_cvt_f32_i32_e32 v98, v15
	v_cvt_f32_i32_e32 v99, v16
	v_cvt_f32_i32_e32 v101, v18
	v_cvt_f32_i32_e32 v102, v19
	v_cvt_f32_i32_e32 v103, v20
	v_cvt_f32_i32_e32 v104, v21
	v_cvt_f32_i32_e32 v105, v22
	v_cvt_f32_i32_e32 v106, v23
	v_cvt_f32_i32_e32 v107, v24
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v110, 16, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v80, v110, v80 :: v_dual_lshlrev_b32 v109, 16, v117
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v100, v109, v100 :: v_dual_lshlrev_b32 v9, 16, v119
	v_dual_mul_f32 v102, v109, v102 :: v_dual_mul_f32 v79, v110, v79
	v_mul_f32_e32 v108, v108, v109
	ds_store_b32 v76, v9 offset:18432
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v70 offset:18432
	ds_load_b128 v[13:16], v70 offset:18448
	ds_load_b128 v[17:20], v70 offset:18944
	ds_load_b128 v[21:24], v70 offset:18960
	v_dual_mul_f32 v93, v109, v93 :: v_dual_mul_f32 v82, v110, v82
	v_mul_f32_e32 v94, v109, v94
	v_dual_mul_f32 v95, v109, v95 :: v_dual_mul_f32 v84, v110, v84
	v_mul_f32_e32 v96, v109, v96
	v_dual_mul_f32 v97, v109, v97 :: v_dual_mul_f32 v86, v110, v86
	v_mul_f32_e32 v98, v109, v98
	v_dual_mul_f32 v99, v109, v99 :: v_dual_mul_f32 v88, v110, v88
	v_dual_mul_f32 v101, v109, v101 :: v_dual_mul_f32 v90, v110, v90
	v_dual_mul_f32 v103, v109, v103 :: v_dual_mul_f32 v92, v110, v92
	v_dual_mul_f32 v104, v109, v104 :: v_dual_mul_f32 v81, v110, v81
	v_dual_mul_f32 v106, v109, v106 :: v_dual_mul_f32 v83, v110, v83
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v107, v109, v107 :: v_dual_fmac_f32 v44, v80, v12
	v_dual_mul_f32 v77, v77, v110 :: v_dual_fmac_f32 v48, v79, v11
	v_dual_mul_f32 v78, v110, v78 :: v_dual_mul_f32 v105, v109, v105
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v85, v110, v85 :: v_dual_fmac_f32 v32, v83, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v87, v110, v87 :: v_dual_fmac_f32 v26, v77, v9
	v_dual_mul_f32 v89, v110, v89 :: v_dual_fmac_f32 v30, v84, v16
	v_dual_mul_f32 v91, v110, v91 :: v_dual_fmac_f32 v40, v81, v13
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v25, v108, v9 :: v_dual_fmac_f32 v36, v82, v14
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v51, v93, v10 :: v_dual_fmac_f32 v50, v87, v19
	v_dual_fmac_f32 v47, v94, v11 :: v_dual_fmac_f32 v56, v85, v17
	v_dual_fmac_f32 v43, v95, v12 :: v_dual_fmac_f32 v54, v86, v18
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v39, v96, v13 :: v_dual_fmac_f32 v38, v90, v22
	v_dual_fmac_f32 v35, v97, v14 :: v_dual_fmac_f32 v46, v88, v20
	v_dual_fmac_f32 v31, v98, v15 :: v_dual_fmac_f32 v42, v89, v21
	v_fmac_f32_e32 v29, v99, v16
	v_dual_fmac_f32 v55, v100, v17 :: v_dual_fmac_f32 v34, v91, v23
	v_dual_fmac_f32 v53, v101, v18 :: v_dual_fmac_f32 v28, v92, v24
	v_fmac_f32_e32 v49, v102, v19
	v_fmac_f32_e32 v45, v103, v20
	v_fmac_f32_e32 v41, v104, v21
	v_fmac_f32_e32 v33, v106, v23
	v_dual_fmac_f32 v27, v107, v24 :: v_dual_fmac_f32 v52, v78, v10
	v_fmac_f32_e32 v37, v105, v22
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v60, s35 :: v_dual_mov_b32 v1, v59
.LBB0_7:                                ; %._crit_edge
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	v_bfe_i32 v2, v0, 0, 1
	v_and_b32_e32 v3, 0x3f8, v58
	v_and_b32_e32 v5, 14, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v4, 0x840, v2
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s29, s25, v[1:2]
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v0, 1, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v3, v4, v3
	v_lshlrev_b32_e32 v0, 6, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshl_or_b32 v4, v5, 11, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b64 v[2:3], 2, v[1:2]
	v_add_nc_u32_e32 v6, 0, v4
	v_xad_u32 v7, v4, 8, 0
	v_xad_u32 v8, v4, 16, 0
	v_xad_u32 v9, v4, 24, 0
	v_xad_u32 v10, v4, 32, 0
	v_xad_u32 v11, v4, 40, 0
	ds_store_2addr_stride64_b64 v6, v[25:26], v[55:56] offset1:2
	ds_store_2addr_stride64_b64 v7, v[51:52], v[53:54] offset1:2
	ds_store_2addr_stride64_b64 v8, v[47:48], v[49:50] offset1:2
	ds_store_2addr_stride64_b64 v9, v[43:44], v[45:46] offset1:2
	ds_store_2addr_stride64_b64 v10, v[39:40], v[41:42] offset1:2
	ds_store_2addr_stride64_b64 v11, v[35:36], v[37:38] offset1:2
	v_add_co_u32 v35, vcc_lo, s26, v2
	v_xad_u32 v12, v4, 48, 0
	v_add_co_ci_u32_e64 v36, null, s27, v3, vcc_lo
	v_xad_u32 v4, v4, 56, 0
	ds_store_2addr_stride64_b64 v12, v[31:32], v[33:34] offset1:2
	ds_store_2addr_stride64_b64 v4, v[29:30], v[27:28] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v38, v[35:36], off
	v_lshlrev_b32_e32 v2, 3, v57
	v_lshlrev_b32_e32 v3, 2, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v0, v2, v0, v3
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v3, 0x840, v0, 0
	v_xad_u32 v4, 0x1008, v0, 0
	v_xad_u32 v5, 0x1848, v0, 0
	v_xad_u32 v6, 0x2010, v0, 0
	v_xad_u32 v7, 0x2850, v0, 0
	v_xad_u32 v8, 0x3018, v0, 0
	v_xad_u32 v9, 0x3858, v0, 0
	ds_load_b64 v[32:33], v2
	ds_load_b64 v[30:31], v3
	ds_load_b64 v[28:29], v4
	ds_load_b64 v[26:27], v5
	ds_load_b64 v[24:25], v6
	ds_load_b64 v[22:23], v7
	ds_load_b64 v[20:21], v8
	ds_load_b64 v[18:19], v9
	v_xad_u32 v2, 0x4020, v0, 0
	v_xad_u32 v3, 0x4860, v0, 0
	v_xad_u32 v4, 0x5028, v0, 0
	v_xad_u32 v5, 0x5868, v0, 0
	v_xad_u32 v6, 0x6030, v0, 0
	v_xad_u32 v7, 0x6870, v0, 0
	v_xad_u32 v34, 0x7038, v0, 0
	v_xad_u32 v0, 0x7878, v0, 0
	ds_load_b64 v[16:17], v2
	ds_load_b64 v[14:15], v3
	ds_load_b64 v[12:13], v4
	ds_load_b64 v[10:11], v5
	ds_load_b64 v[8:9], v6
	ds_load_b64 v[6:7], v7
	ds_load_b64 v[4:5], v34
	ds_load_b64 v[2:3], v0
.LBB0_8:                                ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v37, v38, v32
	global_atomic_cmpswap_b32 v0, v[35:36], v[37:38], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v38
	v_mov_b32_e32 v38, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end181
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v34, s25, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s26, v34
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_10:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v36, v37, v30
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v34, s25, 1, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s26, v34
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_12:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v36, v37, v28
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[34:35], null, s25, 3, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s26, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_14:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v26
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v34, s25, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s26, v34
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_16:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v24
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s25, 5, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s26, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_18:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v22
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s25, 6, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s26, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_20:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v20
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s25, 7, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s26, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_22:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v18
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v34, s25, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s26, v34
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_24:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v16
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s25, 9, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s26, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_26:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v14
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s25, 10, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s26, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_28:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v12
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s25, 11, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s26, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_30:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v10
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s25, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s26, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_32:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v8
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s25, 13, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s26, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_34:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v6
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s25, 14, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s26, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_36:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v4
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[34:35], null, s25, 15, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s26, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_38:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v2
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v34, v1, v60
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s26, v34
	v_add_co_ci_u32_e64 v35, null, s27, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_40:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v33
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s25, 17, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s26, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s27, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_42:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v31
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[30:31], null, s25, 18, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v31, 31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[30:31], 2, v[30:31]
	v_add_co_u32 v30, vcc_lo, s26, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v31, null, s27, v31, vcc_lo
	global_load_b32 v33, v[30:31], off
.LBB0_44:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v32, v33, v29
	global_atomic_cmpswap_b32 v0, v[30:31], v[32:33], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v33
	v_mov_b32_e32 v33, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[28:29], null, s25, 19, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s26, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s27, v29, vcc_lo
	global_load_b32 v31, v[28:29], off
.LBB0_46:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v30, v31, v27
	global_atomic_cmpswap_b32 v0, v[28:29], v[30:31], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v31
	v_mov_b32_e32 v31, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[26:27], null, s25, 20, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v27, 31, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	v_add_co_u32 v26, vcc_lo, s26, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v27, null, s27, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_48:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v25
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[24:25], null, s25, 21, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s26, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s27, v25, vcc_lo
	global_load_b32 v27, v[24:25], off
.LBB0_50:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v26, v27, v23
	global_atomic_cmpswap_b32 v0, v[24:25], v[26:27], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v27
	v_mov_b32_e32 v27, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[22:23], null, s25, 22, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v23, 31, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[22:23], 2, v[22:23]
	v_add_co_u32 v22, vcc_lo, s26, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v23, null, s27, v23, vcc_lo
	global_load_b32 v25, v[22:23], off
.LBB0_52:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v21
	global_atomic_cmpswap_b32 v0, v[22:23], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[20:21], null, s25, 23, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s26, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s27, v21, vcc_lo
	global_load_b32 v23, v[20:21], off
.LBB0_54:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v22, v23, v19
	global_atomic_cmpswap_b32 v0, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v23
	v_mov_b32_e32 v23, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[18:19], null, s25, 24, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s26, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s27, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_56:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v17
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s25, 25, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s26, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s27, v17, vcc_lo
	global_load_b32 v19, v[16:17], off
.LBB0_58:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v15
	global_atomic_cmpswap_b32 v0, v[16:17], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[14:15], null, s25, 26, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v14, vcc_lo, s26, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s27, v15, vcc_lo
	global_load_b32 v17, v[14:15], off
.LBB0_60:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v13
	global_atomic_cmpswap_b32 v0, v[14:15], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s25, 27, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s26, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s27, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_62:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v15, v11
	global_atomic_cmpswap_b32 v0, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v15
	v_mov_b32_e32 v15, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[10:11], null, s25, 28, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s26, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s27, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_64:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s25, 29, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s26, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s27, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_66:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[6:7], null, s25, 30, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s26, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s27, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_68:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s25, 31, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s26, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s27, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_70:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_70
; %bb.71:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 37
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
		.amdhsa_inst_pref_size 63
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10848
; TotalNumSgprs: 39
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	310                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
