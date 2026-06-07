	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
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
	s_ashr_i32 s34, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s36, s34, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s36
	s_cbranch_scc1 .LBB0_9
; %bb.1:                                ; %.lr.ph10
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s4, s[0:1], 0x38
	s_load_b64 s[16:17], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v12, 4, v0
	v_and_b32_e32 v2, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshlrev_b32_e32 v3, 4, v0
	v_lshrrev_b32_e32 v4, 1, v0
	v_and_b32_e32 v13, 0xe0, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshrrev_b32_e32 v5, 3, v0
	v_lshlrev_b32_e32 v6, 2, v0
	v_and_b32_e32 v0, 16, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v15, 0x78, v4
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v14, v12, 16, v2
	s_mov_b32 s23, 0x31027000
	v_and_b32_e32 v7, 0x438, v6
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s42, 0x76543210
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	v_lshl_or_b32 v7, v2, 6, v7
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s4, 0x7f
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
	s_lshr_b32 s1, s1, 25
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s37, s4, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	v_xor_b32_e32 v11, 8, v7
	s_ashr_i32 s38, s1, 7
	s_cmpk_lt_i32 s0, 0x80
	v_cmp_eq_u32_e64 s0, 0, v0
	v_dual_mov_b32 v0, 0x7632 :: v_dual_and_b32 v19, 2, v5
	s_cselect_b32 s1, -1, 0
	s_and_b32 s21, s9, 0xffff
	s_abs_i32 s9, s34
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x3276, v0, s0
	s_cvt_f32_u32 s4, s9
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 6
	s_sub_i32 s5, 0, s9
	v_or_b32_e32 v20, s3, v5
	v_lshl_or_b32 v0, v0, 8, v0
	v_rcp_iflag_f32_e32 v9, s4
	v_xor_b32_e32 v24, 16, v7
	v_xor_b32_e32 v25, 24, v7
	v_xor_b32_e32 v26, 32, v7
	v_and_b32_e32 v0, 0x760076, v0
	v_xor_b32_e32 v27, 40, v7
	v_xor_b32_e32 v28, 48, v7
	v_xor_b32_e32 v29, 56, v7
	s_and_b32 s25, s11, 0xffff
	v_lshl_or_b32 v0, v0, 4, v0
	v_readfirstlane_b32 s4, v9
	v_add_nc_u32_e32 v22, 0, v7
	v_add_nc_u32_e32 v23, 0, v11
	v_add_nc_u32_e32 v24, 0, v24
	v_and_b32_e32 v18, 0x7060706, v0
	v_cndmask_b32_e64 v0, 0, 1, s1
	s_mul_f32 s4, s4, 0x4f7ffffe
	v_add_nc_u32_e32 v25, 0, v25
	v_add_nc_u32_e32 v26, 0, v26
	v_add_nc_u32_e32 v27, 0, v27
	v_cmp_ne_u32_e64 s1, 1, v0
	v_mov_b32_e32 v0, 0
	v_lshrrev_b32_e32 v8, 2, v13
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v4, 1, v13
	s_cvt_u32_f32 s4, s4
	v_add_nc_u32_e32 v28, 0, v28
	v_add_nc_u32_e32 v29, 0, v29
	v_xor_b32_e32 v6, v6, v8
	v_mov_b32_e32 v8, 0x5410
	v_and_b32_e32 v1, 0x70, v3
	v_add3_u32 v16, 0, v2, v4
	s_mul_i32 s5, s5, s4
	v_add_nc_u32_e32 v21, 0, v6
	v_cndmask_b32_e64 v8, 0x1054, v8, s0
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_mad_u64_u32 v[9:10], null, s35, v20, v[1:2]
	s_mul_hi_u32 s5, s4, s5
	v_add_nc_u32_e32 v30, 0, v3
	v_lshl_or_b32 v8, v8, 8, v8
	s_add_i32 s11, s4, s5
	v_cmp_gt_i32_e64 s4, 64, v20
	s_mov_b32 s20, s8
	s_mov_b32 s24, s10
	v_and_b32_e32 v8, 0x540054, v8
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_and_b32 s17, s17, 0xffff
	v_lshl_or_b32 v4, v8, 4, v8
	v_lshl_or_b32 v8, v2, 2, s3
	s_ashr_i32 s10, s34, 31
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s39, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s40, s38, 1
	v_and_b32_e32 v17, 0x5040504, v4
	v_cmp_gt_i32_e64 s3, 64, v8
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s41, s35, 6
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v2.h, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v2.l, v37.h
	v_mov_b16_e32 v3.l, v36.h
	v_cmp_o_f32_e64 s5, v36, v36
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_mov_b16_e32 v3.h, v2.h
	v_and_b32_e32 v6, 1, v2
	v_mov_b16_e32 v2.l, v35.h
	v_mov_b16_e32 v4.l, v34.h
	v_mov_b16_e32 v5.l, v32.h
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v6, v37, v6, 0x7fff
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v2.l, v33.h
	v_mov_b16_e32 v4.h, v2.h
	v_add3_u32 v3, v36, v3, 0x7fff
	v_mov_b16_e32 v5.h, v2.h
	v_mov_b16_e32 v10.l, v31.h
	v_mov_b16_e32 v10.h, v2.h
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v6.l, 0x7fff, v3.h, s5
	v_add3_u32 v3, v35, v7, 0x7fff
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v2.l, v11.h
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_and_b32_e32 v5, 1, v5
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v4, v34, v4, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_add3_u32 v5, v32, v5, 0x7fff
	v_add3_u32 v7, v33, v7, 0x7fff
	v_cmp_o_f32_e64 s5, v33, v33
	v_cmp_o_f32_e64 s6, v32, v32
	v_add3_u32 v10, v31, v10, 0x7fff
	v_add3_u32 v2, v11, v2, 0x7fff
	v_cmp_o_f32_e64 s7, v11, v11
	v_cmp_o_f32_e64 s8, v31, v31
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s5
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s6
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s7
	v_cndmask_b16 v2.l, 0x7fff, v10.h, s8
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	v_mul_lo_u32 v10, v1, s35
	v_lshl_or_b32 v11, s43, 7, v15
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
	s_cmp_lt_i32 s2, s36
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_permlanex16_b32 v7, v7, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v1, v5, v4, v17
	v_perm_b32 v2, v5, v4, v18
	v_perm_b32 v3, v7, v6, v17
	v_perm_b32 v4, v7, v6, v18
	v_add_lshl_u32 v5, v11, v10, 1
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
	s_sub_i32 s7, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s5, s33, s7
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s15, s7, s34
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s8, s5, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s15, s2, s15
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s8
	s_abs_i32 s26, s15
	s_cvt_f32_u32 s5, s6
	s_sub_i32 s14, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
                                        ; implicit-def: $vgpr1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s14, s14, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s14, s5, s14
	s_add_i32 s5, s5, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s14, s26, s5
	s_xor_b32 s5, s15, s8
	s_mul_i32 s27, s14, s6
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s26, s26, s27
	s_add_i32 s27, s14, 1
	s_sub_i32 s30, s26, s6
	s_cmp_ge_u32 s26, s6
	s_cselect_b32 s14, s27, s14
	s_cselect_b32 s26, s30, s26
	s_add_i32 s27, s14, 1
	s_cmp_ge_u32 s26, s6
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
	s_sub_i32 s8, s15, s8
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s7, s8, 5
	s_mov_b32 s8, -1
	v_or_b32_e32 v38, s7, v14
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.4:                                ; %.._crit_edge_crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	v_or_b32_e32 v1, s7, v14
	s_mov_b32 s8, 0
.LBB0_5:                                ; %Flow116
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v37, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_2
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v2, s7, v14
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v3, s7, v12
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	v_lshl_or_b32 v1, s6, 8, v13
	v_lshl_add_u32 v4, s6, 7, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v40, s40, v2
	v_mad_u64_u32 v[10:11], null, s37, v3, v[8:9]
	s_lshl_b32 s8, s5, 8
	s_lshl_b32 s5, s5, 7
	v_subrev_nc_u32_e32 v39, s8, v1
	v_subrev_nc_u32_e32 v41, s5, v4
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v11, 0
	s_mov_b32 s6, 0
	s_mov_b32 s7, s38
.LBB0_7:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_add_nc_u32_e32 v1, s6, v8
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v2, s6, v20
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v7, v0
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s37, v1
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v1, s6, v10
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s5, s37, v2
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s30, s22
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_mov_b32 v6, v0
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 s5, s5, s4
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s31, s23
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s7, s7, -1
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b32 v5, v1, s[20:23], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e64 v1, 0x80000000, v41, s5
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v41, s41, v41
	s_add_i32 s6, s6, 64
	s_cmp_lg_u32 s7, 0
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v21, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[50:51], v22
	ds_load_b64 v[52:53], v23
	ds_load_b64 v[54:55], v24
	ds_load_b64 v[56:57], v25
	ds_load_b64 v[58:59], v26
	ds_load_b64 v[60:61], v27
	ds_load_b64 v[62:63], v28
	ds_load_b64 v[64:65], v29
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v30, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v1, v16 offset:640
	ds_load_u8 v2, v16 offset:512
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v16 offset:896
	ds_load_u8 v3, v16 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v2, 16, v1
	ds_load_u8 v1, v16 offset:128
	ds_load_u8 v2, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v16 offset:384
	ds_load_u8 v3, v16 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_mov_b32_e32 v3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v66, v2, 16, v1
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_dual_mov_b32 v49, v7 :: v_dual_mov_b32 v48, v6
	v_dual_mov_b32 v47, v5 :: v_dual_mov_b32 v46, v4
	v_dual_mov_b32 v45, v3 :: v_dual_mov_b32 v44, v2
	v_dual_mov_b32 v43, v1 :: v_dual_mov_b32 v42, v0
	ds_load_u8 v1, v16 offset:1664
	ds_load_u8 v2, v16 offset:1536
	v_wmma_i32_16x16x16_iu4 v[42:49], v[66:67], v[50:51], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v16 offset:1920
	ds_load_u8 v3, v16 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v16 offset:1152
	ds_load_u8 v3, v16 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v16 offset:1408
	ds_load_u8 v4, v16 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[42:49], v[1:2], v[52:53], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v1, v16 offset:2688
	ds_load_u8 v2, v16 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v16 offset:2944
	ds_load_u8 v3, v16 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v16 offset:2176
	ds_load_u8 v3, v16 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v16 offset:2432
	ds_load_u8 v4, v16 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[42:49], v[1:2], v[54:55], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v1, v16 offset:3712
	ds_load_u8 v2, v16 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v16 offset:3968
	ds_load_u8 v3, v16 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v16 offset:3200
	ds_load_u8 v3, v16 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v16 offset:3456
	ds_load_u8 v4, v16 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[42:49], v[1:2], v[56:57], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v1, v16 offset:4736
	ds_load_u8 v2, v16 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v16 offset:4992
	ds_load_u8 v3, v16 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v16 offset:4224
	ds_load_u8 v3, v16 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v16 offset:4480
	ds_load_u8 v4, v16 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[42:49], v[1:2], v[58:59], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v1, v16 offset:5760
	ds_load_u8 v2, v16 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v16 offset:6016
	ds_load_u8 v3, v16 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v16 offset:5248
	ds_load_u8 v3, v16 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v16 offset:5504
	ds_load_u8 v4, v16 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[42:49], v[1:2], v[60:61], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v1, v16 offset:6784
	ds_load_u8 v2, v16 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v16 offset:7040
	ds_load_u8 v3, v16 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v16 offset:6272
	ds_load_u8 v3, v16 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v16 offset:6528
	ds_load_u8 v4, v16 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[42:49], v[1:2], v[62:63], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v1, v16 offset:7808
	ds_load_u8 v2, v16 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v16 offset:8064
	ds_load_u8 v3, v16 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v16 offset:7296
	ds_load_u8 v3, v16 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v16 offset:7552
	ds_load_u8 v4, v16 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[42:49], v[1:2], v[64:65], v[42:49] neg_lo:[1,1,0]
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v1, v40, s[12:15], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v2, v19, v39
	s_clause 0x7
	buffer_load_u16 v3, v2, s[28:31], 0 offen
	buffer_load_u16 v4, v2, s[28:31], 0 offen offset:4
	buffer_load_u16 v5, v2, s[28:31], 0 offen offset:8
	buffer_load_u16 v6, v2, s[28:31], 0 offen offset:12
	buffer_load_u16 v7, v2, s[28:31], 0 offen offset:16
	buffer_load_u16 v50, v2, s[28:31], 0 offen offset:20
	buffer_load_u16 v51, v2, s[28:31], 0 offen offset:24
	buffer_load_u16 v2, v2, s[28:31], 0 offen offset:28
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v39, s39, v39
	v_add_nc_u32_e32 v40, 2, v40
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v4, 16, v4
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v6, 16, v6
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v42, v1, v42
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	v_lshlrev_b32_e32 v51, 16, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v36, v42, v3 :: v_dual_lshlrev_b32 v5, 16, v5
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v46, v1, v46
	v_mul_f32_e32 v44, v1, v44
	v_mul_f32_e32 v43, v1, v43
	v_mul_f32_e32 v45, v1, v45
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v47, v1, v47 :: v_dual_fmac_f32 v34, v44, v5
	v_mul_f32_e32 v49, v1, v49
	v_mul_f32_e32 v1, v1, v48
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v37, v43, v4
	v_dual_fmac_f32 v35, v45, v6 :: v_dual_fmac_f32 v32, v46, v7
	v_fmac_f32_e32 v33, v47, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v31, v1, v51
	v_fmac_f32_e32 v11, v49, v2
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_7
; %bb.8:                                ; %Flow
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_mov_b32_e32 v1, v38
	s_branch .LBB0_2
.LBB0_9:                                ; %._crit_edge11
	.loc	1 196 1 is_stmt 1               ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 68
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
		.amdhsa_inst_pref_size 27
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.num_vgpr, 68
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3352
; TotalNumSgprs: 46
; NumVgprs: 68
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 8
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 68
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     68
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
