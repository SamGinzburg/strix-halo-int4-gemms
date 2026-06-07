	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
	s_cbranch_scc1 .LBB0_11
; %bb.1:                                ; %.lr.ph12
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 258 43 is_stmt 1              ; generate_amdgcn.py:258:43
	s_lshl_b32 s34, s3, 6
	v_dual_mov_b32 v8, 0x7632 :: v_dual_and_b32 v1, 7, v0
	v_dual_mov_b32 v7, 0x5410 :: v_dual_and_b32 v2, 15, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshrrev_b32_e32 v10, 3, v0
	v_dual_mov_b32 v40, 0 :: v_dual_lshlrev_b32 v5, 2, v0
	v_lshlrev_b32_e32 v6, 4, v0
	v_and_b32_e32 v0, 16, v0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s33, s14, 2
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshlrev_b32_e32 v11, 2, v1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshlrev_b32_e32 v13, 4, v1
	v_and_b32_e32 v1, 0x70, v4
	v_cmp_eq_u32_e64 s0, 0, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s1, s15, 0xff
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s16, s15, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s3, s1, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s15, s15, s16
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s3, s3, 24
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s35, s15, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s3, s1, s3
	v_cndmask_b32_e64 v0, 0x1054, v7, s0
	s_ashr_i32 s36, s3, 8
	s_cmpk_lt_i32 s1, 0x100
	v_cndmask_b32_e64 v7, 0x3276, v8, s0
	s_cselect_b32 s1, -1, 0
	s_abs_i32 s37, s33
	v_lshl_or_b32 v0, v0, 8, v0
	s_cvt_f32_u32 s3, s37
	v_lshl_or_b32 v7, v7, 8, v7
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v12, v3, 16, v2
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_or_b32 v15, v3, 1, v1
	v_rcp_iflag_f32_e32 v8, s3
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v3, 0x760076, v7
	s_mov_b32 s16, s4
	s_sub_i32 s4, 0, s37
	v_add3_u32 v17, 0, v2, v1
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v1, v3, 4, v3
	v_and_b32_e32 v14, 0x78, v4
	v_add_nc_u32_e32 v16, 0, v12
	v_readfirstlane_b32 s3, v8
	v_and_b32_e32 v18, 0x5040504, v0
	v_cndmask_b32_e64 v0, 0, 1, s1
	v_and_b32_e32 v19, 0x7060706, v1
	v_add_nc_u32_e32 v20, 0, v5
	s_mul_f32 s3, s3, 0x4f7ffffe
	v_add_nc_u32_e32 v21, 0, v6
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_cvt_u32_f32 s3, s3
	s_mov_b32 s20, s6
	s_mov_b32 s24, s10
	s_and_b32 s17, s5, 0xffff
	s_mul_i32 s4, s4, s3
	s_and_b32 s21, s7, 0xffff
	s_mul_hi_u32 s1, s3, s4
	s_and_b32 s9, s9, 0xffff
	s_add_i32 s38, s3, s1
	v_cmp_ne_u32_e64 s1, 1, v0
	s_and_b32 s25, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s7, s14, 0x1001d
	s_mov_b32 s39, 0x76543210
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v1.h, 0
	v_mov_b16_e32 v1.l, v29.h
	v_mov_b16_e32 v2.l, v28.h
	v_cmp_o_f32_e64 s3, v28, v28
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_mov_b16_e32 v2.h, v1.h
	v_and_b32_e32 v5, 1, v1
	v_mov_b16_e32 v1.l, v27.h
	v_mov_b16_e32 v3.l, v26.h
	v_mov_b16_e32 v4.l, v24.h
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v5, v29, v5, 0x7fff
	v_and_b32_e32 v6, 1, v1
	v_mov_b16_e32 v1.l, v25.h
	v_mov_b16_e32 v3.h, v1.h
	v_add3_u32 v2, v28, v2, 0x7fff
	v_mov_b16_e32 v4.h, v1.h
	v_mov_b16_e32 v7.l, v23.h
	v_mov_b16_e32 v7.h, v1.h
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v5.l, 0x7fff, v2.h, s3
	v_add3_u32 v2, v27, v6, 0x7fff
	v_and_b32_e32 v6, 1, v1
	v_mov_b16_e32 v1.l, v22.h
	v_cndmask_b16 v5.h, 0x7fff, v5.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_and_b32_e32 v4, 1, v4
	v_and_b32_e32 v7, 1, v7
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v3, v26, v3, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_add3_u32 v4, v24, v4, 0x7fff
	v_add3_u32 v6, v25, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v25, v25
	v_cmp_o_f32_e64 s4, v24, v24
	v_add3_u32 v7, v23, v7, 0x7fff
	v_add3_u32 v1, v22, v1, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_cmp_o_f32_e64 s6, v23, v23
	v_cndmask_b16 v2.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s3
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s4
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s5
	v_cndmask_b16 v1.l, 0x7fff, v7.h, s6
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	v_mul_lo_u32 v7, v0, s29
	v_or_b32_e32 v8, s40, v14
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b32_e64 v4, v5, v3, s0
	v_cndmask_b32_e64 v3, v3, v5, s0
	v_cndmask_b32_e64 v6, v2, v1, s0
	v_cndmask_b32_e64 v5, v1, v2, s0
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_permlanex16_b32 v4, v4, s39, 0xfedcba98 op_sel:[1,0]
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s31
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_permlanex16_b32 v6, v6, s39, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v4, v3, v18
	v_perm_b32 v1, v4, v3, v19
	v_perm_b32 v2, v6, v5, v18
	v_perm_b32 v3, v6, v5, v19
	v_add_lshl_u32 v4, v8, v7, 1
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_11
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
                                        ;       Child Loop BB0_8 Depth 3
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s3, s2
	s_ashr_i32 s5, s2, 31
	s_mul_hi_u32 s4, s3, s38
	s_xor_b32 s5, s5, s7
	s_mul_i32 s6, s4, s37
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s3, s3, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s10, s3, s37
	s_cmp_ge_u32 s3, s37
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s3, s10, s3
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s3, s37
	s_cselect_b32 s3, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s5
	s_sub_i32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s5, s3, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s3, s3, s33
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s4, s30, s5
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s3, s2, s3
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s6, s4, 4
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s22, s3
	s_abs_i32 s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s10, s4
	s_sub_i32 s11, 0, s4
	v_rcp_iflag_f32_e32 v0, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v0
                                        ; implicit-def: $vgpr0
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s11, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s11
	s_xor_b32 s11, s3, s6
	s_mul_hi_u32 s10, s22, s10
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s23, s10, s4
	s_sub_i32 s22, s22, s23
	s_add_i32 s23, s10, 1
	s_sub_i32 s26, s22, s4
	s_cmp_ge_u32 s22, s4
	s_cselect_b32 s10, s23, s10
	s_cselect_b32 s22, s26, s22
	s_add_i32 s23, s10, 1
	s_cmp_ge_u32 s22, s4
	s_cselect_b32 s4, s23, s10
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s4, s4, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s11
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s3, s3, s6
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s3, s3, s5
	s_mov_b32 s5, -1
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s3, s3, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v30, s3, v12
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.4:                                ; %.._crit_edge_crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	v_or_b32_e32 v0, s3, v12
	s_mov_b32 s5, 0
.LBB0_5:                                ; %Flow165
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s40, s4, 7
	s_cbranch_vccnz .LBB0_2
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_or_b32_e32 v31, s40, v15
	v_mul_lo_u32 v32, v30, s36
	v_or_b32_e32 v8, s3, v11
	v_or_b32_e32 v9, s40, v13
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_or_b32_e32 v33, 2, v31
	v_or_b32_e32 v34, 4, v31
	v_or_b32_e32 v35, 6, v31
	v_or_b32_e32 v36, 8, v31
	v_or_b32_e32 v37, 10, v31
	v_or_b32_e32 v38, 12, v31
	v_or_b32_e32 v39, 14, v31
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	s_mov_b32 s4, 0
.LBB0_7:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_8 Depth 3
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v40
	v_mov_b32_e32 v2, v40
	v_mov_b32_e32 v3, v40
	v_mov_b32_e32 v4, v40
	v_mov_b32_e32 v5, v40
	v_mov_b32_e32 v6, v40
	v_mov_b32_e32 v7, v40
	.loc	1 256 28 is_stmt 1              ; generate_amdgcn.py:256:28
	s_lshl_b32 s5, s4, 7
	s_mov_b32 s6, -1
	s_mov_b32 s3, 0
.LBB0_8:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 258 26 is_stmt 1              ; generate_amdgcn.py:258:26
	s_or_b32 s3, s3, s5
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s22, s18
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	s_add_i32 s3, s3, s34
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s23, s19
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_or_b32_e32 v43, s3, v10
	.loc	1 259 56                        ; generate_amdgcn.py:259:56
	v_subrev_nc_u32_e32 v44, s5, v43
	.loc	1 263 38                        ; generate_amdgcn.py:263:38
	v_mad_u64_u32 v[41:42], null, v43, s28, v[8:9]
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s35, v43
	.loc	1 270 38                        ; generate_amdgcn.py:270:38
	v_mad_u64_u32 v[42:43], null, v43, s29, v[9:10]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e64 s3, 0x80, v44
	.loc	1 259 30 is_stmt 0              ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	s_mov_b32 s3, 64
	.loc	1 263 30 is_stmt 1              ; generate_amdgcn.py:263:30
	v_dual_cndmask_b32 v41, 0x80000000, v41 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	.loc	1 257 17                        ; generate_amdgcn.py:257:17
	s_and_b32 vcc_lo, exec_lo, s6
	s_mov_b32 s6, 0
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	buffer_load_b32 v45, v41, s[16:19], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b128 v[41:44], v42, s[20:23], 0 offen
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v20, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v45, v16
	ds_load_u8 v46, v16 offset:32
	ds_load_u8 v47, v16 offset:96
	ds_load_u8 v48, v16 offset:224
	ds_load_u8 v49, v16 offset:192
	ds_load_u8 v50, v16 offset:160
	ds_load_u8 v51, v16 offset:128
	ds_load_u8 v52, v16 offset:64
	ds_load_u8 v53, v16 offset:352
	ds_load_u8 v54, v16 offset:480
	ds_load_u8 v55, v16 offset:448
	ds_load_u8 v56, v16 offset:416
	ds_load_u8 v57, v16 offset:384
	ds_load_u8 v58, v16 offset:320
	ds_load_u8 v59, v16 offset:288
	ds_load_u8 v60, v16 offset:256
	ds_load_u8 v61, v16 offset:608
	ds_load_u8 v62, v16 offset:736
	ds_load_u8 v63, v16 offset:704
	ds_load_u8 v64, v16 offset:672
	ds_load_u8 v65, v16 offset:640
	ds_load_u8 v66, v16 offset:576
	ds_load_u8 v67, v16 offset:544
	ds_load_u8 v68, v16 offset:512
	ds_load_u8 v69, v16 offset:864
	ds_load_u8 v70, v16 offset:992
	ds_load_u8 v71, v16 offset:960
	ds_load_u8 v72, v16 offset:928
	ds_load_u8 v73, v16 offset:896
	ds_load_u8 v74, v16 offset:832
	ds_load_u8 v75, v16 offset:800
	ds_load_u8 v76, v16 offset:768
	ds_load_u8 v77, v16 offset:1120
	ds_load_u8 v78, v16 offset:1248
	ds_load_u8 v79, v16 offset:1216
	ds_load_u8 v80, v16 offset:1184
	ds_load_u8 v81, v16 offset:1152
	ds_load_u8 v82, v16 offset:1088
	ds_load_u8 v83, v16 offset:1056
	ds_load_u8 v84, v16 offset:1024
	ds_load_u8 v85, v16 offset:1376
	ds_load_u8 v86, v16 offset:1504
	ds_load_u8 v87, v16 offset:1472
	ds_load_u8 v88, v16 offset:1440
	ds_load_u8 v89, v16 offset:1408
	ds_load_u8 v90, v16 offset:1344
	ds_load_u8 v91, v16 offset:1312
	ds_load_u8 v92, v16 offset:1280
	ds_load_u8 v93, v16 offset:1632
	ds_load_u8 v94, v16 offset:1760
	ds_load_u8 v95, v16 offset:1728
	ds_load_u8 v96, v16 offset:1696
	ds_load_u8 v97, v16 offset:1664
	ds_load_u8 v98, v16 offset:1600
	ds_load_u8 v99, v16 offset:1568
	ds_load_u8 v100, v16 offset:1536
	ds_load_u8 v101, v16 offset:1888
	ds_load_u8 v102, v16 offset:2016
	ds_load_u8 v103, v16 offset:1984
	ds_load_u8 v104, v16 offset:1952
	ds_load_u8 v105, v16 offset:1920
	ds_load_u8 v106, v16 offset:1856
	ds_load_u8 v107, v16 offset:1824
	ds_load_u8 v108, v16 offset:1792
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v21, v[41:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v41, v51, v50, 0xc0c0004
	ds_load_u8 v50, v17 offset:128
	v_perm_b32 v42, v49, v48, 0xc0c0004
	ds_load_u8 v48, v17 offset:384
	v_perm_b32 v43, v52, v47, 0xc0c0004
	v_perm_b32 v44, v45, v46, 0xc0c0004
	v_perm_b32 v45, v57, v56, 0xc0c0004
	v_perm_b32 v46, v55, v54, 0xc0c0004
	ds_load_u8 v54, v17 offset:1920
	ds_load_u8 v52, v17 offset:1664
	v_perm_b32 v47, v60, v59, 0xc0c0004
	v_perm_b32 v53, v58, v53, 0xc0c0004
	v_perm_b32 v57, v65, v64, 0xc0c0004
	ds_load_u8 v58, v17 offset:1152
	ds_load_u8 v60, v17 offset:1408
	v_perm_b32 v59, v63, v62, 0xc0c0004
	v_perm_b32 v62, v68, v67, 0xc0c0004
	ds_load_u8 v63, v17 offset:1280
	ds_load_u8 v64, v17 offset:1024
	ds_load_u8 v49, v17 offset:256
	ds_load_u8 v51, v17
	v_perm_b32 v61, v66, v61, 0xc0c0004
	v_perm_b32 v65, v73, v72, 0xc0c0004
	ds_load_u8 v66, v17 offset:2688
	ds_load_u8 v68, v17 offset:2944
	v_perm_b32 v67, v71, v70, 0xc0c0004
	v_perm_b32 v70, v76, v75, 0xc0c0004
	v_perm_b32 v69, v74, v69, 0xc0c0004
	v_perm_b32 v73, v81, v80, 0xc0c0004
	ds_load_u8 v74, v17 offset:2176
	ds_load_u8 v76, v17 offset:2432
	v_perm_b32 v75, v79, v78, 0xc0c0004
	v_perm_b32 v78, v84, v83, 0xc0c0004
	ds_load_u8 v79, v17 offset:2304
	ds_load_u8 v80, v17 offset:2048
	ds_load_u8 v55, v17 offset:1792
	ds_load_u8 v56, v17 offset:1536
	v_perm_b32 v81, v89, v88, 0xc0c0004
	v_perm_b32 v83, v87, v86, 0xc0c0004
	v_perm_b32 v86, v92, v91, 0xc0c0004
	v_perm_b32 v85, v90, v85, 0xc0c0004
	v_perm_b32 v89, v97, v96, 0xc0c0004
	ds_load_u8 v90, v17 offset:3200
	ds_load_u8 v92, v17 offset:3456
	v_perm_b32 v91, v95, v94, 0xc0c0004
	ds_load_u8 v95, v17 offset:3328
	ds_load_u8 v96, v17 offset:3072
	ds_load_u8 v71, v17 offset:2816
	ds_load_u8 v72, v17 offset:2560
	ds_load_u8 v84, v17 offset:3968
	v_perm_b32 v94, v100, v99, 0xc0c0004
	v_perm_b32 v93, v98, v93, 0xc0c0004
	v_perm_b32 v97, v105, v104, 0xc0c0004
	ds_load_u8 v98, v17 offset:4736
	ds_load_u8 v100, v17 offset:4992
	v_perm_b32 v99, v103, v102, 0xc0c0004
	v_perm_b32 v102, v108, v107, 0xc0c0004
	v_perm_b32 v101, v106, v101, 0xc0c0004
	ds_load_u8 v106, v17 offset:4224
	ds_load_u8 v108, v17 offset:4480
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v17 offset:4352
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v17 offset:4096
	ds_load_u8 v87, v17 offset:3840
	ds_load_u8 v88, v17 offset:3584
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v74, v80, v74, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v68, v71, v68, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v66, v72, v66, 0xc0c0004
	ds_load_u8 v72, v17 offset:5248
	ds_load_u8 v71, v17 offset:5504
	ds_load_u8 v80, v17 offset:5376
	v_perm_b32 v76, v79, v76, 0xc0c0004
	ds_load_u8 v79, v17 offset:5120
	ds_load_u8 v103, v17 offset:4864
	ds_load_u8 v104, v17 offset:4608
	v_perm_b32 v77, v82, v77, 0xc0c0004
	ds_load_u8 v82, v17 offset:3712
	v_perm_b32 v52, v56, v52, 0xc0c0004
	ds_load_u8 v56, v17 offset:5760
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v17 offset:6016
	v_perm_b32 v58, v64, v58, 0xc0c0004
	v_perm_b32 v60, v63, v60, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v49, v49, v106, 0xc0c0004
	v_perm_b32 v51, v51, v108, 0xc0c0004
	ds_load_u8 v108, v17 offset:6400
	ds_load_u8 v106, v17 offset:6144
	ds_load_u8 v64, v17 offset:5888
	ds_load_u8 v63, v17 offset:5632
	ds_load_u8 v109, v17 offset:640
	ds_load_u8 v110, v17 offset:896
	ds_load_u8 v111, v17 offset:768
	ds_load_u8 v112, v17 offset:512
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v84, v87, v84, 0xc0c0004
	ds_load_u8 v87, v17 offset:7040
	v_perm_b32 v90, v96, v90, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v100, v103, v100, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v98, v104, v98, 0xc0c0004
	ds_load_u8 v104, v17 offset:6272
	ds_load_u8 v103, v17 offset:6528
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v82, v88, v82, 0xc0c0004
	ds_load_u8 v88, v17 offset:6784
	v_perm_b32 v92, v95, v92, 0xc0c0004
	v_lshl_or_b32 v42, v42, 16, v41
	v_lshl_or_b32 v41, v43, 16, v44
	v_lshl_or_b32 v43, v48, 16, v50
	v_lshl_or_b32 v46, v46, 16, v45
	v_lshl_or_b32 v45, v53, 16, v47
	v_lshl_or_b32 v48, v54, 16, v52
	v_lshl_or_b32 v47, v60, 16, v58
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v55, v64, v55, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v63, v56, 0xc0c0004
	ds_load_u8 v63, v17 offset:7808
	ds_load_u8 v64, v17 offset:8064
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v105, v112, v109, 0xc0c0004
	v_perm_b32 v107, v111, v110, 0xc0c0004
	v_perm_b32 v72, v79, v72, 0xc0c0004
	ds_load_u8 v79, v17 offset:7936
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v104, v106, v104, 0xc0c0004
	ds_load_u8 v106, v17 offset:7168
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v103, v108, v103, 0xc0c0004
	ds_load_u8 v108, v17 offset:7552
	ds_load_u8 v96, v17 offset:6912
	ds_load_u8 v95, v17 offset:6656
	v_lshl_or_b32 v44, v107, 16, v105
	v_perm_b32 v71, v80, v71, 0xc0c0004
	ds_load_u8 v80, v17 offset:7680
	v_wmma_i32_16x16x16_iu4 v[0:7], v[43:44], v[41:42], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v42, v59, 16, v57
	v_lshl_or_b32 v41, v61, 16, v62
	v_lshl_or_b32 v44, v68, 16, v66
	v_lshl_or_b32 v43, v76, 16, v74
	v_wmma_i32_16x16x16_iu4 v[0:7], v[47:48], v[45:46], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v67, 16, v65
	v_lshl_or_b32 v45, v69, 16, v70
	v_lshl_or_b32 v48, v84, 16, v82
	v_lshl_or_b32 v47, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[0:7], v[43:44], v[41:42], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v42, v75, 16, v73
	v_lshl_or_b32 v41, v77, 16, v78
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v96, v87, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v88, v95, v88, 0xc0c0004
	ds_load_u8 v95, v17 offset:7296
	ds_load_u8 v96, v17 offset:7424
	v_lshl_or_b32 v44, v100, 16, v98
	v_lshl_or_b32 v43, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[0:7], v[47:48], v[45:46], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v83, 16, v81
	v_lshl_or_b32 v45, v85, 16, v86
	v_lshl_or_b32 v48, v55, 16, v56
	v_lshl_or_b32 v47, v71, 16, v72
	v_wmma_i32_16x16x16_iu4 v[0:7], v[43:44], v[41:42], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v63, v80, v63, 0xc0c0004
	v_perm_b32 v64, v79, v64, 0xc0c0004
	v_lshl_or_b32 v42, v91, 16, v89
	v_lshl_or_b32 v41, v93, 16, v94
	v_lshl_or_b32 v44, v87, 16, v88
	v_lshl_or_b32 v43, v103, 16, v104
	v_wmma_i32_16x16x16_iu4 v[0:7], v[47:48], v[45:46], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v99, 16, v97
	v_lshl_or_b32 v45, v101, 16, v102
	v_lshl_or_b32 v48, v64, 16, v63
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v79, v106, v95, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v96, v108, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[0:7], v[43:44], v[41:42], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v80, 16, v79
	v_wmma_i32_16x16x16_iu4 v[0:7], v[47:48], v[45:46], v[0:7] neg_lo:[1,1,0]
	.loc	1 257 17                        ; generate_amdgcn.py:257:17
	s_cbranch_vccnz .LBB0_8
; %bb.9:                                ;   in Loop: Header=BB0_7 Depth=2
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_add_lshl_u32 v41, s4, v32, 1
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 273 40                        ; generate_amdgcn.py:273:40
	s_mul_i32 s3, s4, s29
	.loc	1 273 22 is_stmt 0              ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s18
	.loc	1 272 22 is_stmt 1              ; generate_amdgcn.py:272:22
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_lshl_u32 v43, v33, s3, 1
	v_add_lshl_u32 v42, v31, s3, 1
	v_add_lshl_u32 v45, v35, s3, 1
	s_mov_b32 s27, s19
	v_add_lshl_u32 v44, v34, s3, 1
	v_add_lshl_u32 v46, v36, s3, 1
	v_add_lshl_u32 v47, v37, s3, 1
	v_add_lshl_u32 v48, v38, s3, 1
	v_add_lshl_u32 v49, v39, s3, 1
	s_clause 0x7
	buffer_load_u16 v43, v43, s[24:27], 0 offen
	buffer_load_u16 v42, v42, s[24:27], 0 offen
	buffer_load_u16 v45, v45, s[24:27], 0 offen
	buffer_load_u16 v44, v44, s[24:27], 0 offen
	buffer_load_u16 v47, v47, s[24:27], 0 offen
	buffer_load_u16 v46, v46, s[24:27], 0 offen
	buffer_load_u16 v49, v49, s[24:27], 0 offen
	buffer_load_u16 v48, v48, s[24:27], 0 offen
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
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	s_cmp_lg_u32 s4, s36
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v0, v41, v0 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v28, v0, v42 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v2, v41, v2
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v3, v41, v3 :: v_dual_lshlrev_b32 v44, 16, v44
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v4, v41, v4 :: v_dual_lshlrev_b32 v47, 16, v47
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v5, v41, v5 :: v_dual_lshlrev_b32 v46, 16, v46
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v6, v41, v6 :: v_dual_lshlrev_b32 v49, 16, v49
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v41, v7 :: v_dual_lshlrev_b32 v48, 16, v48
	v_dual_mul_f32 v1, v41, v1 :: v_dual_fmac_f32 v26, v2, v44
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v27, v3, v45 :: v_dual_fmac_f32 v24, v4, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v25, v5, v47 :: v_dual_fmac_f32 v22, v7, v49
	v_fmac_f32_e32 v29, v1, v43
	v_fmac_f32_e32 v23, v6, v48
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_7
; %bb.10:                               ; %Flow
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_mov_b32_e32 v0, v30
	s_branch .LBB0_2
.LBB0_11:                               ; %._crit_edge13
	.loc	1 196 1 is_stmt 1               ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 113
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_vgpr, 113
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4156
; TotalNumSgprs: 43
; NumVgprs: 113
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 113
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     113
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
