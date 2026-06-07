	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
	s_ashr_i32 s40, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s41, s40, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s41
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b64 s[20:21], s[0:1], 0x20
	v_and_b32_e32 v2, 16, v0
	v_dual_mov_b32 v8, 0x7632 :: v_dual_lshlrev_b32 v13, 2, v0
	v_dual_mov_b32 v7, 0x5410 :: v_dual_and_b32 v12, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s0, 0, v2
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v9, 4, v0
	v_add_nc_u32_e32 v6, 0, v13
	v_add_nc_u32_e32 v15, 0, v12
	v_cndmask_b32_e64 v2, 0x3276, v8, s0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v14, 0x70, v1
	v_and_b32_e32 v3, 0x78, v1
	v_cndmask_b32_e64 v1, 0x1054, v7, s0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v4, v9, 16, v12
	v_lshl_or_b32 v2, v2, 8, v2
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_lshl_or_b32 v9, s3, 5, v9
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s1, s13, 63
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s14, s13, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s15, s1, 31
	s_mov_b32 s24, s4
	s_lshr_b32 s4, s15, 26
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s13, s13, s14
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s4, s1, s4
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s42, s13, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s43, s4, 6
	s_cmp_gt_i32 s1, 63
	v_lshl_or_b32 v1, v1, 8, v1
	s_cselect_b32 s1, -1, 0
	s_abs_i32 s44, s40
	v_and_b32_e32 v11, 0x760076, v2
	s_cvt_f32_u32 s4, s44
	v_and_b32_e32 v10, 0x540054, v1
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v5, 32, v4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mul_lo_u32 v16, s34, v9
	v_rcp_iflag_f32_e32 v8, s4
	v_mad_u64_u32 v[1:2], null, s35, v4, v[3:4]
	s_and_b32 s25, s5, 0xffff
	v_mad_u64_u32 v[2:3], null, s35, v5, v[3:4]
	s_sub_i32 s5, 0, s44
	v_cndmask_b32_e64 v17, 0, 1, s1
	v_add_nc_u32_e32 v7, 0, v4
	v_add_nc_u32_e32 v13, v6, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s4, v8
	v_lshl_or_b32 v8, v10, 4, v10
	v_lshl_or_b32 v10, v11, 4, v11
	v_mul_lo_u32 v11, s35, v9
	v_cmp_ne_u32_e64 s1, 1, v17
	s_mul_f32 s4, s4, 0x4f7ffffe
	v_and_b32_e32 v3, 0x5040504, v8
	v_and_b32_e32 v8, 0x7060706, v10
	v_lshrrev_b32_e32 v10, 3, v0
	s_cvt_u32_f32 s4, s4
	v_and_b32_e32 v0, 0xe0, v0
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v11, v12, 3, v11
	v_lshl_add_u32 v12, v12, 2, v16
	s_mul_i32 s5, s5, s4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_and_b32_e32 v10, 2, v10
	s_mul_hi_u32 s3, s4, s5
	v_add_nc_u32_e32 v14, v15, v14
	s_add_i32 s46, s4, s3
	v_cmp_gt_i32_e64 s3, 32, v9
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b32 s12, 0
	s_mov_b32 s28, s6
	s_and_b32 s29, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_and_b32 s21, s21, 0xffff
	s_ashr_i32 s45, s40, 31
	s_lshl_b32 s47, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s48, s43, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s49, s35, 5
	s_lshl_b32 s34, s34, 5
	s_mov_b32 s50, 0x76543210
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v31, v29, 16, 1
	v_bfe_u32 v32, v30, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s4, s4, 7
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_mul_i32 s5, s5, s35
	.loc	1 277 13 is_stmt 0              ; generate_amdgcn.py:277:13
	v_add3_u32 v31, v29, v31, 0x7fff
	v_add3_u32 v29, v30, v32, 0x7fff
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s10, s5, s4
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v30, v30
	v_bfe_u32 v32, v28, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v31.h, vcc_lo
	v_bfe_u32 v31, v27, 16, 1
	v_bfe_u32 v33, v26, 16, 1
	v_mov_b16_e32 v30.h, 0
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s4
	v_add3_u32 v32, v28, v32, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_add3_u32 v28, v27, v31, 0x7fff
	v_cmp_o_f32_e64 s4, v27, v27
	v_add3_u32 v27, v26, v33, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_bfe_u32 v26, v25, 16, 1
	v_bfe_u32 v31, v24, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v32.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s4
	v_add3_u32 v26, v25, v26, 0x7fff
	v_add3_u32 v25, v24, v31, 0x7fff
	v_mov_b16_e32 v31.l, v22.h
	v_mov_b16_e32 v31.h, v30.h
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s5
	v_mov_b16_e32 v30.l, v21.h
	v_cmp_o_f32_e64 s4, v24, v24
	v_bfe_u32 v24, v23, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v26.h, vcc_lo
	v_and_b32_e32 v26, 1, v31
	v_and_b32_e32 v31, 1, v30
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_add3_u32 v24, v23, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v23, v22, v26, 0x7fff
	v_mov_b16_e32 v30.l, v20.h
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s4
	v_add3_u32 v26, v21, v31, 0x7fff
	v_cmp_o_f32_e64 s4, v21, v21
	v_mov_b16_e32 v21.l, v19.h
	v_mov_b16_e32 v21.h, v30.h
	v_cndmask_b16 v25.h, 0x7fff, v24.h, vcc_lo
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s5
	v_and_b32_e32 v23, 1, v30
	v_mov_b16_e32 v30.l, v18.h
	v_mov_b16_e32 v24.l, v17.h
	v_mov_b16_e32 v24.h, v30.h
	v_cndmask_b16 v22.h, 0x7fff, v26.h, s4
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v23, v20, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_and_b32_e32 v20, 1, v30
	v_and_b32_e32 v24, 1, v24
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v26.h, v30.h
	v_mov_b16_e32 v30.l, v15.h
	v_add3_u32 v21, v19, v21, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v23.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v19, v17, v24, 0x7fff
	v_and_b32_e32 v24, 1, v26
	v_and_b32_e32 v26, 1, v30
	v_add3_u32 v20, v18, v20, 0x7fff
	v_cmp_o_f32_e64 s4, v18, v18
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v17, v16, v24, 0x7fff
	v_add3_u32 v18, v15, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v23.l, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v20.h, s4
	v_cndmask_b16 v15.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s6
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s7
	v_cndmask_b32_e64 v18, v29, v27, s0
	v_cndmask_b32_e64 v20, v28, v25, s0
	v_cndmask_b32_e64 v21, v15, v22, s0
	v_cndmask_b32_e64 v15, v22, v15, s0
	v_cndmask_b32_e64 v22, v23, v16, s0
	v_cndmask_b32_e64 v17, v27, v29, s0
	v_cndmask_b32_e64 v19, v25, v28, s0
	v_permlanex16_b32 v18, v18, s50, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v23, v16, v23, s0
	v_permlanex16_b32 v20, v20, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v15, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v18, v17, v3
	v_perm_b32 v16, v18, v17, v8
	v_perm_b32 v17, v20, v19, v3
	v_perm_b32 v18, v20, v19, v8
	v_perm_b32 v19, v24, v21, v3
	v_perm_b32 v20, v24, v21, v8
	v_perm_b32 v21, v22, v23, v3
	v_perm_b32 v22, v22, v23, v8
	v_add_lshl_u32 v23, s10, v1, 1
	v_add_lshl_u32 v24, s10, v2, 1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[15:18], v23, s[20:23], 0 offen
	buffer_store_b128 v[19:22], v24, s[20:23], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s41
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s4, s2
	s_ashr_i32 s6, s2, 31
	s_mul_hi_u32 s5, s4, s46
	s_xor_b32 s6, s6, s45
	s_mul_i32 s7, s5, s44
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	s_sub_i32 s4, s4, s7
	s_add_i32 s7, s5, 1
	s_sub_i32 s10, s4, s44
	s_cmp_ge_u32 s4, s44
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	s_cselect_b32 s5, s7, s5
	s_cselect_b32 s4, s10, s4
	s_add_i32 s7, s5, 1
	s_cmp_ge_u32 s4, s44
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	s_cselect_b32 s4, s7, s5
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	s_xor_b32 s4, s4, s6
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	s_sub_i32 s5, s4, s6
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s4, s33, s5
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s11, s5, s40
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s10, s4, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s11, s2, s11
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s4, s10
	s_abs_i32 s13, s11
	s_cvt_f32_u32 s6, s4
	s_sub_i32 s7, 0, s4
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v15, s6
	v_mov_b32_e32 v16, 0
	v_readfirstlane_b32 s6, v15
	v_mov_b32_e32 v15, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s13, s6
	s_xor_b32 s6, s11, s10
	s_mul_i32 s14, s7, s4
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s13, s13, s14
	s_add_i32 s14, s7, 1
	s_sub_i32 s15, s13, s4
	s_cmp_ge_u32 s13, s4
	s_cselect_b32 s7, s14, s7
	s_cselect_b32 s13, s15, s13
	s_add_i32 s14, s7, 1
	s_cmp_ge_u32 s13, s4
	s_cselect_b32 s4, s14, s7
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s7, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s7, s6
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s10, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s10, s11, s10
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s10, s10, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s5, s10, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v16, s5, v5
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v17, s5, v4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_or_b32 v15, s7, 8, v0
	v_lshl_add_u32 v18, s7, 7, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v32, s48, v16
	v_mul_lo_u32 v33, s48, v17
	s_lshl_b32 s10, s6, 8
	s_lshl_b32 s6, s6, 7
	v_subrev_nc_u32_e32 v31, s10, v15
	v_subrev_nc_u32_e32 v34, s6, v18
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v35, s5, v12
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v15, 0
	s_mov_b32 s6, 0
	s_mov_b32 s7, s43
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 271 31 is_stmt 1              ; generate_amdgcn.py:271:31
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v36, s6, v9
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s42, v36
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s7, s7, -1
	s_add_i32 s6, s6, 32
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cmp_lg_u32 s7, 0
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	v_dual_cndmask_b32 v36, 0x80000000, v35 :: v_dual_cndmask_b32 v37, 0x80000000, v34
	buffer_load_b32 v38, v36, s[24:27], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b64 v[36:37], v37, s[28:31], 0 offen
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v34, s49, v34
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt vmcnt(1)
	ds_store_b32 v6, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v38, v7 offset:448
	ds_load_u8 v39, v7 offset:384
	ds_load_u8 v40, v7 offset:320
	ds_load_u8 v41, v7 offset:256
	ds_load_u8 v42, v7 offset:480
	ds_load_u8 v43, v7 offset:416
	ds_load_u8 v44, v7 offset:352
	ds_load_u8 v45, v7 offset:288
	ds_load_u8 v46, v7 offset:192
	ds_load_u8 v47, v7 offset:128
	ds_load_u8 v48, v7 offset:64
	ds_load_u8 v49, v7 offset:224
	ds_load_u8 v50, v7 offset:160
	ds_load_u8 v51, v7 offset:96
	ds_load_u8 v52, v7
	ds_load_u8 v53, v7 offset:32
	ds_load_u8 v54, v7 offset:704
	ds_load_u8 v55, v7 offset:640
	ds_load_u8 v56, v7 offset:576
	ds_load_u8 v57, v7 offset:512
	ds_load_u8 v58, v7 offset:736
	ds_load_u8 v59, v7 offset:672
	ds_load_u8 v60, v7 offset:608
	ds_load_u8 v61, v7 offset:544
	ds_load_u8 v62, v7 offset:960
	ds_load_u8 v63, v7 offset:896
	ds_load_u8 v64, v7 offset:832
	ds_load_u8 v65, v7 offset:768
	ds_load_u8 v66, v7 offset:992
	ds_load_u8 v67, v7 offset:928
	ds_load_u8 v68, v7 offset:864
	ds_load_u8 v69, v7 offset:800
	ds_load_u8 v70, v7 offset:1216
	ds_load_u8 v71, v7 offset:1152
	ds_load_u8 v72, v7 offset:1088
	ds_load_u8 v73, v7 offset:1024
	ds_load_u8 v74, v7 offset:1248
	ds_load_u8 v75, v7 offset:1184
	ds_load_u8 v76, v7 offset:1120
	ds_load_u8 v77, v7 offset:1056
	ds_load_u8 v78, v7 offset:1472
	ds_load_u8 v79, v7 offset:1408
	ds_load_u8 v80, v7 offset:1344
	ds_load_u8 v81, v7 offset:1280
	ds_load_u8 v82, v7 offset:1504
	ds_load_u8 v83, v7 offset:1440
	ds_load_u8 v84, v7 offset:1376
	ds_load_u8 v85, v7 offset:1312
	ds_load_u8 v86, v7 offset:1728
	ds_load_u8 v87, v7 offset:1664
	ds_load_u8 v88, v7 offset:1600
	ds_load_u8 v89, v7 offset:1536
	ds_load_u8 v90, v7 offset:1760
	ds_load_u8 v91, v7 offset:1696
	ds_load_u8 v92, v7 offset:1632
	ds_load_u8 v93, v7 offset:1568
	ds_load_u8 v94, v7 offset:1984
	ds_load_u8 v95, v7 offset:1920
	ds_load_u8 v96, v7 offset:1856
	ds_load_u8 v97, v7 offset:1792
	ds_load_u8 v98, v7 offset:2016
	ds_load_u8 v99, v7 offset:1952
	ds_load_u8 v100, v7 offset:1888
	ds_load_u8 v101, v7 offset:1824
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v13, v[36:37]
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v36, v41, v40, 0xc0c0004
	v_perm_b32 v37, v39, v38, 0xc0c0004
	v_perm_b32 v38, v52, v48, 0xc0c0004
	v_perm_b32 v39, v47, v46, 0xc0c0004
	v_perm_b32 v40, v65, v64, 0xc0c0004
	v_perm_b32 v41, v63, v62, 0xc0c0004
	v_perm_b32 v46, v57, v56, 0xc0c0004
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v48, v55, v54, 0xc0c0004
	ds_load_u8 v52, v14 offset:640
	ds_load_u8 v54, v14 offset:896
	ds_load_u8 v55, v14 offset:768
	ds_load_u8 v63, v14 offset:512
	ds_load_u8 v65, v14 offset:128
	v_perm_b32 v56, v81, v80, 0xc0c0004
	v_perm_b32 v62, v73, v72, 0xc0c0004
	v_perm_b32 v64, v71, v70, 0xc0c0004
	ds_load_u8 v71, v14 offset:384
	ds_load_u8 v73, v14 offset:256
	v_perm_b32 v80, v87, v86, 0xc0c0004
	ds_load_u8 v81, v14 offset:1664
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v14 offset:1920
	v_perm_b32 v86, v43, v42, 0xc0c0004
	ds_load_u8 v42, v14 offset:1792
	ds_load_u8 v43, v14 offset:1536
	v_perm_b32 v51, v53, v51, 0xc0c0004
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v14 offset:1152
	ds_load_u8 v53, v14 offset:1408
	v_perm_b32 v68, v69, v68, 0xc0c0004
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v14 offset:1280
	v_perm_b32 v69, v61, v60, 0xc0c0004
	ds_load_u8 v60, v14 offset:1024
	v_perm_b32 v72, v95, v94, 0xc0c0004
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v14 offset:3712
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v94, v63, v52, 0xc0c0004
	ds_load_u8 v52, v14 offset:3968
	ds_load_u8 v63, v14 offset:3200
	v_perm_b32 v95, v55, v54, 0xc0c0004
	ds_load_u8 v54, v14 offset:3840
	ds_load_u8 v55, v14 offset:3584
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v71, v73, v71, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v73, v43, v81, 0xc0c0004
	ds_load_u8 v43, v14 offset:3328
	v_perm_b32 v45, v42, v45, 0xc0c0004
	v_perm_b32 v57, v79, v78, 0xc0c0004
	v_perm_b32 v78, v89, v88, 0xc0c0004
	v_perm_b32 v87, v59, v58, 0xc0c0004
	ds_load_u8 v58, v14 offset:2688
	ds_load_u8 v59, v14 offset:2944
	ds_load_u8 v61, v14 offset:2816
	ds_load_u8 v89, v14 offset:2304
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v50, v60, v50, 0xc0c0004
	ds_load_u8 v60, v14 offset:3456
	ds_load_u8 v42, v14 offset:3072
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v14 offset:2560
	ds_load_u8 v85, v14 offset:2432
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v14 offset:2176
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v14 offset:2048
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v47, v10, v31
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v70, v97, v96, 0xc0c0004
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_clause 0x1
	buffer_load_u16 v96, v33, s[8:11], 0 offen
	buffer_load_u16 v97, v32, s[8:11], 0 offen
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_perm_b32 v83, v101, v100, 0xc0c0004
	v_perm_b32 v81, v67, v53, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v91, v55, v91, 0xc0c0004
	v_perm_b32 v101, v54, v52, 0xc0c0004
	v_lshl_or_b32 v53, v37, 16, v36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v105, v43, v60, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v103, v42, v63, 0xc0c0004
	v_lshl_or_b32 v52, v39, 16, v38
	v_lshl_or_b32 v55, v41, 16, v40
	v_dual_mov_b32 v43, s19 :: v_dual_mov_b32 v38, s14
	v_perm_b32 v88, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v89, v85, 0xc0c0004
	v_mov_b32_e32 v42, s18
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x4
	buffer_load_u16 v99, v47, s[36:39], 0 offen
	buffer_load_u16 v89, v47, s[36:39], 0 offen offset:8
	buffer_load_u16 v100, v47, s[36:39], 0 offen offset:12
	buffer_load_u16 v102, v47, s[36:39], 0 offen offset:16
	buffer_load_u16 v104, v47, s[36:39], 0 offen offset:20
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v93, v75, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v93, v47, s[36:39], 0 offen offset:4
	buffer_load_u16 v106, v47, s[36:39], 0 offen offset:28
	buffer_load_u16 v107, v47, s[36:39], 0 offen offset:24
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v79, v14
	v_perm_b32 v98, v61, v59, 0xc0c0004
	v_dual_mov_b32 v40, s16 :: v_dual_add_nc_u32 v31, s47, v31
	v_lshl_or_b32 v57, v57, 16, v56
	v_lshl_or_b32 v56, v64, 16, v62
	v_mov_b32_e32 v41, s17
	v_dual_mov_b32 v39, s15 :: v_dual_mov_b32 v36, s12
	v_mov_b32_e32 v37, s13
	v_lshl_or_b32 v61, v86, 16, v44
	v_lshl_or_b32 v60, v49, 16, v51
	v_lshl_or_b32 v63, v66, 16, v68
	v_lshl_or_b32 v62, v87, 16, v69
	v_lshl_or_b32 v69, v95, 16, v94
	v_perm_b32 v77, v77, v58, 0xc0c0004
	v_lshl_or_b32 v54, v48, 16, v46
	v_lshl_or_b32 v59, v72, 16, v70
	v_lshl_or_b32 v70, v81, 16, v50
	v_lshl_or_b32 v64, v74, 16, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v79, v65, 0xc0c0004
	v_lshl_or_b32 v65, v82, 16, v84
	v_lshl_or_b32 v72, v85, 16, v75
	v_lshl_or_b32 v58, v80, 16, v78
	v_lshl_or_b32 v67, v88, 16, v83
	v_lshl_or_b32 v68, v71, 16, v79
	v_lshl_or_b32 v71, v45, 16, v73
	v_lshl_or_b32 v73, v98, 16, v77
	v_lshl_or_b32 v66, v90, 16, v92
	v_lshl_or_b32 v75, v101, 16, v91
	v_wmma_i32_16x16x16_iu4 v[44:51], v[68:69], v[52:53], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[36:43], v[68:69], v[60:61], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v105, 16, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[70:71], v[54:55], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[36:43], v[70:71], v[62:63], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[72:73], v[56:57], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[36:43], v[72:73], v[64:65], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[74:75], v[58:59], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[36:43], v[74:75], v[66:67], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v53, 16, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v39, v53, v39 :: v_dual_lshlrev_b32 v52, 16, v96
	v_dual_mul_f32 v44, v44, v52 :: v_dual_add_nc_u32 v35, s34, v35
	v_dual_mul_f32 v46, v46, v52 :: v_dual_add_nc_u32 v33, 2, v33
	v_mul_f32_e32 v45, v45, v52
	v_mul_f32_e32 v47, v47, v52
	v_mul_f32_e32 v48, v48, v52
	v_dual_mul_f32 v37, v53, v37 :: v_dual_add_nc_u32 v32, 2, v32
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v50, v50, v52 :: v_dual_lshlrev_b32 v55, 16, v99
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v36, v53, v36 :: v_dual_lshlrev_b32 v57, 16, v89
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v41, v53, v41 :: v_dual_lshlrev_b32 v56, 16, v100
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v43, v53, v43 :: v_dual_lshlrev_b32 v58, 16, v104
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v54, 16, v93
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v40, v53, v40 :: v_dual_lshlrev_b32 v59, 16, v102
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v60, 16, v106
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v38, v53, v38 :: v_dual_lshlrev_b32 v61, 16, v107
	v_dual_mul_f32 v49, v49, v52 :: v_dual_fmac_f32 v28, v46, v57
	v_dual_mul_f32 v51, v51, v52 :: v_dual_mul_f32 v42, v53, v42
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v29, v44, v55 :: v_dual_fmac_f32 v30, v45, v54
	v_dual_fmac_f32 v27, v47, v56 :: v_dual_fmac_f32 v26, v48, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v25, v49, v58 :: v_dual_fmac_f32 v24, v50, v61
	v_dual_fmac_f32 v23, v51, v60 :: v_dual_fmac_f32 v22, v36, v55
	v_dual_fmac_f32 v21, v37, v54 :: v_dual_fmac_f32 v20, v39, v56
	v_dual_fmac_f32 v19, v38, v57 :: v_dual_fmac_f32 v18, v41, v58
	v_dual_fmac_f32 v17, v40, v59 :: v_dual_fmac_f32 v16, v42, v61
	v_fmac_f32_e32 v15, v43, v60
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 108
		.amdhsa_next_free_sgpr 51
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
		.amdhsa_inst_pref_size 33
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_vgpr, 108
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4156
; TotalNumSgprs: 53
; NumVgprs: 108
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 108
; Occupancy: 12
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     108
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
