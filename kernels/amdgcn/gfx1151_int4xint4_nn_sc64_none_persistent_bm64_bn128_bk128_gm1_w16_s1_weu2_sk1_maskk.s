	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 26
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s33, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s34, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s44, s34, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s44
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s4, s[0:1], 0x38
	s_load_b64 s[24:25], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v1, 1, v0
	v_lshlrev_b32_e32 v2, 1, v0
	v_lshrrev_b32_e32 v7, 2, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v4, 15, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v13, 2, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v20, 0x70, v1
	v_and_b32_e32 v2, 0x218, v2
	v_and_b32_e32 v3, 0x78, v1
	v_and_b32_e32 v1, 24, v7
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v10, 4, v0
	v_lshrrev_b32_e32 v5, 3, v0
	v_lshlrev_b32_e32 v19, 3, v0
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_and_b32_e32 v12, 0xe0, v0
	v_xor_b32_e32 v14, v13, v1
	v_mov_b32_e32 v1, 0x5410
	v_lshl_or_b32 v15, v4, 5, v2
	v_and_b32_e32 v2, 16, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s4, 63
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s5, s4, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s4, s4, s5
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 26
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s45, s4, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v6, v10, 16, v4
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s46, s1, 6
	s_cmp_gt_i32 s0, 63
	v_cmp_eq_u32_e64 s0, 0, v2
	s_cselect_b32 s1, -1, 0
	s_and_b32 s29, s9, 0xffff
	s_abs_i32 s9, s34
	v_mov_b32_e32 v2, 0x7632
	s_cvt_f32_u32 s4, s9
	v_cndmask_b32_e64 v1, 0x1054, v1, s0
.Ltmp20:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 5
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v7, 32, v6
	v_rcp_iflag_f32_e32 v8, s4
	v_cndmask_b32_e64 v2, 0x3276, v2, s0
	v_lshl_or_b32 v1, v1, 8, v1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_or_b32_e32 v10, s3, v10
	s_sub_i32 s5, 0, s9
	v_xor_b32_e32 v16, 8, v15
	v_lshl_or_b32 v2, v2, 8, v2
	v_and_b32_e32 v9, 0x540054, v1
	v_xor_b32_e32 v17, 16, v15
	v_xor_b32_e32 v18, 24, v15
	v_readfirstlane_b32 s4, v8
	v_and_b32_e32 v11, 0x760076, v2
	v_mad_u64_u32 v[1:2], null, s35, v6, v[3:4]
	v_mad_u64_u32 v[2:3], null, s35, v7, v[3:4]
	s_mul_f32 s4, s4, 0x4f7ffffe
	v_mul_lo_u32 v3, s35, v10
	v_add_nc_u32_e32 v21, 0, v4
	v_lshl_or_b32 v8, v9, 4, v9
	s_cvt_u32_f32 s4, s4
	v_lshl_or_b32 v9, v11, 4, v11
	v_cndmask_b32_e64 v22, 0, 1, s1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_and_or_b32 v0, v13, 28, s3
	s_mul_i32 s5, s5, s4
	s_and_b32 s37, s11, 0xffff
	s_mul_hi_u32 s5, s4, s5
	v_and_b32_e32 v8, 0x5040504, v8
	v_and_b32_e32 v9, 0x7060706, v9
	s_add_i32 s11, s4, s5
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_and_b32_e32 v11, 2, v5
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v13, v4, 3, v3
	v_cmp_ne_u32_e64 s1, 1, v22
	v_cmp_gt_i32_e64 s3, 32, v0
	v_cmp_gt_i32_e64 s4, 32, v10
	v_add_nc_u32_e32 v14, 0, v14
	v_add_nc_u32_e32 v15, 0, v15
	v_add_nc_u32_e32 v16, 0, v16
	v_add_nc_u32_e32 v17, 0, v17
	v_add_nc_u32_e32 v18, 0, v18
	v_add_nc_u32_e32 v19, 0, v19
	v_add_nc_u32_e32 v20, v21, v20
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s8
	s_mov_b32 s36, s10
	s_mov_b32 s16, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_and_b32 s25, s25, 0xffff
	s_ashr_i32 s10, s34, 31
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s47, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s48, s46, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s49, s35, 5
	s_mov_b32 s50, 0x76543210
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v3, v34, 16, 1
	v_bfe_u32 v36, v35, 16, 1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s5, s6, 7
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_mul_i32 s6, s7, s35
	.loc	1 277 13 is_stmt 0              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s14, s6, s5
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v3, v34, v3, 0x7fff
	v_add3_u32 v34, v35, v36, 0x7fff
	v_cmp_o_f32_e64 s5, v35, v35
	v_bfe_u32 v36, v33, 16, 1
	v_bfe_u32 v37, v32, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v35.h, 0
	v_cndmask_b16 v3.h, 0x7fff, v34.h, s5
	v_bfe_u32 v34, v31, 16, 1
	v_add3_u32 v36, v33, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v32, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v32, v32
	v_add3_u32 v32, v31, v34, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_bfe_u32 v31, v30, 16, 1
	v_bfe_u32 v34, v29, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s5
	v_add3_u32 v31, v30, v31, 0x7fff
	v_add3_u32 v30, v29, v34, 0x7fff
	v_mov_b16_e32 v34.l, v27.h
	v_mov_b16_e32 v34.h, v35.h
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s6
	v_mov_b16_e32 v35.l, v26.h
	v_cmp_o_f32_e64 s5, v29, v29
	v_bfe_u32 v29, v28, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v31.h, vcc_lo
	v_and_b32_e32 v31, 1, v34
	v_and_b32_e32 v34, 1, v35
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_add3_u32 v29, v28, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_add3_u32 v28, v27, v31, 0x7fff
	v_mov_b16_e32 v35.l, v25.h
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s5
	v_add3_u32 v31, v26, v34, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_mov_b16_e32 v26.l, v24.h
	v_mov_b16_e32 v26.h, v35.h
	v_cndmask_b16 v30.h, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s6
	v_and_b32_e32 v28, 1, v35
	v_mov_b16_e32 v35.l, v23.h
	v_mov_b16_e32 v29.l, v22.h
	v_mov_b16_e32 v29.h, v35.h
	v_cndmask_b16 v27.h, 0x7fff, v31.h, s5
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v28, v25, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_and_b32_e32 v25, 1, v35
	v_and_b32_e32 v29, 1, v29
	v_mov_b16_e32 v31.l, v21.h
	v_mov_b16_e32 v31.h, v35.h
	v_mov_b16_e32 v35.l, v4.h
	v_add3_u32 v26, v24, v26, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_add3_u32 v24, v22, v29, 0x7fff
	v_and_b32_e32 v29, 1, v31
	v_and_b32_e32 v31, 1, v35
	v_add3_u32 v25, v23, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v23, v23
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v22, v21, v29, 0x7fff
	v_add3_u32 v23, v4, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v4, v4
	v_cmp_o_f32_e64 s8, v21, v21
	v_cndmask_b16 v28.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v25.h, s5
	v_cndmask_b16 v4.l, 0x7fff, v24.h, s6
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s7
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s8
	v_cndmask_b32_e64 v22, v32, v3, s0
	v_cndmask_b32_e64 v3, v3, v32, s0
	v_cndmask_b32_e64 v23, v33, v30, s0
	v_cndmask_b32_e64 v26, v4, v27, s0
	v_cndmask_b32_e64 v4, v27, v4, s0
	v_cndmask_b32_e64 v25, v28, v21, s0
	v_cndmask_b32_e64 v24, v30, v33, s0
	v_permlanex16_b32 v3, v3, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v23, s50, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v28, v21, v28, s0
	v_permlanex16_b32 v4, v4, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v25, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v21, v3, v22, v8
	v_perm_b32 v22, v3, v22, v9
	v_perm_b32 v23, v27, v24, v8
	v_perm_b32 v24, v27, v24, v9
	v_add_lshl_u32 v3, s14, v1, 1
	v_perm_b32 v25, v4, v26, v8
	v_perm_b32 v26, v4, v26, v9
	v_perm_b32 v27, v29, v28, v8
	v_perm_b32 v28, v29, v28, v9
	v_add_lshl_u32 v4, s14, v2, 1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[21:24], v3, s[24:27], 0 offen
	buffer_store_b128 v[25:28], v4, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s44
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s5, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s6, s5, s11
	s_xor_b32 s7, s7, s10
	s_mul_i32 s8, s6, s9
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v21, 0
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s6, 1
	s_sub_i32 s14, s5, s9
	s_cmp_ge_u32 s5, s9
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	s_cselect_b32 s6, s8, s6
	s_cselect_b32 s5, s14, s5
	s_add_i32 s8, s6, 1
	s_cmp_ge_u32 s5, s9
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	s_cselect_b32 s5, s8, s6
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	s_xor_b32 s5, s5, s7
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	s_sub_i32 s7, s5, s7
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s5, s33, s7
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s15, s7, s34
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s14, s5, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s15, s2, s15
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s14
	s_abs_i32 s17, s15
	s_cvt_f32_u32 s5, s6
	s_sub_i32 s8, 0, s6
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v3, s5
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_readfirstlane_b32 s5, v3
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s17, s5
	s_xor_b32 s5, s15, s14
	s_mul_i32 s18, s8, s6
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s17, s17, s18
	s_add_i32 s18, s8, 1
	s_sub_i32 s19, s17, s6
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s8, s18, s8
	s_cselect_b32 s17, s19, s17
	s_add_i32 s18, s8, 1
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s6, s18, s8
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s8, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s8, s5
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s14, s6, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s14, s15, s14
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s14, s14, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s7, s14, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v3, s8, 8, v12
	s_lshl_b32 s14, s5, 8
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v4, s7, v7
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v21, s7, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v36, s14, v3
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v3, s7, v5
	v_lshl_add_u32 v22, s8, 7, v13
	v_mul_lo_u32 v37, s48, v4
	v_mul_lo_u32 v38, s48, v21
	v_mad_u64_u32 v[3:4], null, s45, v3, v[0:1]
	s_lshl_b32 s5, s5, 7
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_subrev_nc_u32_e32 v39, s5, v22
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v21, 0
	s_mov_b32 s8, 0
	s_mov_b32 s51, s46
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_add_nc_u32_e32 v40, s8, v0
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v41, s8, v10
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s30
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s45, v40
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v40, s8, v3
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s5, s45, v41
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s15, s31
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s42, s30
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s43, s31
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 s5, s5, s4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s51, s51, -1
	s_add_i32 s8, s8, 32
	s_cmp_lg_u32 s51, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b32 v42, v40, s[28:31], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e64 v40, 0x80000000, v39, s5
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v39, s49, v39
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b64 v[40:41], v40, s[36:39], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v14, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[56:59], v15 offset1:2
	ds_load_2addr_stride64_b64 v[60:63], v16 offset1:2
	ds_load_2addr_stride64_b64 v[64:67], v17 offset1:2
	ds_load_2addr_stride64_b64 v[68:71], v18 offset1:2
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v19, v[40:41]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v40, v20 offset:640
	ds_load_u8 v41, v20 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	ds_load_u8 v41, v20 offset:896
	ds_load_u8 v42, v20 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v41, 16, v40
	ds_load_u8 v40, v20 offset:128
	ds_load_u8 v41, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	ds_load_u8 v41, v20 offset:384
	ds_load_u8 v42, v20 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v72, v41, 16, v40
	v_dual_mov_b32 v47, s23 :: v_dual_mov_b32 v44, s20
	v_dual_mov_b32 v46, s22 :: v_dual_mov_b32 v45, s21
	v_dual_mov_b32 v43, s19 :: v_dual_mov_b32 v42, s18
	v_dual_mov_b32 v41, s17 :: v_dual_mov_b32 v40, s16
	v_wmma_i32_16x16x16_iu4 v[48:55], v[72:73], v[56:57], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v56, v20 offset:1664
	ds_load_u8 v57, v20 offset:1536
	v_wmma_i32_16x16x16_iu4 v[40:47], v[72:73], v[58:59], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v20 offset:1920
	ds_load_u8 v74, v20 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v74, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v56
	ds_load_u8 v56, v20 offset:1152
	ds_load_u8 v74, v20 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v74, v56, 0xc0c0004
	ds_load_u8 v74, v20 offset:1408
	ds_load_u8 v75, v20 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v56, v74, 16, v56
	v_wmma_i32_16x16x16_iu4 v[48:55], v[56:57], v[60:61], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[56:57], v[62:63], v[40:47] neg_lo:[1,1,0]
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_clause 0x1
	buffer_load_u16 v56, v38, s[12:15], 0 offen
	buffer_load_u16 v57, v37, s[12:15], 0 offen
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v60, v20 offset:2688
	ds_load_u8 v61, v20 offset:2560
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v38, 2, v38
	v_add_nc_u32_e32 v37, 2, v37
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v20 offset:2944
	ds_load_u8 v74, v20 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v74, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v61, 16, v60
	ds_load_u8 v60, v20 offset:2176
	ds_load_u8 v74, v20 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v74, v60, 0xc0c0004
	ds_load_u8 v74, v20 offset:2432
	ds_load_u8 v75, v20 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v74, 16, v60
	v_wmma_i32_16x16x16_iu4 v[48:55], v[60:61], v[64:65], v[48:55] neg_lo:[1,1,0]
	ds_load_u8 v64, v20 offset:3712
	ds_load_u8 v65, v20 offset:3584
	v_wmma_i32_16x16x16_iu4 v[40:47], v[60:61], v[66:67], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v20 offset:3968
	ds_load_u8 v74, v20 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v74, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v65, 16, v64
	ds_load_u8 v64, v20 offset:3200
	ds_load_u8 v74, v20 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v74, v64, 0xc0c0004
	ds_load_u8 v74, v20 offset:3456
	ds_load_u8 v75, v20 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v74, 16, v64
	v_wmma_i32_16x16x16_iu4 v[40:47], v[64:65], v[70:71], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[64:65], v[68:69], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v58, v11, v36
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v56, 16, v56
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v43, v57, v43 :: v_dual_add_nc_u32 v36, s47, v36
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v59, v58, s[40:43], 0 offen
	buffer_load_u16 v60, v58, s[40:43], 0 offen offset:4
	buffer_load_u16 v61, v58, s[40:43], 0 offen offset:8
	buffer_load_u16 v62, v58, s[40:43], 0 offen offset:12
	buffer_load_u16 v63, v58, s[40:43], 0 offen offset:16
	buffer_load_u16 v64, v58, s[40:43], 0 offen offset:20
	buffer_load_u16 v65, v58, s[40:43], 0 offen offset:24
	buffer_load_u16 v58, v58, s[40:43], 0 offen offset:28
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v41, v57, v41 :: v_dual_mul_f32 v48, v48, v56
	v_mul_f32_e32 v49, v49, v56
	v_mul_f32_e32 v50, v50, v56
	v_mul_f32_e32 v51, v51, v56
	v_mul_f32_e32 v52, v52, v56
	v_mul_f32_e32 v53, v53, v56
	v_dual_mul_f32 v54, v54, v56 :: v_dual_mul_f32 v45, v57, v45
	v_dual_mul_f32 v55, v55, v56 :: v_dual_mul_f32 v42, v57, v42
	v_mul_f32_e32 v47, v57, v47
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v59, 16, v59
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v56, 16, v60
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v40, v57, v40 :: v_dual_lshlrev_b32 v61, 16, v61
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v60, 16, v62
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v63, 16, v63
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v62, 16, v64
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v58, 16, v58
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v35, v49, v56 :: v_dual_lshlrev_b32 v64, 16, v65
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v46, v57, v46 :: v_dual_fmac_f32 v33, v50, v61
	v_dual_mul_f32 v44, v57, v44 :: v_dual_fmac_f32 v27, v40, v59
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v34, v48, v59 :: v_dual_fmac_f32 v25, v43, v60
	v_dual_fmac_f32 v31, v52, v63 :: v_dual_fmac_f32 v32, v51, v60
	v_fmac_f32_e32 v23, v45, v62
	v_dual_fmac_f32 v29, v54, v64 :: v_dual_fmac_f32 v30, v53, v62
	v_dual_fmac_f32 v21, v46, v64 :: v_dual_fmac_f32 v28, v55, v58
	v_fmac_f32_e32 v26, v41, v56
	v_fmac_f32_e32 v24, v42, v61
	v_fmac_f32_e32 v22, v44, v63
	v_fmac_f32_e32 v4, v47, v58
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp21:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 76
		.amdhsa_next_free_sgpr 52
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
		.amdhsa_inst_pref_size 26
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_vgpr, 76
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3272
; TotalNumSgprs: 54
; NumVgprs: 76
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 76
; Occupancy: 16
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
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	205                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	206                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	246                             ; DW_AT_call_line
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     76
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
