	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
	s_ashr_i32 s4, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s34, s4, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s34
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s5, s[0:1], 0x38
	s_load_b64 s[24:25], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v9, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v14, 1, v0
	v_bfe_i32 v10, v0, 6, 1
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s44, s4, 2
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v7, v1, 16, v9
	v_and_b32_e32 v1, 0x108, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v18, 0x70, v2
	v_and_b32_e32 v3, 0x78, v2
	v_and_b32_e32 v2, 16, v0
	v_and_b32_e32 v10, 0x88, v10
	v_lshl_or_b32 v15, v9, 4, v1
	v_mov_b32_e32 v1, 0x5410
	v_and_b32_e32 v11, 0x37e, v14
	v_lshlrev_b32_e32 v5, 2, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshrrev_b32_e32 v13, 5, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s5, 31
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s6, s5, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s5, s5, s6
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 27
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s45, s5, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	v_xor_b32_e32 v16, v10, v11
	s_ashr_i32 s46, s1, 5
	s_cmp_gt_i32 s0, 31
	v_cmp_eq_u32_e64 s0, 0, v2
	s_cselect_b32 s1, -1, 0
	s_and_b32 s29, s9, 0xffff
	s_abs_i32 s9, s44
	v_mov_b32_e32 v2, 0x7632
	s_cvt_f32_u32 s5, s9
	v_cndmask_b32_e64 v1, 0x1054, v1, s0
.Ltmp18:
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v4, 0x7c, v5
	v_add_nc_u32_e32 v19, 0, v9
	v_rcp_iflag_f32_e32 v10, s5
	v_cndmask_b32_e64 v2, 0x3276, v2, s0
	v_lshl_or_b32 v1, v1, 8, v1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 4
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v8, 32, v7
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_or_b32_e32 v13, s3, v13
	v_lshl_or_b32 v2, v2, 8, v2
	v_and_b32_e32 v9, 0x540054, v1
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v6, 3, v0
	v_xor_b32_e32 v17, 8, v15
	v_readfirstlane_b32 s5, v10
	v_and_b32_e32 v10, 0x760076, v2
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[1:2], null, s35, v7, v[3:4]
	v_lshl_or_b32 v9, v9, 4, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_lshl_or_b32 v10, v10, 4, v10
	v_and_b32_e32 v12, 0xe0, v0
	v_cndmask_b32_e64 v20, 0, 1, s1
	s_cvt_u32_f32 s5, s5
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_and_or_b32 v0, v14, 14, s3
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[2:3], null, s35, v8, v[3:4]
	s_sub_i32 s6, 0, s9
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_mad_u64_u32 v[3:4], null, s35, v13, v[4:5]
	s_mul_i32 s6, s6, s5
	s_mov_b32 s36, s10
	v_and_b32_e32 v9, 0x5040504, v9
	v_and_b32_e32 v10, 0x7060706, v10
	s_bfe_i32 s10, s4, 0x1001d
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_and_b32_e32 v11, 2, v6
	v_cmp_ne_u32_e64 s1, 1, v20
	v_cmp_gt_i32_e64 s3, 16, v0
	v_cmp_gt_i32_e64 s4, 16, v13
	v_add_nc_u32_e32 v14, 0, v16
	v_add_nc_u32_e32 v15, 0, v15
	v_add_nc_u32_e32 v16, 0, v17
	v_add_nc_u32_e32 v17, 0, v5
	v_add_nc_u32_e32 v18, v19, v18
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mul_hi_u32 s6, s5, s6
	s_mov_b32 s28, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s16, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_and_b32 s25, s25, 0xffff
	s_add_i32 s11, s5, s6
	s_lshl_b32 s47, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s48, s46, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s49, s35, 4
	s_mov_b32 s50, 0x76543210
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v4, v32, 16, 1
	v_bfe_u32 v34, v33, 16, 1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s5, s6, 7
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_mul_i32 s6, s7, s35
	.loc	1 277 13 is_stmt 0              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s14, s6, s5
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v4, v32, v4, 0x7fff
	v_add3_u32 v32, v33, v34, 0x7fff
	v_cmp_o_f32_e64 s5, v33, v33
	v_bfe_u32 v34, v31, 16, 1
	v_bfe_u32 v35, v30, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_mov_b16_e32 v33.h, 0
	v_cndmask_b16 v4.h, 0x7fff, v32.h, s5
	v_bfe_u32 v32, v29, 16, 1
	v_add3_u32 v34, v31, v34, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_add3_u32 v31, v30, v35, 0x7fff
	v_cmp_o_f32_e64 s5, v30, v30
	v_add3_u32 v30, v29, v32, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_bfe_u32 v29, v28, 16, 1
	v_bfe_u32 v32, v27, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v34.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s5
	v_add3_u32 v29, v28, v29, 0x7fff
	v_add3_u32 v28, v27, v32, 0x7fff
	v_mov_b16_e32 v32.l, v25.h
	v_mov_b16_e32 v32.h, v33.h
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s6
	v_mov_b16_e32 v33.l, v24.h
	v_cmp_o_f32_e64 s5, v27, v27
	v_bfe_u32 v27, v26, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v29, 1, v32
	v_and_b32_e32 v32, 1, v33
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_add3_u32 v27, v26, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v26, v25, v29, 0x7fff
	v_mov_b16_e32 v33.l, v23.h
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s5
	v_add3_u32 v29, v24, v32, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_mov_b16_e32 v24.l, v22.h
	v_mov_b16_e32 v24.h, v33.h
	v_cndmask_b16 v28.h, 0x7fff, v27.h, vcc_lo
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s6
	v_and_b32_e32 v26, 1, v33
	v_mov_b16_e32 v33.l, v21.h
	v_mov_b16_e32 v27.l, v20.h
	v_mov_b16_e32 v27.h, v33.h
	v_cndmask_b16 v25.h, 0x7fff, v29.h, s5
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v26, v23, v26, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_and_b32_e32 v23, 1, v33
	v_and_b32_e32 v27, 1, v27
	v_mov_b16_e32 v29.l, v19.h
	v_mov_b16_e32 v29.h, v33.h
	v_mov_b16_e32 v33.l, v5.h
	v_add3_u32 v24, v22, v24, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v26.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_add3_u32 v22, v20, v27, 0x7fff
	v_and_b32_e32 v27, 1, v29
	v_and_b32_e32 v29, 1, v33
	v_add3_u32 v23, v21, v23, 0x7fff
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v20, v20
	v_add3_u32 v20, v19, v27, 0x7fff
	v_add3_u32 v21, v5, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v5, v5
	v_cmp_o_f32_e64 s8, v19, v19
	v_cndmask_b16 v26.l, 0x7fff, v24.h, vcc_lo
	v_cndmask_b16 v5.h, 0x7fff, v23.h, s5
	v_cndmask_b16 v5.l, 0x7fff, v22.h, s6
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s7
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s8
	v_cndmask_b32_e64 v20, v30, v4, s0
	v_cndmask_b32_e64 v4, v4, v30, s0
	v_cndmask_b32_e64 v21, v31, v28, s0
	v_cndmask_b32_e64 v24, v5, v25, s0
	v_cndmask_b32_e64 v5, v25, v5, s0
	v_cndmask_b32_e64 v23, v26, v19, s0
	v_cndmask_b32_e64 v22, v28, v31, s0
	v_permlanex16_b32 v4, v4, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v21, s50, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v26, v19, v26, s0
	v_permlanex16_b32 v5, v5, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v23, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v19, v4, v20, v9
	v_perm_b32 v20, v4, v20, v10
	v_perm_b32 v21, v25, v22, v9
	v_perm_b32 v22, v25, v22, v10
	v_add_lshl_u32 v4, s14, v1, 1
	v_perm_b32 v23, v5, v24, v9
	v_perm_b32 v24, v5, v24, v10
	v_perm_b32 v25, v27, v26, v9
	v_perm_b32 v26, v27, v26, v10
	v_add_lshl_u32 v5, s14, v2, 1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[19:22], v4, s[24:27], 0 offen
	buffer_store_b128 v[23:26], v5, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s34
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s5, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s6, s5, s11
	s_xor_b32 s7, s7, s10
	s_mul_i32 s8, s6, s9
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v22, 0
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s6, 1
	s_sub_i32 s14, s5, s9
	s_cmp_ge_u32 s5, s9
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	s_cselect_b32 s6, s8, s6
	s_cselect_b32 s5, s14, s5
	s_add_i32 s8, s6, 1
	s_cmp_ge_u32 s5, s9
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	s_cselect_b32 s5, s8, s6
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v26, 0
	s_xor_b32 s5, s5, s7
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	s_sub_i32 s5, s5, s7
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s7, s5, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s5, s5, s44
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s6, s33, s7
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s17, s2, s5
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s14, s6, 4
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s14
	v_mov_b32_e32 v31, 0
	s_cvt_f32_u32 s8, s6
	s_sub_i32 s15, 0, s6
	v_mov_b32_e32 v33, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v4, s8
	v_readfirstlane_b32 s8, v4
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s15, s15, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s8, s15
	s_abs_i32 s15, s17
	s_add_i32 s8, s8, s5
	s_xor_b32 s5, s17, s14
	s_mul_hi_u32 s8, s15, s8
	s_ashr_i32 s5, s5, 31
	s_mul_i32 s18, s8, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s15, s15, s18
	s_add_i32 s18, s8, 1
	s_sub_i32 s19, s15, s6
	s_cmp_ge_u32 s15, s6
	s_cselect_b32 s8, s18, s8
	s_cselect_b32 s15, s19, s15
	s_add_i32 s18, s8, 1
	s_cmp_ge_u32 s15, s6
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
	s_sub_i32 s14, s17, s14
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s14, s14, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s7, s14, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v4, s8, 8, v12
	s_lshl_b32 s14, s5, 8
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v5, s7, v8
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v19, s7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v34, s14, v4
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v4, s7, v6
	v_lshl_add_u32 v20, s8, 7, v3
	v_mul_lo_u32 v35, s48, v5
	v_mul_lo_u32 v36, s48, v19
	v_mad_u64_u32 v[4:5], null, s45, v4, v[0:1]
	s_lshl_b32 s5, s5, 7
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_subrev_nc_u32_e32 v37, s5, v20
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v5, 0
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
	v_add_nc_u32_e32 v38, s8, v0
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v39, s8, v13
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v40, s8, v4
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s45, v38
	v_cmp_gt_i32_e64 s5, s45, v39
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s42, s30
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s43, s31
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v38, 0x80000000, v40, vcc_lo
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s5, s4
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_dual_cndmask_b32 v39, 0x80000000, v37 :: v_dual_add_nc_u32 v40, v11, v34
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_u16 v38, v38, s[28:31], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b32 v39, v39, s[36:39], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v34, s47, v34
	s_add_i32 s51, s51, -1
	s_add_i32 s8, s8, 16
	s_cmp_lg_u32 s51, 0
	v_add_nc_u32_e32 v37, s49, v37
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(1)
	ds_store_b16 v14, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[54:57], v15 offset1:1
	ds_load_2addr_stride64_b64 v[58:61], v16 offset1:1
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v17, v39
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_clause 0x1
	buffer_load_u16 v66, v36, s[12:15], 0 offen
	buffer_load_u16 v67, v35, s[12:15], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v68, v40, s[40:43], 0 offen offset:4
	buffer_load_u16 v69, v40, s[40:43], 0 offen
	buffer_load_u16 v70, v40, s[40:43], 0 offen offset:12
	buffer_load_u16 v71, v40, s[40:43], 0 offen offset:8
	buffer_load_u16 v72, v40, s[40:43], 0 offen offset:20
	buffer_load_u16 v73, v40, s[40:43], 0 offen offset:16
	buffer_load_u16 v74, v40, s[40:43], 0 offen offset:28
	buffer_load_u16 v75, v40, s[40:43], 0 offen offset:24
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v46, v18 offset:640
	ds_load_u8 v47, v18 offset:896
	ds_load_u8 v48, v18 offset:768
	ds_load_u8 v49, v18 offset:512
	ds_load_u8 v50, v18 offset:128
	ds_load_u8 v51, v18 offset:384
	ds_load_u8 v52, v18 offset:256
	ds_load_u8 v53, v18
	ds_load_u8 v62, v18 offset:1664
	ds_load_u8 v63, v18 offset:1920
	ds_load_u8 v64, v18 offset:1792
	ds_load_u8 v65, v18 offset:1536
	ds_load_u8 v76, v18 offset:1152
	ds_load_u8 v77, v18 offset:1280
	ds_load_u8 v78, v18 offset:1024
	ds_load_u8 v79, v18 offset:1408
	v_dual_mov_b32 v45, s23 :: v_dual_mov_b32 v44, s22
	v_dual_mov_b32 v43, s21 :: v_dual_mov_b32 v42, s20
	v_dual_mov_b32 v41, s19 :: v_dual_mov_b32 v40, s18
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v35, 2, v35
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v46, v49, v46, 0xc0c0004
	v_perm_b32 v47, v48, v47, 0xc0c0004
	v_mov_b32_e32 v39, s17
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v49, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v48, v53, v50, 0xc0c0004
	v_mov_b32_e32 v38, s16
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v51, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v50, v65, v62, 0xc0c0004
	v_lshl_or_b32 v63, v47, 16, v46
	v_lshl_or_b32 v62, v49, 16, v48
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v52, v78, v76, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v77, v79, 0xc0c0004
	v_lshl_or_b32 v65, v51, 16, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v53, 16, v52
	v_wmma_i32_16x16x16_iu4 v[46:53], v[62:63], v[54:55], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[64:65], v[58:59], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v55, 16, v67
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[38:45], v[62:63], v[56:57], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[38:45], v[64:65], v[60:61], v[38:45] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_dual_mul_f32 v39, v55, v39 :: v_dual_lshlrev_b32 v54, 16, v66
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v36, 2, v36
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v56, 16, v68
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v46, v46, v54 :: v_dual_lshlrev_b32 v57, 16, v69
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v41, v55, v41 :: v_dual_lshlrev_b32 v58, 16, v70
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v48, v48, v54 :: v_dual_lshlrev_b32 v59, 16, v71
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v51, v51, v54 :: v_dual_lshlrev_b32 v60, 16, v72
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v50, v50, v54 :: v_dual_lshlrev_b32 v61, 16, v73
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v43, v55, v43 :: v_dual_lshlrev_b32 v62, 16, v74
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v52, v52, v54 :: v_dual_lshlrev_b32 v63, 16, v75
	v_mul_f32_e32 v47, v47, v54
	v_mul_f32_e32 v49, v49, v54
	v_dual_mul_f32 v53, v53, v54 :: v_dual_mul_f32 v40, v55, v40
	v_dual_mul_f32 v38, v55, v38 :: v_dual_fmac_f32 v31, v48, v59
	v_dual_mul_f32 v42, v55, v42 :: v_dual_fmac_f32 v29, v50, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v45, v55, v45 :: v_dual_fmac_f32 v30, v49, v58
	v_dual_mul_f32 v44, v55, v44 :: v_dual_fmac_f32 v27, v52, v63
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v32, v46, v57 :: v_dual_fmac_f32 v33, v47, v56
	v_dual_fmac_f32 v28, v51, v60 :: v_dual_fmac_f32 v25, v38, v57
	v_dual_fmac_f32 v26, v53, v62 :: v_dual_fmac_f32 v21, v43, v60
	v_dual_fmac_f32 v24, v39, v56 :: v_dual_fmac_f32 v23, v41, v58
	v_dual_fmac_f32 v22, v40, v59 :: v_dual_fmac_f32 v5, v45, v62
	v_dual_fmac_f32 v20, v42, v61 :: v_dual_fmac_f32 v19, v44, v63
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 80
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
		.amdhsa_inst_pref_size 23
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_vgpr, 80
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2932
; TotalNumSgprs: 54
; NumVgprs: 80
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 80
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     80
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
