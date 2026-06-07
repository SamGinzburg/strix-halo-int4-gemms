	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
	s_add_i32 s4, s34, 31
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
	s_lshr_b32 s6, s6, 27
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
	s_ashr_i32 s33, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s4, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s34, s4, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s34
	s_cbranch_scc1 .LBB0_9
; %bb.1:                                ; %.lr.ph10
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s5, s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b64 s[16:17], s[0:1], 0x20
	.loc	1 208 24 is_stmt 1              ; generate_amdgcn.py:208:24
	s_lshl_b32 s36, s4, 2
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v11, 4, v0
	v_dual_mov_b32 v6, 0x5410 :: v_dual_and_b32 v1, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v2, 1, v0
	v_lshrrev_b32_e32 v3, 3, v0
	v_lshlrev_b32_e32 v4, 1, v0
	v_and_b32_e32 v5, 16, v0
	v_lshlrev_b32_e32 v25, 3, v0
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_and_b32_e32 v18, 0xe0, v0
	v_and_b32_e32 v7, 24, v3
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v13, 0x78, v2
	v_and_b32_e32 v2, 0x70, v2
	v_add_nc_u32_e32 v26, 0, v1
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v12, v11, 16, v1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_and_b32_e32 v17, 2, v3
	v_add_nc_u32_e32 v25, 0, v25
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s5, 63
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s1, s5, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s6, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s5, s5, s1
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s6, s6, 26
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s37, s5, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s6
	s_mov_b32 s24, s10
	s_ashr_i32 s38, s1, 6
	s_cmp_lt_i32 s0, 64
	v_add_nc_u32_e32 v26, v26, v2
	s_cselect_b32 s1, -1, 0
	s_and_b32 s21, s9, 0xffff
	v_cndmask_b32_e64 v0, 0, 1, s1
	s_abs_i32 s9, s36
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 5
	s_cvt_f32_u32 s5, s9
	v_or_b32_e32 v16, s3, v11
	v_cmp_ne_u32_e64 s1, 1, v0
	v_mov_b32_e32 v0, 0
	v_cmp_eq_u32_e64 s0, 0, v5
	v_mov_b32_e32 v5, 0x7632
	v_and_b32_e32 v8, 0x218, v4
	v_xor_b32_e32 v4, v4, v7
	v_rcp_iflag_f32_e32 v7, s5
	v_cndmask_b32_e64 v6, 0x1054, v6, s0
	v_cndmask_b32_e64 v5, 0x3276, v5, s0
	v_lshl_or_b32 v9, v1, 5, v8
	s_sub_i32 s6, 0, s9
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_or_b32 v8, v1, 1, s3
	v_lshl_or_b32 v6, v6, 8, v6
	v_lshl_or_b32 v5, v5, 8, v5
	v_xor_b32_e32 v10, 8, v9
	v_xor_b32_e32 v23, 16, v9
	v_readfirstlane_b32 s5, v7
	v_and_b32_e32 v6, 0x540054, v6
	v_and_b32_e32 v5, 0x760076, v5
	v_xor_b32_e32 v24, 24, v9
	s_bfe_i32 s10, s4, 0x1001d
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_lshl_or_b32 v6, v6, 4, v6
	v_lshl_or_b32 v5, v5, 4, v5
	s_and_b32 s25, s11, 0xffff
	s_cvt_u32_f32 s5, s5
	v_cmp_gt_i32_e64 s3, 32, v8
	v_and_b32_e32 v14, 0x5040504, v6
	v_and_b32_e32 v15, 0x7060706, v5
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mul_lo_u32 v5, s35, v16
	s_mul_i32 s6, s6, s5
	v_add_nc_u32_e32 v20, 0, v4
	s_mul_hi_u32 s4, s5, s6
	v_add_nc_u32_e32 v21, 0, v9
	s_add_i32 s11, s5, s4
	v_cmp_gt_i32_e64 s4, 32, v16
	v_add_nc_u32_e32 v22, 0, v10
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v19, v1, 3, v5
	v_add_nc_u32_e32 v23, 0, v23
	v_add_nc_u32_e32 v24, 0, v24
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s8
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_and_b32 s17, s17, 0xffff
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s39, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s40, s38, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s41, s35, 5
	s_mov_b32 s42, 0x76543210
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v2.h, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v2.l, v33.h
	v_mov_b16_e32 v3.l, v32.h
	v_cmp_o_f32_e64 s5, v32, v32
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_mov_b16_e32 v3.h, v2.h
	v_and_b32_e32 v6, 1, v2
	v_mov_b16_e32 v2.l, v31.h
	v_mov_b16_e32 v4.l, v30.h
	v_mov_b16_e32 v5.l, v28.h
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v6, v33, v6, 0x7fff
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v2.l, v29.h
	v_mov_b16_e32 v4.h, v2.h
	v_add3_u32 v3, v32, v3, 0x7fff
	v_mov_b16_e32 v5.h, v2.h
	v_mov_b16_e32 v9.l, v27.h
	v_mov_b16_e32 v9.h, v2.h
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v6.l, 0x7fff, v3.h, s5
	v_add3_u32 v3, v31, v7, 0x7fff
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v2.l, v10.h
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_and_b32_e32 v5, 1, v5
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v4, v30, v4, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_add3_u32 v5, v28, v5, 0x7fff
	v_add3_u32 v7, v29, v7, 0x7fff
	v_cmp_o_f32_e64 s5, v29, v29
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v9, v27, v9, 0x7fff
	v_add3_u32 v2, v10, v2, 0x7fff
	v_cmp_o_f32_e64 s7, v10, v10
	v_cmp_o_f32_e64 s8, v27, v27
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s5
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s6
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s7
	v_cndmask_b16 v2.l, 0x7fff, v9.h, s8
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	v_mul_lo_u32 v9, v1, s35
	v_lshl_or_b32 v10, s43, 7, v13
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b32_e64 v5, v6, v4, s0
	v_cndmask_b32_e64 v4, v4, v6, s0
	v_cndmask_b32_e64 v7, v3, v2, s0
	v_cndmask_b32_e64 v6, v2, v3, s0
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_permlanex16_b32 v5, v5, s42, 0xfedcba98 op_sel:[1,0]
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s34
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_permlanex16_b32 v7, v7, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v1, v5, v4, v14
	v_perm_b32 v2, v5, v4, v15
	v_perm_b32 v3, v7, v6, v14
	v_perm_b32 v4, v7, v6, v15
	v_add_lshl_u32 v5, v10, v9, 1
	buffer_store_b128 v[1:4], v5, s[16:19], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_9
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s5, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s6, s5, s11
	s_xor_b32 s7, s7, s10
	s_mul_i32 s8, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s6, 1
	s_sub_i32 s14, s5, s9
	s_cmp_ge_u32 s5, s9
	s_cselect_b32 s6, s8, s6
	s_cselect_b32 s5, s14, s5
	s_add_i32 s8, s6, 1
	s_cmp_ge_u32 s5, s9
	s_cselect_b32 s5, s8, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s5, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s7, s5, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s5, s5, s36
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s6, s33, s7
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s26, s2, s5
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s8, s6, 4
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s14, s6
	s_sub_i32 s15, 0, s6
	v_rcp_iflag_f32_e32 v1, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s14, v1
                                        ; implicit-def: $vgpr1
	s_mul_f32 s14, s14, 0x4f7ffffe
	s_cvt_u32_f32 s14, s14
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s15, s15, s14
	s_mul_hi_u32 s5, s14, s15
	s_abs_i32 s15, s26
	s_add_i32 s14, s14, s5
	s_xor_b32 s5, s26, s8
	s_mul_hi_u32 s14, s15, s14
	s_ashr_i32 s5, s5, 31
	s_mul_i32 s27, s14, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s15, s15, s27
	s_add_i32 s27, s14, 1
	s_sub_i32 s30, s15, s6
	s_cmp_ge_u32 s15, s6
	s_cselect_b32 s14, s27, s14
	s_cselect_b32 s15, s30, s15
	s_add_i32 s27, s14, 1
	s_cmp_ge_u32 s15, s6
	s_cselect_b32 s6, s27, s14
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s43, s6, s5
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s8, s43, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s8, s26, s8
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s7, s8, 5
	s_mov_b32 s8, -1
	v_or_b32_e32 v34, s7, v12
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.4:                                ; %.._crit_edge_crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	v_or_b32_e32 v1, s7, v12
	s_mov_b32 s8, 0
.LBB0_5:                                ; %Flow112
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_2
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v2, s7, v12
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v3, s7, v11
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	v_lshl_or_b32 v1, s6, 8, v18
	v_lshl_add_u32 v4, s6, 7, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v36, s40, v2
	v_mad_u64_u32 v[9:10], null, s37, v3, v[8:9]
	s_lshl_b32 s8, s5, 8
	s_lshl_b32 s5, s5, 7
	v_subrev_nc_u32_e32 v35, s8, v1
	v_subrev_nc_u32_e32 v37, s5, v4
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v10, 0
	s_mov_b32 s6, 0
	s_mov_b32 s7, s38
.LBB0_7:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_add_nc_u32_e32 v1, s6, v8
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v2, s6, v16
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v3, s6, v9
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s37, v1
	v_cmp_gt_i32_e64 s5, s37, v2
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v4, v17, v35
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s30, s22
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s5, s4
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s31, s23
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_dual_cndmask_b32 v2, 0x80000000, v37 :: v_dual_mov_b32 v5, v0
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v6, v0 :: v_dual_add_nc_u32 v35, s39, v35
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_u16 v3, v1, s[20:23], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b64 v[1:2], v2, s[24:27], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s7, s7, -1
	s_add_i32 s6, s6, 32
	s_cmp_lg_u32 s7, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(1)
	ds_store_b16 v20, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[46:47], v21
	ds_load_b64 v[48:49], v22
	ds_load_b64 v[50:51], v23
	ds_load_b64 v[52:53], v24
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v25, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v3, v0
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v56, v36, s[12:15], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v57, v4, s[28:31], 0 offen offset:4
	buffer_load_u16 v58, v4, s[28:31], 0 offen
	buffer_load_u16 v59, v4, s[28:31], 0 offen offset:12
	buffer_load_u16 v60, v4, s[28:31], 0 offen offset:8
	buffer_load_u16 v61, v4, s[28:31], 0 offen offset:20
	buffer_load_u16 v62, v4, s[28:31], 0 offen offset:16
	buffer_load_u16 v63, v4, s[28:31], 0 offen offset:28
	buffer_load_u16 v64, v4, s[28:31], 0 offen offset:24
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v45, v7 :: v_dual_add_nc_u32 v36, 2, v36
	v_dual_mov_b32 v44, v6 :: v_dual_mov_b32 v43, v5
	v_dual_mov_b32 v42, v4 :: v_dual_mov_b32 v41, v3
	v_dual_mov_b32 v40, v2 :: v_dual_mov_b32 v39, v1
	v_mov_b32_e32 v38, v0
	ds_load_u8 v1, v26 offset:640
	ds_load_u8 v2, v26 offset:896
	ds_load_u8 v3, v26 offset:768
	ds_load_u8 v4, v26 offset:512
	ds_load_u8 v5, v26 offset:128
	ds_load_u8 v6, v26 offset:384
	ds_load_u8 v7, v26 offset:256
	ds_load_u8 v54, v26
	ds_load_u8 v55, v26 offset:1664
	ds_load_u8 v65, v26 offset:1920
	ds_load_u8 v66, v26 offset:1792
	ds_load_u8 v67, v26 offset:1536
	ds_load_u8 v68, v26 offset:1152
	ds_load_u8 v69, v26 offset:1408
	ds_load_u8 v70, v26 offset:1280
	ds_load_u8 v71, v26 offset:1024
	ds_load_u8 v72, v26 offset:2688
	ds_load_u8 v73, v26 offset:2944
	ds_load_u8 v74, v26 offset:2816
	ds_load_u8 v75, v26 offset:2560
	ds_load_u8 v76, v26 offset:2176
	ds_load_u8 v77, v26 offset:2432
	ds_load_u8 v78, v26 offset:2304
	ds_load_u8 v79, v26 offset:2048
	ds_load_u8 v80, v26 offset:3712
	ds_load_u8 v81, v26 offset:3968
	ds_load_u8 v82, v26 offset:3840
	ds_load_u8 v83, v26 offset:3584
	ds_load_u8 v84, v26 offset:3200
	ds_load_u8 v85, v26 offset:3328
	ds_load_u8 v86, v26 offset:3072
	ds_load_u8 v87, v26 offset:3456
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v1, v4, v1, 0xc0c0004
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v3, v54, v5, 0xc0c0004
	v_perm_b32 v4, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v5, v67, v55, 0xc0c0004
	v_perm_b32 v6, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v7, v71, v68, 0xc0c0004
	v_perm_b32 v54, v70, v69, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v1
	v_lshl_or_b32 v1, v4, 16, v3
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v55, v75, v72, 0xc0c0004
	v_perm_b32 v65, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v79, v76, 0xc0c0004
	v_perm_b32 v67, v78, v77, 0xc0c0004
	v_lshl_or_b32 v4, v6, 16, v5
	v_lshl_or_b32 v3, v54, 16, v7
	v_wmma_i32_16x16x16_iu4 v[38:45], v[1:2], v[46:47], v[38:45] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v83, v80, 0xc0c0004
	v_perm_b32 v69, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v86, v84, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v85, v87, 0xc0c0004
	v_lshl_or_b32 v6, v65, 16, v55
	v_lshl_or_b32 v5, v67, 16, v66
	v_wmma_i32_16x16x16_iu4 v[38:45], v[3:4], v[48:49], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v55, v69, 16, v68
	v_lshl_or_b32 v54, v71, 16, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[38:45], v[5:6], v[50:51], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[38:45], v[54:55], v[52:53], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v1, v38
	v_cvt_f32_i32_e32 v2, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v41
	v_cvt_f32_i32_e32 v3, v40
	v_cvt_f32_i32_e32 v5, v42
	v_cvt_f32_i32_e32 v6, v43
	v_cvt_f32_i32_e32 v7, v44
	v_cvt_f32_i32_e32 v38, v45
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v40, 16, v57
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v41, 16, v58
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v39, 16, v56
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v1, v39, v1 :: v_dual_lshlrev_b32 v42, 16, v59
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v32, v1, v41 :: v_dual_lshlrev_b32 v43, 16, v60
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v6, v39, v6
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v3, v39, v3 :: v_dual_lshlrev_b32 v44, 16, v61
	v_dual_mul_f32 v2, v39, v2 :: v_dual_add_nc_u32 v37, s41, v37
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v45, 16, v62
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v5, v39, v5 :: v_dual_lshlrev_b32 v46, 16, v63
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v38, v39, v38 :: v_dual_lshlrev_b32 v47, 16, v64
	v_mul_f32_e32 v4, v39, v4
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v30, v3, v43
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v7, v39, v7 :: v_dual_fmac_f32 v28, v5, v45
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v33, v2, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v4, v42
	v_fmac_f32_e32 v29, v6, v44
	v_dual_fmac_f32 v27, v7, v47 :: v_dual_fmac_f32 v10, v38, v46
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_7
; %bb.8:                                ; %Flow
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_mov_b32_e32 v1, v34
	s_branch .LBB0_2
.LBB0_9:                                ; %._crit_edge11
	.loc	1 196 1 is_stmt 1               ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 88
		.amdhsa_next_free_sgpr 44
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
		.amdhsa_inst_pref_size 21
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_vgpr, 88
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2616
; TotalNumSgprs: 46
; NumVgprs: 88
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 88
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     88
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
