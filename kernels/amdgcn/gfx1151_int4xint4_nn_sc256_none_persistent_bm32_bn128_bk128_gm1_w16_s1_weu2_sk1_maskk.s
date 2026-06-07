	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
	s_ashr_i32 s28, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s30, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s31, s30, s28
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s31
	s_cbranch_scc1 .LBB0_11
; %bb.1:                                ; %.lr.ph12
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s14, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 258 43 is_stmt 1              ; generate_amdgcn.py:258:43
	s_lshl_b32 s33, s3, 6
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v12, 4, v0
	v_and_b32_e32 v1, 15, v0
	v_dual_mov_b32 v7, 0x5410 :: v_dual_lshlrev_b32 v2, 4, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v3, 1, v0
	v_and_b32_e32 v4, 0xe0, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshrrev_b32_e32 v13, 3, v0
	v_dual_mov_b32 v48, 0 :: v_dual_lshlrev_b32 v5, 2, v0
	v_and_b32_e32 v0, 16, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v16, 0x78, v3
	v_lshrrev_b32_e32 v6, 1, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v3, 0x438, v5
	v_lshrrev_b32_e32 v4, 2, v4
	v_and_b32_e32 v15, 0x70, v2
	v_add_nc_u32_e32 v30, 0, v2
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s14, 0xff
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s3, s14, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s14, s14, s3
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 24
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s34, s14, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	s_mov_b32 s16, s4
	s_ashr_i32 s35, s1, 8
	s_cmpk_lt_i32 s0, 0x100
	v_cmp_eq_u32_e64 s0, 0, v0
	s_cselect_b32 s1, -1, 0
	s_and_b32 s21, s7, 0xffff
	s_abs_i32 s7, s30
	v_mov_b32_e32 v0, 0x7632
	s_cvt_f32_u32 s3, s7
	v_cndmask_b32_e64 v7, 0x1054, v7, s0
	v_lshl_or_b32 v3, v1, 6, v3
	s_sub_i32 s4, 0, s7
	v_rcp_iflag_f32_e32 v10, s3
	v_cndmask_b32_e64 v0, 0x3276, v0, s0
	v_lshl_or_b32 v7, v7, 8, v7
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v14, v12, 16, v1
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v8, 2, v1
	v_xor_b32_e32 v4, v5, v4
	v_lshl_or_b32 v0, v0, 8, v0
	v_and_b32_e32 v7, 0x540054, v7
	v_xor_b32_e32 v5, 8, v3
	v_xor_b32_e32 v9, 16, v3
	v_readfirstlane_b32 s3, v10
	v_and_b32_e32 v0, 0x760076, v0
	v_xor_b32_e32 v11, 24, v3
	v_xor_b32_e32 v26, 32, v3
	v_xor_b32_e32 v27, 40, v3
	s_mul_f32 s3, s3, 0x4f7ffffe
	v_lshl_or_b32 v0, v0, 4, v0
	v_xor_b32_e32 v28, 48, v3
	v_xor_b32_e32 v29, 56, v3
	s_cvt_u32_f32 s3, s3
	v_add3_u32 v18, 0, v1, v6
	v_lshl_or_b32 v1, v7, 4, v7
	v_and_b32_e32 v20, 0x7060706, v0
	v_cndmask_b32_e64 v0, 0, 1, s1
	s_mul_i32 s4, s4, s3
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_or_b32 v17, v12, 1, v6
	s_mul_hi_u32 s1, s3, s4
	v_and_b32_e32 v19, 0x5040504, v1
	s_add_i32 s37, s3, s1
	v_cmp_ne_u32_e64 s1, 1, v0
	v_add_nc_u32_e32 v21, 0, v4
	v_add_nc_u32_e32 v22, 0, v3
	v_add_nc_u32_e32 v23, 0, v5
	v_add_nc_u32_e32 v24, 0, v9
	v_add_nc_u32_e32 v25, 0, v11
	v_add_nc_u32_e32 v26, 0, v26
	v_add_nc_u32_e32 v27, 0, v27
	v_add_nc_u32_e32 v28, 0, v28
	v_add_nc_u32_e32 v29, 0, v29
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s17, s5, 0xffff
	s_mov_b32 s20, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_and_b32 s13, s13, 0xffff
	s_ashr_i32 s36, s30, 31
	s_mov_b32 s38, 0x76543210
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v1.h, 0
	v_mov_b16_e32 v1.l, v37.h
	v_mov_b16_e32 v2.l, v36.h
	v_cmp_o_f32_e64 s3, v36, v36
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_mov_b16_e32 v2.h, v1.h
	v_and_b32_e32 v5, 1, v1
	v_mov_b16_e32 v1.l, v35.h
	v_mov_b16_e32 v3.l, v34.h
	v_mov_b16_e32 v4.l, v32.h
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v5, v37, v5, 0x7fff
	v_and_b32_e32 v6, 1, v1
	v_mov_b16_e32 v1.l, v33.h
	v_mov_b16_e32 v3.h, v1.h
	v_add3_u32 v2, v36, v2, 0x7fff
	v_mov_b16_e32 v4.h, v1.h
	v_mov_b16_e32 v7.l, v31.h
	v_mov_b16_e32 v7.h, v1.h
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v5.l, 0x7fff, v2.h, s3
	v_add3_u32 v2, v35, v6, 0x7fff
	v_and_b32_e32 v6, 1, v1
	v_mov_b16_e32 v1.l, v11.h
	v_cndmask_b16 v5.h, 0x7fff, v5.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_and_b32_e32 v4, 1, v4
	v_and_b32_e32 v7, 1, v7
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v3, v34, v3, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_add3_u32 v4, v32, v4, 0x7fff
	v_add3_u32 v6, v33, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v33, v33
	v_cmp_o_f32_e64 s4, v32, v32
	v_add3_u32 v7, v31, v7, 0x7fff
	v_add3_u32 v1, v11, v1, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_cmp_o_f32_e64 s6, v31, v31
	v_cndmask_b16 v2.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s3
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s4
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s5
	v_cndmask_b16 v1.l, 0x7fff, v7.h, s6
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	v_mul_lo_u32 v7, v0, s29
	v_or_b32_e32 v9, s39, v16
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b32_e64 v4, v5, v3, s0
	v_cndmask_b32_e64 v3, v3, v5, s0
	v_cndmask_b32_e64 v6, v2, v1, s0
	v_cndmask_b32_e64 v5, v1, v2, s0
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_permlanex16_b32 v4, v4, s38, 0xfedcba98 op_sel:[1,0]
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s31
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_permlanex16_b32 v6, v6, s38, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v4, v3, v19
	v_perm_b32 v1, v4, v3, v20
	v_perm_b32 v2, v6, v5, v19
	v_perm_b32 v3, v6, v5, v20
	v_add_lshl_u32 v4, v9, v7, 1
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_11
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
                                        ;       Child Loop BB0_8 Depth 3
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s3, s2
	s_ashr_i32 s5, s2, 31
	s_mul_hi_u32 s4, s3, s37
	s_xor_b32 s5, s5, s36
	s_mul_i32 s6, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s3, s3, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s10, s3, s7
	s_cmp_ge_u32 s3, s7
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s3, s10, s3
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s3, s7
	s_cselect_b32 s3, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s5
	s_sub_i32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s4, s28, s3
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s11, s3, s30
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s5, s4, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s11, s2, s11
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s4, s5
	s_abs_i32 s22, s11
	s_cvt_f32_u32 s6, s4
	s_sub_i32 s10, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s6
	v_readfirstlane_b32 s6, v0
                                        ; implicit-def: $vgpr0
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s10, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s6, s10
	s_add_i32 s6, s6, s10
	s_xor_b32 s10, s11, s5
	s_mul_hi_u32 s6, s22, s6
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s23, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s22, s22, s23
	s_add_i32 s23, s6, 1
	s_sub_i32 s26, s22, s4
	s_cmp_ge_u32 s22, s4
	s_cselect_b32 s6, s23, s6
	s_cselect_b32 s22, s26, s22
	s_add_i32 s23, s6, 1
	s_cmp_ge_u32 s22, s4
	s_cselect_b32 s4, s23, s6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s10
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s5, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s11, s5
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s5, s5, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s3, s5, 5
	s_mov_b32 s5, -1
	v_or_b32_e32 v38, s3, v14
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.4:                                ; %.._crit_edge_crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	v_or_b32_e32 v0, s3, v14
	s_mov_b32 s5, 0
.LBB0_5:                                ; %Flow110
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v37, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s39, s4, 7
	s_cbranch_vccnz .LBB0_2
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_or_b32_e32 v0, s3, v12
	v_or_b32_e32 v9, s39, v15
	v_or_b32_e32 v39, s39, v17
	v_mul_lo_u32 v40, v38, s35
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[10:11], null, v0, s34, v[8:9]
	v_or_b32_e32 v41, 2, v39
	v_or_b32_e32 v42, 4, v39
	v_or_b32_e32 v43, 6, v39
	v_or_b32_e32 v44, 8, v39
	v_or_b32_e32 v45, 10, v39
	v_or_b32_e32 v46, 12, v39
	v_or_b32_e32 v47, 14, v39
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v11, 0
	s_mov_b32 s6, 0
.LBB0_7:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_8 Depth 3
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v48
	v_mov_b32_e32 v2, v48
	v_mov_b32_e32 v3, v48
	v_mov_b32_e32 v4, v48
	v_mov_b32_e32 v5, v48
	v_mov_b32_e32 v6, v48
	v_mov_b32_e32 v7, v48
	.loc	1 256 28 is_stmt 1              ; generate_amdgcn.py:256:28
	s_lshl_b32 s10, s6, 7
	s_mov_b32 s11, -1
	s_mov_b32 s3, 0
.LBB0_8:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 258 26 is_stmt 1              ; generate_amdgcn.py:258:26
	s_or_b32 s3, s3, s10
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s23, s19
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	s_add_i32 s22, s3, s33
	v_or_b32_e32 v49, s22, v8
	v_or_b32_e32 v50, s22, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s34, v49
	.loc	1 259 56 is_stmt 0              ; generate_amdgcn.py:259:56
	v_subrev_nc_u32_e32 v49, s10, v49
	v_subrev_nc_u32_e32 v51, s10, v50
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s3, s34, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e64 s4, 0x80, v49
	.loc	1 265 38 is_stmt 1              ; generate_amdgcn.py:265:38
	v_add_nc_u32_e32 v49, s22, v10
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e64 s5, 0x80, v51
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s22, s18
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 s3, s3, s5
	.loc	1 257 17                        ; generate_amdgcn.py:257:17
	s_and_b32 vcc_lo, exec_lo, s11
	s_mov_b32 s11, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b32 v53, v49, s[16:19], 0 offen
	.loc	1 270 38                        ; generate_amdgcn.py:270:38
	v_mad_u64_u32 v[49:50], null, v50, s29, v[9:10]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 270 30 is_stmt 0              ; generate_amdgcn.py:270:30
	v_cndmask_b32_e64 v49, 0x80000000, v49, s3
	s_mov_b32 s3, 64
	buffer_load_b128 v[49:52], v49, s[20:23], 0 offen
	.loc	1 265 30 is_stmt 1              ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v21, v53
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[53:54], v22
	ds_load_b64 v[55:56], v23
	ds_load_b64 v[57:58], v24
	ds_load_b64 v[59:60], v25
	ds_load_b64 v[61:62], v26
	ds_load_b64 v[63:64], v27
	ds_load_b64 v[65:66], v28
	ds_load_b64 v[67:68], v29
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v30, v[49:52]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v49, v18 offset:640
	ds_load_u8 v50, v18 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v18 offset:896
	ds_load_u8 v51, v18 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v18 offset:128
	ds_load_u8 v51, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v18 offset:384
	ds_load_u8 v52, v18 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[0:7], v[49:50], v[53:54], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v49, v18 offset:1664
	ds_load_u8 v50, v18 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v18 offset:1920
	ds_load_u8 v51, v18 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v18 offset:1152
	ds_load_u8 v51, v18 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v18 offset:1408
	ds_load_u8 v52, v18 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[0:7], v[49:50], v[55:56], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v49, v18 offset:2688
	ds_load_u8 v50, v18 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v18 offset:2944
	ds_load_u8 v51, v18 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v18 offset:2176
	ds_load_u8 v51, v18 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v18 offset:2432
	ds_load_u8 v52, v18 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[0:7], v[49:50], v[57:58], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v49, v18 offset:3712
	ds_load_u8 v50, v18 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v18 offset:3968
	ds_load_u8 v51, v18 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v18 offset:3200
	ds_load_u8 v51, v18 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v18 offset:3456
	ds_load_u8 v52, v18 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[0:7], v[49:50], v[59:60], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v49, v18 offset:4736
	ds_load_u8 v50, v18 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v18 offset:4992
	ds_load_u8 v51, v18 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v18 offset:4224
	ds_load_u8 v51, v18 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v18 offset:4480
	ds_load_u8 v52, v18 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[0:7], v[49:50], v[61:62], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v49, v18 offset:5760
	ds_load_u8 v50, v18 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v18 offset:6016
	ds_load_u8 v51, v18 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v18 offset:5248
	ds_load_u8 v51, v18 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v18 offset:5504
	ds_load_u8 v52, v18 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[0:7], v[49:50], v[63:64], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v49, v18 offset:6784
	ds_load_u8 v50, v18 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v18 offset:7040
	ds_load_u8 v51, v18 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v18 offset:6272
	ds_load_u8 v51, v18 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v18 offset:6528
	ds_load_u8 v52, v18 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[0:7], v[49:50], v[65:66], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v49, v18 offset:7808
	ds_load_u8 v50, v18 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v18 offset:8064
	ds_load_u8 v51, v18 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v18 offset:7296
	ds_load_u8 v51, v18 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v18 offset:7552
	ds_load_u8 v52, v18 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[0:7], v[49:50], v[67:68], v[0:7] neg_lo:[1,1,0]
	.loc	1 257 17                        ; generate_amdgcn.py:257:17
	s_cbranch_vccnz .LBB0_8
; %bb.9:                                ;   in Loop: Header=BB0_7 Depth=2
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_add_lshl_u32 v49, s6, v40, 1
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 273 40                        ; generate_amdgcn.py:273:40
	s_mul_i32 s3, s6, s29
	.loc	1 273 22 is_stmt 0              ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s18
	.loc	1 272 22 is_stmt 1              ; generate_amdgcn.py:272:22
	buffer_load_u16 v49, v49, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v51, v41, s3, 1
	v_add_lshl_u32 v50, v39, s3, 1
	v_add_lshl_u32 v53, v43, s3, 1
	s_mov_b32 s27, s19
	v_add_lshl_u32 v52, v42, s3, 1
	v_add_lshl_u32 v54, v44, s3, 1
	v_add_lshl_u32 v55, v45, s3, 1
	v_add_lshl_u32 v56, v46, s3, 1
	v_add_lshl_u32 v57, v47, s3, 1
	s_clause 0x7
	buffer_load_u16 v51, v51, s[24:27], 0 offen
	buffer_load_u16 v50, v50, s[24:27], 0 offen
	buffer_load_u16 v53, v53, s[24:27], 0 offen
	buffer_load_u16 v52, v52, s[24:27], 0 offen
	buffer_load_u16 v55, v55, s[24:27], 0 offen
	buffer_load_u16 v54, v54, s[24:27], 0 offen
	buffer_load_u16 v57, v57, s[24:27], 0 offen
	buffer_load_u16 v56, v56, s[24:27], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	s_cmp_lg_u32 s6, s35
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v0, v49, v0 :: v_dual_lshlrev_b32 v51, 16, v51
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v36, v0, v50 :: v_dual_lshlrev_b32 v53, 16, v53
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v2, v49, v2
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v3, v49, v3 :: v_dual_lshlrev_b32 v52, 16, v52
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v4, v49, v4 :: v_dual_lshlrev_b32 v55, 16, v55
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v5, v49, v5 :: v_dual_lshlrev_b32 v54, 16, v54
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v6, v49, v6 :: v_dual_lshlrev_b32 v57, 16, v57
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v49, v7 :: v_dual_lshlrev_b32 v56, 16, v56
	v_dual_mul_f32 v1, v49, v1 :: v_dual_fmac_f32 v34, v2, v52
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v35, v3, v53 :: v_dual_fmac_f32 v32, v4, v54
	v_fmac_f32_e32 v33, v5, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v37, v1, v51
	v_fmac_f32_e32 v31, v6, v56
	v_fmac_f32_e32 v11, v7, v57
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_7
; %bb.10:                               ; %Flow
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_mov_b32_e32 v0, v38
	s_branch .LBB0_2
.LBB0_11:                               ; %._crit_edge13
	.loc	1 196 1 is_stmt 1               ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 69
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_vgpr, 69
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3432
; TotalNumSgprs: 42
; NumVgprs: 69
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 8
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 69
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     69
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
