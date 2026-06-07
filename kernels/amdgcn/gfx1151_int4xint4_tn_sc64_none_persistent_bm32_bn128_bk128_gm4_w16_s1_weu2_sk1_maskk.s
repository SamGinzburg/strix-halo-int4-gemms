	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 31
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s29, 0x7f
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
	s_ashr_i32 s30, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s14, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s31, s14, s30
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s31
	s_cbranch_scc1 .LBB0_9
; %bb.1:                                ; %.lr.ph10
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	v_dual_mov_b32 v11, 0x7632 :: v_dual_and_b32 v6, 16, v0
	v_dual_mov_b32 v7, 0x5410 :: v_dual_lshlrev_b32 v4, 1, v0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_and_b32_e32 v1, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s0, 0, v6
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v3, 1, v0
	v_lshlrev_b32_e32 v5, 3, v0
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_lshrrev_b32_e32 v12, 3, v0
	v_and_b32_e32 v8, 0xe0, v0
	v_cndmask_b32_e64 v0, 0x1054, v7, s0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s33, s14, 2
	v_cndmask_b32_e64 v6, 0x3276, v11, s0
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_lshl_or_b32 v11, s3, 5, v2
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v10, 0x78, v3
	v_lshl_or_b32 v0, v0, 8, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s1, s15, 63
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s17, s15, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s16, s1, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s15, s15, s17
	v_and_b32_e32 v0, 0x540054, v0
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s16, s16, 26
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s34, s15, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s16, s1, s16
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mul_lo_u32 v15, s29, v11
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s35, s16, 6
	v_lshl_or_b32 v0, v0, 4, v0
	s_cmp_lt_i32 s1, 64
.Ltmp20:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mul_lo_u32 v16, s28, v11
	s_cselect_b32 s1, -1, 0
	s_abs_i32 s36, s33
	v_and_b32_e32 v13, 0x5040504, v0
	v_cndmask_b32_e64 v0, 0, 1, s1
	s_cvt_f32_u32 s15, s36
	s_mov_b32 s16, s4
	s_sub_i32 s4, 0, s36
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v3, 0x70, v3
	v_cmp_ne_u32_e64 s1, 1, v0
	v_mov_b32_e32 v0, 0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v9, v2, 16, v1
	v_lshl_or_b32 v2, v6, 8, v6
	v_rcp_iflag_f32_e32 v6, s15
	v_add_nc_u32_e32 v7, 0, v1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_and_b32_e32 v12, 2, v12
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v15, v1, 3, v15
	v_and_b32_e32 v2, 0x760076, v2
	v_lshl_add_u32 v16, v1, 1, v16
	v_add_nc_u32_e32 v17, 0, v4
	v_add_nc_u32_e32 v18, 0, v9
	v_add_nc_u32_e32 v19, 0, v5
	v_lshl_or_b32 v2, v2, 4, v2
	v_readfirstlane_b32 s3, v6
	v_add_nc_u32_e32 v20, v7, v3
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_and_b32_e32 v14, 0x7060706, v2
	s_mul_f32 s3, s3, 0x4f7ffffe
	s_mov_b32 s20, s6
	s_mov_b32 s24, s10
	s_and_b32 s17, s5, 0xffff
	s_cvt_u32_f32 s3, s3
	s_and_b32 s21, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mul_i32 s4, s4, s3
	s_and_b32 s13, s13, 0xffff
	s_mul_hi_u32 s4, s3, s4
	s_bfe_i32 s37, s14, 0x1001d
	s_add_i32 s39, s3, s4
	v_cmp_gt_i32_e64 s3, 32, v11
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s38, s29, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s40, s35, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s41, s29, 5
	s_lshl_b32 s28, s28, 5
	s_mov_b32 s42, 0x76543210
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v2.h, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v2.l, v28.h
	v_mov_b16_e32 v3.l, v27.h
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cmp_o_f32_e64 s4, v27, v27
	v_mov_b16_e32 v3.h, v2.h
	v_and_b32_e32 v6, 1, v2
	v_mov_b16_e32 v2.l, v26.h
	v_mov_b16_e32 v4.l, v25.h
	v_mov_b16_e32 v4.h, v2.h
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v6, v28, v6, 0x7fff
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v2.l, v24.h
	v_mov_b16_e32 v5.l, v23.h
	v_add3_u32 v3, v27, v3, 0x7fff
	v_mov_b16_e32 v5.h, v2.h
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_cndmask_b16 v6.l, 0x7fff, v3.h, s4
	v_add3_u32 v3, v26, v7, 0x7fff
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v26.l, v22.h
	v_mov_b16_e32 v26.h, v2.h
	v_mov_b16_e32 v2.l, v21.h
	v_add3_u32 v4, v25, v4, 0x7fff
	v_and_b32_e32 v5, 1, v5
	v_cndmask_b16 v3.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_and_b32_e32 v25, 1, v26
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v5, v23, v5, 0x7fff
	v_add3_u32 v7, v24, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v24, v24
	v_cmp_o_f32_e64 s5, v23, v23
	v_add3_u32 v23, v22, v25, 0x7fff
	v_add3_u32 v2, v21, v2, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_cmp_o_f32_e64 s7, v22, v22
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s4
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s5
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_cndmask_b16 v2.l, 0x7fff, v23.h, s7
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	v_mul_lo_u32 v21, v1, s29
	v_lshl_or_b32 v22, s43, 7, v10
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
	s_cmp_lt_i32 s2, s31
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_permlanex16_b32 v7, v7, s42, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v1, v5, v4, v13
	v_perm_b32 v2, v5, v4, v14
	v_perm_b32 v3, v7, v6, v13
	v_perm_b32 v4, v7, v6, v14
	v_add_lshl_u32 v5, v22, v21, 1
	buffer_store_b128 v[1:4], v5, s[12:15], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_9
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s4, s2
	s_ashr_i32 s6, s2, 31
	s_mul_hi_u32 s5, s4, s39
	s_xor_b32 s6, s6, s37
	s_mul_i32 s7, s5, s36
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s7
	s_add_i32 s7, s5, 1
	s_sub_i32 s10, s4, s36
	s_cmp_ge_u32 s4, s36
	s_cselect_b32 s5, s7, s5
	s_cselect_b32 s4, s10, s4
	s_add_i32 s7, s5, 1
	s_cmp_ge_u32 s4, s36
	s_cselect_b32 s4, s7, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s5, s4, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s4, s4, s33
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s6, s30, s5
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s22, s2, s4
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s7, s6, 4
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s6
	s_sub_i32 s11, 0, s6
	v_rcp_iflag_f32_e32 v1, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v1
                                        ; implicit-def: $vgpr1
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s4, s10, s11
	s_abs_i32 s11, s22
	s_add_i32 s10, s10, s4
	s_xor_b32 s4, s22, s7
	s_mul_hi_u32 s10, s11, s10
	s_ashr_i32 s4, s4, 31
	s_mul_i32 s23, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s11, s11, s23
	s_add_i32 s23, s10, 1
	s_sub_i32 s26, s11, s6
	s_cmp_ge_u32 s11, s6
	s_cselect_b32 s10, s23, s10
	s_cselect_b32 s11, s26, s11
	s_add_i32 s23, s10, 1
	s_cmp_ge_u32 s11, s6
	s_cselect_b32 s6, s23, s10
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s43, s6, s4
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s7, s43, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s22, s7
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s7, s7, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s5, s7, 5
	s_mov_b32 s7, -1
	v_or_b32_e32 v29, s5, v9
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.4:                                ; %.._crit_edge_crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	v_or_b32_e32 v1, s5, v9
	s_mov_b32 s7, 0
.LBB0_5:                                ; %Flow173
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_2
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v2, s5, v9
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	v_lshl_or_b32 v1, s6, 8, v8
	v_lshl_add_u32 v3, s6, 7, v15
	s_lshl_b32 s6, s4, 8
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v31, s40, v2
	s_lshl_b32 s4, s4, 7
	v_subrev_nc_u32_e32 v30, s6, v1
	v_subrev_nc_u32_e32 v32, s4, v3
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v33, s5, v16
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	s_mov_b32 s4, 0
	s_mov_b32 s5, s35
.LBB0_7:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v1, s4, v11
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v4, v12, v30
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s18
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s11, s19
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v6, v0
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s5, s5, -1
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	v_dual_cndmask_b32 v1, 0x80000000, v33 :: v_dual_cndmask_b32 v2, 0x80000000, v32
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s4, s4, 32
	s_cmp_lg_u32 s5, 0
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	buffer_load_u16 v3, v1, s[16:19], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b64 v[1:2], v2, s[20:23], 0 offen
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v32, s41, v32
	v_add_nc_u32_e32 v30, s38, v30
	v_add_nc_u32_e32 v33, s28, v33
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt vmcnt(1)
	ds_store_b16 v17, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v42, v18
	ds_load_u8 v43, v18 offset:32
	ds_load_u8 v44, v18 offset:96
	ds_load_u8 v45, v18 offset:224
	ds_load_u8 v46, v18 offset:192
	ds_load_u8 v47, v18 offset:160
	ds_load_u8 v48, v18 offset:128
	ds_load_u8 v49, v18 offset:64
	ds_load_u8 v50, v18 offset:352
	ds_load_u8 v51, v18 offset:480
	ds_load_u8 v52, v18 offset:448
	ds_load_u8 v53, v18 offset:416
	ds_load_u8 v54, v18 offset:384
	ds_load_u8 v55, v18 offset:320
	ds_load_u8 v56, v18 offset:288
	ds_load_u8 v57, v18 offset:256
	ds_load_u8 v58, v18 offset:608
	ds_load_u8 v59, v18 offset:736
	ds_load_u8 v60, v18 offset:704
	ds_load_u8 v61, v18 offset:672
	ds_load_u8 v62, v18 offset:640
	ds_load_u8 v63, v18 offset:576
	ds_load_u8 v64, v18 offset:544
	ds_load_u8 v65, v18 offset:512
	ds_load_u8 v66, v18 offset:864
	ds_load_u8 v67, v18 offset:992
	ds_load_u8 v68, v18 offset:960
	ds_load_u8 v69, v18 offset:928
	ds_load_u8 v70, v18 offset:896
	ds_load_u8 v71, v18 offset:832
	ds_load_u8 v72, v18 offset:800
	ds_load_u8 v73, v18 offset:768
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v19, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v74, v31, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v75, v4, s[24:27], 0 offen offset:4
	buffer_load_u16 v76, v4, s[24:27], 0 offen
	buffer_load_u16 v77, v4, s[24:27], 0 offen offset:12
	buffer_load_u16 v78, v4, s[24:27], 0 offen offset:8
	buffer_load_u16 v79, v4, s[24:27], 0 offen offset:20
	buffer_load_u16 v80, v4, s[24:27], 0 offen offset:16
	buffer_load_u16 v81, v4, s[24:27], 0 offen offset:28
	buffer_load_u16 v82, v4, s[24:27], 0 offen offset:24
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v31, 2, v31
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v41, v7 :: v_dual_mov_b32 v40, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v38, v4 :: v_dual_mov_b32 v39, v5
	v_dual_mov_b32 v37, v3 :: v_dual_mov_b32 v36, v2
	v_dual_mov_b32 v35, v1 :: v_dual_mov_b32 v34, v0
	ds_load_u8 v1, v20 offset:640
	ds_load_u8 v2, v20 offset:896
	ds_load_u8 v3, v20 offset:768
	ds_load_u8 v4, v20 offset:512
	ds_load_u8 v5, v20 offset:128
	ds_load_u8 v6, v20 offset:384
	ds_load_u8 v7, v20 offset:256
	ds_load_u8 v83, v20
	ds_load_u8 v84, v20 offset:1664
	ds_load_u8 v85, v20 offset:1920
	ds_load_u8 v86, v20 offset:1792
	ds_load_u8 v87, v20 offset:1536
	ds_load_u8 v88, v20 offset:1152
	ds_load_u8 v89, v20 offset:1408
	ds_load_u8 v90, v20 offset:1280
	ds_load_u8 v91, v20 offset:1024
	ds_load_u8 v92, v20 offset:2688
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v20 offset:2944
	v_perm_b32 v45, v46, v45, 0xc0c0004
	v_perm_b32 v44, v49, v44, 0xc0c0004
	ds_load_u8 v49, v20 offset:2560
	v_perm_b32 v42, v42, v43, 0xc0c0004
	ds_load_u8 v43, v20 offset:2176
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v20 offset:2432
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v20 offset:2304
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v20 offset:2048
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v20 offset:3072
	ds_load_u8 v46, v20 offset:2816
	v_perm_b32 v50, v55, v50, 0xc0c0004
	ds_load_u8 v55, v20 offset:3712
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v20 offset:3968
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v20 offset:3840
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v20 offset:3584
	v_perm_b32 v58, v63, v58, 0xc0c0004
	ds_load_u8 v63, v20 offset:3200
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v20 offset:3328
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v20 offset:3456
	v_perm_b32 v66, v71, v66, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v71, v4, v1, 0xc0c0004
	v_perm_b32 v93, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v83, v83, v5, 0xc0c0004
	v_perm_b32 v7, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v84, v87, v84, 0xc0c0004
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v86, v91, v88, 0xc0c0004
	v_perm_b32 v87, v90, v89, 0xc0c0004
	v_lshl_or_b32 v2, v45, 16, v47
	v_lshl_or_b32 v1, v44, 16, v42
	v_lshl_or_b32 v45, v93, 16, v71
	v_lshl_or_b32 v44, v7, 16, v83
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v49, v49, v92, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v48, v46, v48, 0xc0c0004
	v_perm_b32 v57, v57, v43, 0xc0c0004
	v_perm_b32 v52, v52, v54, 0xc0c0004
	v_lshl_or_b32 v4, v51, 16, v53
	v_lshl_or_b32 v3, v50, 16, v56
	v_lshl_or_b32 v47, v85, 16, v84
	v_lshl_or_b32 v46, v87, 16, v86
	v_wmma_i32_16x16x16_iu4 v[34:41], v[44:45], v[1:2], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v54, v65, v55, 0xc0c0004
	v_perm_b32 v55, v60, v62, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v60, v68, v63, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v70, v73, 0xc0c0004
	v_lshl_or_b32 v6, v59, 16, v61
	v_lshl_or_b32 v5, v58, 16, v64
	v_lshl_or_b32 v49, v48, 16, v49
	v_lshl_or_b32 v48, v52, 16, v57
	v_wmma_i32_16x16x16_iu4 v[34:41], v[46:47], v[3:4], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v43, v67, 16, v69
	v_lshl_or_b32 v42, v66, 16, v72
	v_lshl_or_b32 v51, v55, 16, v54
	v_lshl_or_b32 v50, v62, 16, v60
	v_wmma_i32_16x16x16_iu4 v[34:41], v[48:49], v[5:6], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[50:51], v[42:43], v[34:41] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v2, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v36
	v_cvt_f32_i32_e32 v1, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v37
	v_cvt_f32_i32_e32 v5, v38
	v_cvt_f32_i32_e32 v6, v39
	v_cvt_f32_i32_e32 v7, v40
	v_cvt_f32_i32_e32 v34, v41
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v36, 16, v75
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v35, 16, v74
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v37, 16, v76
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v38, 16, v77
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v2, v35, v2
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v28, v2, v36 :: v_dual_lshlrev_b32 v39, 16, v78
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v4, v35, v4
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v5, v35, v5 :: v_dual_lshlrev_b32 v40, 16, v79
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v6, v35, v6 :: v_dual_lshlrev_b32 v41, 16, v80
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v3, v35, v3 :: v_dual_lshlrev_b32 v42, 16, v81
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v82
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v1, v35, v1
	v_mul_f32_e32 v34, v35, v34
	v_dual_mul_f32 v7, v35, v7 :: v_dual_fmac_f32 v26, v4, v38
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v25, v3, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v27, v1, v37 :: v_dual_fmac_f32 v24, v6, v40
	v_dual_fmac_f32 v23, v5, v41 :: v_dual_fmac_f32 v22, v7, v43
	v_fmac_f32_e32 v21, v34, v42
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_7
; %bb.8:                                ; %Flow
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_mov_b32_e32 v1, v29
	s_branch .LBB0_2
.LBB0_9:                                ; %._crit_edge11
	.loc	1 196 1 is_stmt 1               ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp21:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 94
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
		.amdhsa_inst_pref_size 24
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_vgpr, 94
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3028
; TotalNumSgprs: 46
; NumVgprs: 94
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 94
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     94
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
