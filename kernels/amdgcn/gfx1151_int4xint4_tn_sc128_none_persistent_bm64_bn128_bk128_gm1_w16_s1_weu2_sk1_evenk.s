	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
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
	s_load_b32 s12, s[0:1], 0x38
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b64 s[20:21], s[0:1], 0x20
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v8, 15, v0
	v_and_b32_e32 v5, 16, v0
	v_and_b32_e32 v13, 7, v0
	v_lshrrev_b32_e32 v11, 3, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v9, 0x70, v2
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v4, v1, 16, v8
	v_mov_b32_e32 v1, 0x5410
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v3, 0x78, v2
	v_cmp_eq_u32_e64 s0, 0, v5
	v_mov_b32_e32 v2, 0x7632
	v_add3_u32 v8, 0, v8, v9
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v5, 32, v4
	v_lshlrev_b32_e32 v14, 3, v0
	v_cndmask_b32_e64 v1, 0x1054, v1, s0
	v_cndmask_b32_e64 v2, 0x3276, v2, s0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s1, s12, 0x7f
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s13, s12, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s14, s1, 31
	s_mov_b32 s24, s4
	s_lshr_b32 s4, s14, 25
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s12, s12, s13
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s4, s1, s4
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s42, s12, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s43, s4, 7
	s_cmpk_gt_i32 s1, 0x7f
	v_lshl_or_b32 v1, v1, 8, v1
	s_cselect_b32 s1, -1, 0
	s_abs_i32 s44, s40
	v_lshl_or_b32 v2, v2, 8, v2
	s_cvt_f32_u32 s4, s44
	v_and_b32_e32 v9, 0x540054, v1
	s_and_b32 s25, s5, 0xffff
	s_sub_i32 s5, 0, s44
	v_rcp_iflag_f32_e32 v10, s4
	v_and_b32_e32 v12, 0x760076, v2
	v_lshl_or_b32 v9, v9, 4, v9
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[1:2], null, s35, v4, v[3:4]
	v_mad_u64_u32 v[2:3], null, s35, v5, v[3:4]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v3, 0x5040504, v9
	v_add_nc_u32_e32 v6, 0, v14
	v_cndmask_b32_e64 v16, 0, 1, s1
	v_readfirstlane_b32 s4, v10
	v_lshl_or_b32 v10, v12, 4, v12
	v_add_nc_u32_e32 v7, 0, v4
	v_and_b32_e32 v0, 0xe0, v0
	v_cmp_ne_u32_e64 s1, 1, v16
	s_mul_f32 s4, s4, 0x4f7ffffe
	v_and_b32_e32 v9, 0x7060706, v10
	v_lshl_or_b32 v10, s3, 6, v11
	v_and_b32_e32 v11, 2, v11
	s_cvt_u32_f32 s4, s4
	v_add_nc_u32_e32 v14, v6, v14
	s_mov_b32 s27, 0x31027000
	v_mul_lo_u32 v12, s35, v10
	v_mul_lo_u32 v15, s34, v10
	s_mul_i32 s5, s5, s4
	s_mov_b32 s26, 0x7ffffffe
	s_mul_hi_u32 s3, s4, s5
	s_mov_b32 s28, s6
	s_add_i32 s46, s4, s3
	v_cmp_gt_i32_e64 s3, 64, v10
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v12, v13, 4, v12
	v_lshl_add_u32 v13, v13, 3, v15
	s_and_b32 s29, s7, 0xffff
	s_mov_b32 s12, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_and_b32 s21, s21, 0xffff
	s_ashr_i32 s45, s40, 31
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s47, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s48, s43, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s49, s35, 6
	s_lshl_b32 s34, s34, 6
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
	v_perm_b32 v16, v18, v17, v9
	v_perm_b32 v17, v20, v19, v3
	v_perm_b32 v18, v20, v19, v9
	v_perm_b32 v19, v24, v21, v3
	v_perm_b32 v20, v24, v21, v9
	v_perm_b32 v21, v22, v23, v3
	v_perm_b32 v22, v22, v23, v9
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
	v_lshl_add_u32 v18, s7, 7, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v32, s48, v16
	v_mul_lo_u32 v33, s48, v17
	s_lshl_b32 s10, s6, 8
	s_lshl_b32 s6, s6, 7
	v_subrev_nc_u32_e32 v31, s10, v15
	v_subrev_nc_u32_e32 v34, s6, v18
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v35, s5, v13
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
	v_add_nc_u32_e32 v36, s6, v10
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
	s_add_i32 s6, s6, 64
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cmp_lg_u32 s7, 0
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	v_cndmask_b32_e32 v36, 0x80000000, v35, vcc_lo
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e32 v38, 0x80000000, v34, vcc_lo
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	buffer_load_b64 v[36:37], v36, s[24:27], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b128 v[164:167], v38, s[28:31], 0 offen
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v35, s34, v35
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt vmcnt(1)
	ds_store_b64 v6, v[36:37]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v147, v7 offset:448
	ds_load_u8 v151, v7 offset:384
	ds_load_u8 v156, v7 offset:320
	ds_load_u8 v159, v7 offset:256
	ds_load_u8 v144, v7 offset:480
	ds_load_u8 v145, v7 offset:416
	ds_load_u8 v150, v7 offset:352
	ds_load_u8 v153, v7 offset:288
	ds_load_u8 v155, v7 offset:192
	ds_load_u8 v158, v7 offset:128
	ds_load_u8 v162, v7 offset:64
	ds_load_u8 v146, v7 offset:224
	ds_load_u8 v149, v7 offset:160
	ds_load_u8 v154, v7 offset:96
	ds_load_u8 v163, v7
	ds_load_u8 v161, v7 offset:32
	ds_load_u8 v140, v7 offset:704
	ds_load_u8 v141, v7 offset:640
	ds_load_u8 v142, v7 offset:576
	ds_load_u8 v143, v7 offset:512
	ds_load_u8 v132, v7 offset:736
	ds_load_u8 v133, v7 offset:672
	ds_load_u8 v134, v7 offset:608
	ds_load_u8 v135, v7 offset:544
	ds_load_u8 v148, v7 offset:960
	ds_load_u8 v152, v7 offset:896
	ds_load_u8 v157, v7 offset:832
	ds_load_u8 v160, v7 offset:768
	ds_load_u8 v136, v7 offset:992
	ds_load_u8 v137, v7 offset:928
	ds_load_u8 v138, v7 offset:864
	ds_load_u8 v139, v7 offset:800
	ds_load_u8 v116, v7 offset:1216
	ds_load_u8 v117, v7 offset:1152
	ds_load_u8 v118, v7 offset:1088
	ds_load_u8 v119, v7 offset:1024
	ds_load_u8 v36, v7 offset:1248
	ds_load_u8 v42, v7 offset:1184
	ds_load_u8 v48, v7 offset:1120
	ds_load_u8 v54, v7 offset:1056
	ds_load_u8 v120, v7 offset:1472
	ds_load_u8 v121, v7 offset:1408
	ds_load_u8 v123, v7 offset:1344
	ds_load_u8 v125, v7 offset:1280
	ds_load_u8 v60, v7 offset:1504
	ds_load_u8 v66, v7 offset:1440
	ds_load_u8 v72, v7 offset:1376
	ds_load_u8 v78, v7 offset:1312
	ds_load_u8 v122, v7 offset:1728
	ds_load_u8 v124, v7 offset:1664
	ds_load_u8 v126, v7 offset:1600
	ds_load_u8 v127, v7 offset:1536
	ds_load_u8 v37, v7 offset:1760
	ds_load_u8 v43, v7 offset:1696
	ds_load_u8 v49, v7 offset:1632
	ds_load_u8 v55, v7 offset:1568
	ds_load_u8 v128, v7 offset:1984
	ds_load_u8 v129, v7 offset:1920
	ds_load_u8 v130, v7 offset:1856
	ds_load_u8 v131, v7 offset:1792
	ds_load_u8 v61, v7 offset:2016
	ds_load_u8 v67, v7 offset:1952
	ds_load_u8 v73, v7 offset:1888
	ds_load_u8 v79, v7 offset:1824
	ds_load_u8 v84, v7 offset:2240
	ds_load_u8 v88, v7 offset:2176
	ds_load_u8 v92, v7 offset:2112
	ds_load_u8 v96, v7 offset:2048
	ds_load_u8 v38, v7 offset:2272
	ds_load_u8 v44, v7 offset:2208
	ds_load_u8 v50, v7 offset:2144
	ds_load_u8 v56, v7 offset:2080
	ds_load_u8 v100, v7 offset:2496
	ds_load_u8 v104, v7 offset:2432
	ds_load_u8 v108, v7 offset:2368
	ds_load_u8 v112, v7 offset:2304
	ds_load_u8 v62, v7 offset:2528
	ds_load_u8 v68, v7 offset:2464
	ds_load_u8 v74, v7 offset:2400
	ds_load_u8 v80, v7 offset:2336
	ds_load_u8 v85, v7 offset:2752
	ds_load_u8 v89, v7 offset:2688
	ds_load_u8 v93, v7 offset:2624
	ds_load_u8 v97, v7 offset:2560
	ds_load_u8 v39, v7 offset:2784
	ds_load_u8 v45, v7 offset:2720
	ds_load_u8 v51, v7 offset:2656
	ds_load_u8 v57, v7 offset:2592
	ds_load_u8 v101, v7 offset:3008
	ds_load_u8 v105, v7 offset:2944
	ds_load_u8 v109, v7 offset:2880
	ds_load_u8 v113, v7 offset:2816
	ds_load_u8 v63, v7 offset:3040
	ds_load_u8 v69, v7 offset:2976
	ds_load_u8 v75, v7 offset:2912
	ds_load_u8 v81, v7 offset:2848
	ds_load_u8 v86, v7 offset:3264
	ds_load_u8 v90, v7 offset:3200
	ds_load_u8 v94, v7 offset:3136
	ds_load_u8 v98, v7 offset:3072
	ds_load_u8 v40, v7 offset:3296
	ds_load_u8 v46, v7 offset:3232
	ds_load_u8 v52, v7 offset:3168
	ds_load_u8 v58, v7 offset:3104
	ds_load_u8 v102, v7 offset:3520
	ds_load_u8 v106, v7 offset:3456
	ds_load_u8 v110, v7 offset:3392
	ds_load_u8 v114, v7 offset:3328
	ds_load_u8 v64, v7 offset:3552
	ds_load_u8 v70, v7 offset:3488
	ds_load_u8 v76, v7 offset:3424
	ds_load_u8 v82, v7 offset:3360
	ds_load_u8 v87, v7 offset:3776
	ds_load_u8 v91, v7 offset:3712
	ds_load_u8 v95, v7 offset:3648
	ds_load_u8 v99, v7 offset:3584
	ds_load_u8 v41, v7 offset:3808
	ds_load_u8 v47, v7 offset:3744
	ds_load_u8 v53, v7 offset:3680
	ds_load_u8 v59, v7 offset:3616
	ds_load_u8 v103, v7 offset:4032
	ds_load_u8 v107, v7 offset:3968
	ds_load_u8 v111, v7 offset:3904
	ds_load_u8 v115, v7 offset:3840
	ds_load_u8 v65, v7 offset:4064
	ds_load_u8 v71, v7 offset:4000
	ds_load_u8 v77, v7 offset:3936
	ds_load_u8 v83, v7 offset:3872
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v14, v[164:167]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v165, v8 offset:640
	v_perm_b32 v156, v159, v156, 0xc0c0004
	ds_load_u8 v159, v8 offset:768
	v_perm_b32 v147, v151, v147, 0xc0c0004
	v_perm_b32 v151, v163, v162, 0xc0c0004
	ds_load_u8 v162, v8 offset:384
	ds_load_u8 v163, v8 offset:128
	v_perm_b32 v155, v158, v155, 0xc0c0004
	ds_load_u8 v158, v8 offset:896
	ds_load_u8 v166, v8 offset:512
	v_perm_b32 v144, v145, v144, 0xc0c0004
	v_perm_b32 v145, v161, v154, 0xc0c0004
	ds_load_u8 v161, v8 offset:256
	ds_load_u8 v167, v8
	v_perm_b32 v150, v153, v150, 0xc0c0004
	v_perm_b32 v146, v149, v146, 0xc0c0004
	ds_load_u8 v168, v8 offset:1664
	v_perm_b32 v157, v160, v157, 0xc0c0004
	ds_load_u8 v160, v8 offset:1152
	v_perm_b32 v148, v152, v148, 0xc0c0004
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v8 offset:1280
	ds_load_u8 v152, v8 offset:1024
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v164, v11, v31
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v140, v141, v140, 0xc0c0004
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v141, v33, s[8:11], 0 offen
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v138, v139, v138, 0xc0c0004
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v139, v32, s[8:11], 0 offen
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v153, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v149, v166, v165, 0xc0c0004
	ds_load_u8 v165, v8 offset:1792
	v_perm_b32 v125, v125, v123, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v158, v161, v162, 0xc0c0004
	ds_load_u8 v161, v8 offset:1920
	ds_load_u8 v159, v8 offset:1536
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v154, v167, v163, 0xc0c0004
	ds_load_u8 v163, v8 offset:1408
	v_perm_b32 v166, v121, v120, 0xc0c0004
	v_perm_b32 v167, v119, v118, 0xc0c0004
	v_perm_b32 v124, v124, v122, 0xc0c0004
	v_perm_b32 v136, v137, v136, 0xc0c0004
	v_perm_b32 v134, v135, v134, 0xc0c0004
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v152, v152, v160, 0xc0c0004
	v_perm_b32 v130, v131, v130, 0xc0c0004
	v_perm_b32 v128, v129, v128, 0xc0c0004
	v_perm_b32 v126, v127, v126, 0xc0c0004
	v_perm_b32 v108, v112, v108, 0xc0c0004
	ds_load_u8 v112, v8 offset:2688
	v_perm_b32 v100, v104, v100, 0xc0c0004
	ds_load_u8 v104, v8 offset:2944
	v_perm_b32 v92, v96, v92, 0xc0c0004
	ds_load_u8 v96, v8 offset:2816
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v161, v165, v161, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v159, v159, v168, 0xc0c0004
	v_perm_b32 v168, v117, v116, 0xc0c0004
	v_mov_b32_e32 v123, s19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v143, v143, v163, 0xc0c0004
	v_mov_b32_e32 v121, s17
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v137, v164, s[36:39], 0 offen
	buffer_load_u16 v135, v164, s[36:39], 0 offen offset:4
	buffer_load_u16 v133, v164, s[36:39], 0 offen offset:8
	buffer_load_u16 v162, v164, s[36:39], 0 offen offset:12
	buffer_load_u16 v165, v164, s[36:39], 0 offen offset:16
	buffer_load_u16 v160, v164, s[36:39], 0 offen offset:20
	buffer_load_u16 v163, v164, s[36:39], 0 offen offset:28
	buffer_load_u16 v164, v164, s[36:39], 0 offen offset:24
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v84, v88, v84, 0xc0c0004
	ds_load_u8 v88, v8 offset:2560
	v_perm_b32 v109, v113, v109, 0xc0c0004
	ds_load_u8 v113, v8 offset:2176
	v_perm_b32 v101, v105, v101, 0xc0c0004
	ds_load_u8 v105, v8 offset:2432
	v_perm_b32 v93, v97, v93, 0xc0c0004
	ds_load_u8 v97, v8 offset:2304
	v_perm_b32 v110, v114, v110, 0xc0c0004
	ds_load_u8 v114, v8 offset:3712
	v_perm_b32 v102, v106, v102, 0xc0c0004
	ds_load_u8 v106, v8 offset:3968
	v_perm_b32 v94, v98, v94, 0xc0c0004
	ds_load_u8 v98, v8 offset:3840
	v_perm_b32 v86, v90, v86, 0xc0c0004
	ds_load_u8 v90, v8 offset:3584
	v_perm_b32 v72, v78, v72, 0xc0c0004
	ds_load_u8 v78, v8 offset:4736
	v_perm_b32 v127, v66, v60, 0xc0c0004
	ds_load_u8 v60, v8 offset:4992
	v_perm_b32 v129, v54, v48, 0xc0c0004
	ds_load_u8 v48, v8 offset:4864
	ds_load_u8 v54, v8 offset:4224
	v_perm_b32 v36, v42, v36, 0xc0c0004
	ds_load_u8 v42, v8 offset:4608
	v_perm_b32 v73, v79, v73, 0xc0c0004
	v_perm_b32 v79, v67, v61, 0xc0c0004
	ds_load_u8 v61, v8 offset:4480
	v_perm_b32 v131, v55, v49, 0xc0c0004
	ds_load_u8 v49, v8 offset:4352
	v_perm_b32 v37, v43, v37, 0xc0c0004
	ds_load_u8 v43, v8 offset:4096
	v_perm_b32 v74, v80, v74, 0xc0c0004
	ds_load_u8 v55, v8 offset:5760
	v_perm_b32 v80, v68, v62, 0xc0c0004
	ds_load_u8 v62, v8 offset:6016
	v_perm_b32 v169, v56, v50, 0xc0c0004
	ds_load_u8 v50, v8 offset:5888
	ds_load_u8 v56, v8 offset:5248
	v_perm_b32 v38, v44, v38, 0xc0c0004
	ds_load_u8 v44, v8 offset:5632
	v_perm_b32 v75, v81, v75, 0xc0c0004
	v_perm_b32 v81, v69, v63, 0xc0c0004
	ds_load_u8 v63, v8 offset:5504
	v_perm_b32 v170, v57, v51, 0xc0c0004
	ds_load_u8 v51, v8 offset:5376
	v_perm_b32 v39, v45, v39, 0xc0c0004
	ds_load_u8 v45, v8 offset:5120
	v_perm_b32 v76, v82, v76, 0xc0c0004
	ds_load_u8 v57, v8 offset:6784
	v_perm_b32 v82, v70, v64, 0xc0c0004
	ds_load_u8 v64, v8 offset:7040
	v_perm_b32 v171, v58, v52, 0xc0c0004
	ds_load_u8 v52, v8 offset:6912
	ds_load_u8 v58, v8 offset:6272
	v_perm_b32 v40, v46, v40, 0xc0c0004
	ds_load_u8 v46, v8 offset:6656
	v_perm_b32 v172, v71, v65, 0xc0c0004
	ds_load_u8 v65, v8 offset:6528
	v_perm_b32 v173, v59, v53, 0xc0c0004
	ds_load_u8 v53, v8 offset:6400
	v_perm_b32 v41, v47, v41, 0xc0c0004
	ds_load_u8 v47, v8 offset:6144
	v_perm_b32 v85, v89, v85, 0xc0c0004
	ds_load_u8 v89, v8 offset:2048
	v_perm_b32 v111, v115, v111, 0xc0c0004
	ds_load_u8 v115, v8 offset:3200
	v_perm_b32 v103, v107, v103, 0xc0c0004
	ds_load_u8 v107, v8 offset:3456
	v_perm_b32 v95, v99, v95, 0xc0c0004
	ds_load_u8 v99, v8 offset:3328
	v_perm_b32 v87, v91, v87, 0xc0c0004
	ds_load_u8 v91, v8 offset:3072
	v_perm_b32 v83, v83, v77, 0xc0c0004
	ds_load_u8 v59, v8 offset:7808
	ds_load_u8 v66, v8 offset:8064
	ds_load_u8 v67, v8 offset:7936
	ds_load_u8 v68, v8 offset:7680
	ds_load_u8 v69, v8 offset:7296
	ds_load_u8 v70, v8 offset:7424
	ds_load_u8 v77, v8 offset:7552
	ds_load_u8 v71, v8 offset:7168
	v_dual_mov_b32 v122, s18 :: v_dual_add_nc_u32 v31, s47, v31
	v_dual_mov_b32 v120, s16 :: v_dual_mov_b32 v119, s15
	v_dual_mov_b32 v118, s14 :: v_dual_mov_b32 v117, s13
	v_mov_b32_e32 v116, s12
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v88, v88, v112, 0xc0c0004
	v_perm_b32 v96, v96, v104, 0xc0c0004
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v97, v97, v105, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v90, v90, v114, 0xc0c0004
	v_perm_b32 v98, v98, v106, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v42, v42, v78, 0xc0c0004
	v_perm_b32 v104, v48, v60, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v43, v43, v54, 0xc0c0004
	v_perm_b32 v105, v49, v61, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v106, v44, v55, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v112, v45, v56, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v114, v46, v57, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v174, v47, v58, 0xc0c0004
	v_lshl_or_b32 v45, v147, 16, v156
	v_lshl_or_b32 v44, v155, 16, v151
	v_lshl_or_b32 v47, v144, 16, v150
	v_lshl_or_b32 v46, v146, 16, v145
	v_lshl_or_b32 v49, v153, 16, v149
	v_lshl_or_b32 v48, v158, 16, v154
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v89, v89, v113, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v91, v91, v115, 0xc0c0004
	v_perm_b32 v99, v99, v107, 0xc0c0004
	v_perm_b32 v107, v50, v62, 0xc0c0004
	v_perm_b32 v113, v51, v63, 0xc0c0004
	v_perm_b32 v115, v52, v64, 0xc0c0004
	v_perm_b32 v175, v53, v65, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v176, v68, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v71, v69, 0xc0c0004
	v_perm_b32 v179, v70, v77, 0xc0c0004
	v_lshl_or_b32 v51, v148, 16, v157
	v_lshl_or_b32 v50, v140, 16, v142
	v_lshl_or_b32 v53, v136, 16, v138
	v_lshl_or_b32 v52, v132, 16, v134
	v_lshl_or_b32 v55, v161, 16, v159
	v_lshl_or_b32 v54, v143, 16, v152
	v_lshl_or_b32 v60, v84, 16, v92
	v_lshl_or_b32 v62, v85, 16, v93
	v_lshl_or_b32 v69, v127, 16, v72
	v_lshl_or_b32 v68, v36, 16, v129
	v_lshl_or_b32 v71, v79, 16, v73
	v_lshl_or_b32 v70, v37, 16, v131
	v_lshl_or_b32 v73, v80, 16, v74
	v_lshl_or_b32 v72, v38, 16, v169
	v_lshl_or_b32 v74, v39, 16, v170
	v_lshl_or_b32 v77, v82, 16, v76
	v_lshl_or_b32 v76, v40, 16, v171
	v_lshl_or_b32 v78, v41, 16, v173
	v_lshl_or_b32 v85, v104, 16, v42
	v_lshl_or_b32 v84, v105, 16, v43
	v_wmma_i32_16x16x16_iu4 v[36:43], v[48:49], v[44:45], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[48:49], v[46:47], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v57, v166, 16, v125
	v_lshl_or_b32 v56, v168, 16, v167
	v_lshl_or_b32 v75, v81, 16, v75
	v_lshl_or_b32 v81, v96, 16, v88
	v_lshl_or_b32 v80, v97, 16, v89
	v_wmma_i32_16x16x16_iu4 v[36:43], v[54:55], v[50:51], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[54:55], v[52:53], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v59, v128, 16, v130
	v_lshl_or_b32 v58, v124, 16, v126
	v_lshl_or_b32 v79, v172, 16, v83
	v_lshl_or_b32 v83, v98, 16, v90
	v_lshl_or_b32 v82, v99, 16, v91
	v_wmma_i32_16x16x16_iu4 v[36:43], v[80:81], v[56:57], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[80:81], v[68:69], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v61, v100, 16, v108
	v_perm_b32 v177, v67, v66, 0xc0c0004
	v_lshl_or_b32 v63, v101, 16, v109
	v_wmma_i32_16x16x16_iu4 v[36:43], v[82:83], v[58:59], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[82:83], v[70:71], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v64, v86, 16, v94
	v_lshl_or_b32 v66, v87, 16, v95
	v_lshl_or_b32 v87, v107, 16, v106
	v_lshl_or_b32 v86, v113, 16, v112
	v_wmma_i32_16x16x16_iu4 v[36:43], v[84:85], v[60:61], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[84:85], v[72:73], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v65, v102, 16, v110
	v_lshl_or_b32 v89, v115, 16, v114
	v_lshl_or_b32 v88, v175, 16, v174
	v_wmma_i32_16x16x16_iu4 v[36:43], v[86:87], v[62:63], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[86:87], v[74:75], v[116:123] neg_lo:[1,1,0]
	v_lshl_or_b32 v67, v103, 16, v111
	v_lshl_or_b32 v91, v177, 16, v176
	v_lshl_or_b32 v90, v179, 16, v178
	v_wmma_i32_16x16x16_iu4 v[36:43], v[88:89], v[64:65], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[88:89], v[76:77], v[116:123] neg_lo:[1,1,0]
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v33, 2, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[36:43], v[90:91], v[66:67], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[90:91], v[78:79], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v116
	v_cvt_f32_i32_e32 v45, v117
	v_cvt_f32_i32_e32 v46, v118
	v_cvt_f32_i32_e32 v47, v119
	v_cvt_f32_i32_e32 v48, v120
	v_cvt_f32_i32_e32 v49, v121
	v_cvt_f32_i32_e32 v50, v122
	v_cvt_f32_i32_e32 v51, v123
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v53, 16, v139
	v_lshlrev_b32_e32 v52, 16, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v45, v53, v45 :: v_dual_add_nc_u32 v32, 2, v32
	v_dual_mul_f32 v47, v53, v47 :: v_dual_add_nc_u32 v34, s49, v34
	v_mul_f32_e32 v37, v37, v52
	v_mul_f32_e32 v36, v36, v52
	v_mul_f32_e32 v38, v38, v52
	v_mul_f32_e32 v39, v39, v52
	v_mul_f32_e32 v40, v40, v52
	v_mul_f32_e32 v41, v41, v52
	v_dual_mul_f32 v42, v42, v52 :: v_dual_mul_f32 v51, v53, v51
	v_dual_mul_f32 v43, v43, v52 :: v_dual_mul_f32 v46, v53, v46
	v_mul_f32_e32 v49, v53, v49
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v55, 16, v137
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v54, 16, v135
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v57, 16, v133
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v56, 16, v162
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v59, 16, v165
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v58, 16, v160
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v60, 16, v163
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v61, 16, v164
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v44, v53, v44 :: v_dual_fmac_f32 v29, v36, v55
	v_dual_mul_f32 v48, v53, v48 :: v_dual_fmac_f32 v19, v46, v57
	v_dual_mul_f32 v50, v53, v50 :: v_dual_fmac_f32 v27, v39, v56
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v30, v37, v54 :: v_dual_fmac_f32 v23, v43, v60
	v_dual_fmac_f32 v28, v38, v57 :: v_dual_fmac_f32 v25, v41, v58
	v_dual_fmac_f32 v26, v40, v59 :: v_dual_fmac_f32 v21, v45, v54
	v_dual_fmac_f32 v24, v42, v61 :: v_dual_fmac_f32 v17, v48, v59
	v_dual_fmac_f32 v22, v44, v55 :: v_dual_fmac_f32 v15, v51, v60
	v_fmac_f32_e32 v20, v47, v56
	v_fmac_f32_e32 v18, v49, v58
	v_fmac_f32_e32 v16, v50, v61
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 180
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
		.amdhsa_inst_pref_size 46
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.num_vgpr, 180
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5792
; TotalNumSgprs: 53
; NumVgprs: 180
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 180
; Occupancy: 8
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     180
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
