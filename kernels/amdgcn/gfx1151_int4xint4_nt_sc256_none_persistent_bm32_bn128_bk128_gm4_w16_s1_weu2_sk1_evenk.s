	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
	s_ashr_i32 s6, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s34, s6, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s34
	s_cbranch_scc1 .LBB0_9
; %bb.1:                                ; %.lr.ph10
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s4, s[0:1], 0x38
	s_load_b64 s[16:17], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v14, 4, v0
	v_and_b32_e32 v1, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v16, 0xe0, v0
	v_lshlrev_b32_e32 v4, 2, v0
	v_lshrrev_b32_e32 v15, 3, v0
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v17, v14, 16, v1
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v8, 2, v1
	v_lshrrev_b32_e32 v5, 2, v16
	v_lshlrev_b32_e32 v1, 6, v1
	v_lshlrev_b32_e32 v3, 3, v0
	.loc	1 258 43                        ; generate_amdgcn.py:258:43
	s_lshl_b32 s37, s3, 6
	v_lshlrev_b32_e32 v20, 5, v16
	v_xor_b32_e32 v5, v4, v5
	v_and_or_b32 v6, 0x438, v4, v1
	v_and_b32_e32 v4, 56, v4
	v_and_b32_e32 v0, 16, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s4, 0xff
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s3, s4, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s4, s4, s3
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 24
.Ltmp16:
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s36, s6, 2
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
.Ltmp18:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s38, s4, 1
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s39, s1, 8
	s_cmpk_lt_i32 s0, 0x100
	v_or3_b32 v1, v20, v4, v1
	v_mov_b32_e32 v4, 0x5410
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x7632
	s_cselect_b32 s7, -1, 0
	s_and_b32 s25, s11, 0xffff
	s_abs_i32 s11, s36
	v_cndmask_b32_e64 v4, 0x1054, v4, s0
	s_cvt_f32_u32 s1, s11
	v_cndmask_b32_e64 v0, 0x3276, v0, s0
.Ltmp20:
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_and_b32_e32 v9, 56, v3
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v19, 0x78, v2
	v_lshl_or_b32 v4, v4, 8, v4
	v_rcp_iflag_f32_e32 v21, s1
	v_lshl_or_b32 v0, v0, 8, v0
	v_and_b32_e32 v2, 56, v2
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_or_b32_e32 v23, s37, v9
	v_and_b32_e32 v4, 0x540054, v4
	s_mov_b32 s20, s8
	v_and_b32_e32 v0, 0x760076, v0
	s_and_b32 s21, s9, 0xffff
	s_sub_i32 s9, 0, s11
	v_lshl_or_b32 v4, v4, 4, v4
	v_readfirstlane_b32 s1, v21
	v_lshl_or_b32 v0, v0, 4, v0
	v_xor_b32_e32 v7, 8, v6
	v_xor_b32_e32 v10, 16, v6
	v_and_b32_e32 v20, 0x5040504, v4
	v_or_b32_e32 v4, s37, v8
	s_mul_f32 s4, s1, 0x4f7ffffe
	v_and_b32_e32 v21, 0x7060706, v0
	v_xor_b32_e32 v11, 24, v6
	v_xor_b32_e32 v12, 32, v6
	v_add_nc_u32_e32 v0, 64, v4
	s_cvt_u32_f32 s8, s4
	v_xor_b32_e32 v13, 40, v6
	v_xor_b32_e32 v31, 48, v6
	v_xor_b32_e32 v32, 56, v6
	v_xor_b32_e32 v2, v3, v2
	v_xor_b32_e32 v3, 8, v1
	v_xor_b32_e32 v36, 16, v1
	v_xor_b32_e32 v37, 24, v1
	v_xor_b32_e32 v38, 32, v1
	v_xor_b32_e32 v39, 40, v1
	v_xor_b32_e32 v40, 48, v1
	v_xor_b32_e32 v41, 56, v1
	v_add_nc_u32_e32 v24, 64, v23
	v_cmp_gt_i32_e64 s4, 0x80, v0
	v_cndmask_b32_e64 v0, 0, 1, s7
	s_mul_i32 s9, s9, s8
	s_bfe_i32 s40, s6, 0x1001d
	s_mul_hi_u32 s6, s8, s9
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v18, 64, v15
	v_sub_nc_u32_e32 v22, s38, v8
	v_cmp_gt_i32_e64 s1, 0x80, v4
	v_cmp_gt_i32_e64 s3, 0x80, v23
	v_cmp_gt_i32_e64 s5, 0x80, v24
	s_add_i32 s41, s8, s6
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_and_b32_e32 v23, 2, v15
	v_cmp_ne_u32_e64 s6, 1, v0
	v_add_nc_u32_e32 v24, 0, v5
	v_add_nc_u32_e32 v25, 0, v6
	v_add_nc_u32_e32 v26, 0, v7
	v_add_nc_u32_e32 v27, 0, v10
	v_add_nc_u32_e32 v28, 0, v11
	v_add_nc_u32_e32 v29, 0, v12
	v_add_nc_u32_e32 v30, 0, v13
	v_add_nc_u32_e32 v31, 0, v31
	v_add_nc_u32_e32 v32, 0, v32
	v_add_nc_u32_e32 v33, 0, v2
	v_add_nc_u32_e32 v34, 0, v1
	v_add_nc_u32_e32 v35, 0, v3
	v_add_nc_u32_e32 v36, 0, v36
	v_add_nc_u32_e32 v37, 0, v37
	v_add_nc_u32_e32 v38, 0, v38
	v_add_nc_u32_e32 v39, 0, v39
	v_add_nc_u32_e32 v40, 0, v40
	v_dual_mov_b32 v0, 0 :: v_dual_add_nc_u32 v41, 0, v41
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s24, s10
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_and_b32 s17, s17, 0xffff
	s_lshl_b32 s42, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s43, s39, 1
	s_mov_b32 s44, 0x76543210
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v2.h, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v2.l, v48.h
	v_mov_b16_e32 v3.l, v47.h
	v_cmp_o_f32_e64 s7, v47, v47
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_mov_b16_e32 v3.h, v2.h
	v_and_b32_e32 v6, 1, v2
	v_mov_b16_e32 v2.l, v46.h
	v_mov_b16_e32 v4.l, v45.h
	v_mov_b16_e32 v5.l, v43.h
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v6, v48, v6, 0x7fff
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v2.l, v44.h
	v_mov_b16_e32 v4.h, v2.h
	v_add3_u32 v3, v47, v3, 0x7fff
	v_mov_b16_e32 v5.h, v2.h
	v_mov_b16_e32 v10.l, v42.h
	v_mov_b16_e32 v10.h, v2.h
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v6.l, 0x7fff, v3.h, s7
	v_add3_u32 v3, v46, v7, 0x7fff
	v_and_b32_e32 v7, 1, v2
	v_mov_b16_e32 v2.l, v13.h
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_and_b32_e32 v5, 1, v5
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v4, v45, v4, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_add3_u32 v5, v43, v5, 0x7fff
	v_add3_u32 v7, v44, v7, 0x7fff
	v_cmp_o_f32_e64 s7, v44, v44
	v_cmp_o_f32_e64 s8, v43, v43
	v_add3_u32 v10, v42, v10, 0x7fff
	v_add3_u32 v2, v13, v2, 0x7fff
	v_cmp_o_f32_e64 s9, v13, v13
	v_cmp_o_f32_e64 s10, v42, v42
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s7
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s8
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s9
	v_cndmask_b16 v2.l, 0x7fff, v10.h, s10
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	v_mul_lo_u32 v10, v1, s35
	v_lshl_or_b32 v11, s45, 7, v19
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cndmask_b32_e64 v5, v6, v4, s0
	v_cndmask_b32_e64 v4, v4, v6, s0
	v_cndmask_b32_e64 v7, v3, v2, s0
	v_cndmask_b32_e64 v6, v2, v3, s0
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_permlanex16_b32 v5, v5, s44, 0xfedcba98 op_sel:[1,0]
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s34
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_permlanex16_b32 v7, v7, s44, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v1, v5, v4, v20
	v_perm_b32 v2, v5, v4, v21
	v_perm_b32 v3, v7, v6, v20
	v_perm_b32 v4, v7, v6, v21
	v_add_lshl_u32 v5, v11, v10, 1
	buffer_store_b128 v[1:4], v5, s[16:19], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_9
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s7, s2
	s_ashr_i32 s9, s2, 31
	s_mul_hi_u32 s8, s7, s41
	s_xor_b32 s9, s9, s40
	s_mul_i32 s10, s8, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s8, 1
	s_sub_i32 s14, s7, s11
	s_cmp_ge_u32 s7, s11
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s7, s14, s7
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s7, s11
	s_cselect_b32 s7, s10, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s9
	s_sub_i32 s7, s7, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s8, s7, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s7, s7, s36
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s9, s33, s8
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s26, s2, s7
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s10, s9, 4
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s14, s9
	s_sub_i32 s15, 0, s9
	v_rcp_iflag_f32_e32 v1, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s14, v1
                                        ; implicit-def: $vgpr1
	s_mul_f32 s14, s14, 0x4f7ffffe
	s_cvt_u32_f32 s14, s14
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s15, s15, s14
	s_mul_hi_u32 s7, s14, s15
	s_abs_i32 s15, s26
	s_add_i32 s14, s14, s7
	s_xor_b32 s7, s26, s10
	s_mul_hi_u32 s14, s15, s14
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s27, s14, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s15, s15, s27
	s_add_i32 s27, s14, 1
	s_sub_i32 s30, s15, s9
	s_cmp_ge_u32 s15, s9
	s_cselect_b32 s14, s27, s14
	s_cselect_b32 s15, s30, s15
	s_add_i32 s27, s14, 1
	s_cmp_ge_u32 s15, s9
	s_cselect_b32 s9, s27, s14
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s6
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s9, s9, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s45, s9, s7
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s10, s45, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s10, s26, s10
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s10, s10, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s8, s10, 5
	s_mov_b32 s10, -1
	v_or_b32_e32 v49, s8, v17
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.4:                                ; %.._crit_edge_crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	v_or_b32_e32 v1, s8, v17
	s_mov_b32 s10, 0
.LBB0_5:                                ; %Flow61
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_2
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	v_lshl_or_b32 v1, s9, 8, v16
	s_lshl_b32 s9, s9, 7
	s_lshl_b32 s10, s7, 8
	v_or_b32_e32 v2, s9, v18
	s_lshl_b32 s7, s7, 7
	v_subrev_nc_u32_e32 v50, s10, v1
	v_or_b32_e32 v4, s9, v15
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v3, s8, v17
	v_subrev_nc_u32_e32 v1, s7, v2
	v_mov_b32_e32 v44, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v2, s7, v4
	v_mul_lo_u32 v51, s43, v3
	v_add_nc_u32_e32 v3, s8, v14
	v_mad_u64_u32 v[10:11], null, s38, v1, v[9:10]
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v45, 0
	s_mov_b32 s8, s37
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[11:12], null, s38, v2, v[9:10]
	v_mad_u64_u32 v[12:13], null, s38, v3, v[8:9]
	v_mov_b32_e32 v13, 0
	s_mov_b32 s9, s39
.LBB0_7:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_lt_i32_e32 vcc_lo, s8, v22
	v_add_nc_u32_e32 v5, s8, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v6, s8, v12
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_add_nc_u32_e32 v52, s8, v10
	.loc	1 268 38 is_stmt 0              ; generate_amdgcn.py:268:38
	v_add_nc_u32_e32 v7, s8, v11
	.loc	1 259 30 is_stmt 1              ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_mov_b32 s26, s22
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v1, 0x80000000, v6, vcc_lo
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s38, v5
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_mov_b32 s27, s23
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	s_add_i32 s7, s8, 64
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s22
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b32 v53, v1, s[20:23], 0 offen
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s15, s23
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_cndmask_b32_e32 v1, 0x80000000, v7, vcc_lo
	v_cndmask_b32_e32 v3, 0x80000000, v52, vcc_lo
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_lt_i32_e32 vcc_lo, s7, v22
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s30, s22
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_clause 0x1
	buffer_load_b64 v[1:2], v1, s[24:27], 0 offen
	buffer_load_b64 v[3:4], v3, s[24:27], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s31, s23
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s9, s9, -1
	s_addk_i32 s8, 0x80
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(2)
	ds_store_b32 v24, v53
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[60:61], v25
	ds_load_b64 v[62:63], v26
	ds_load_b64 v[64:65], v27
	ds_load_b64 v[66:67], v28
	ds_load_b64 v[68:69], v29
	ds_load_b64 v[70:71], v30
	ds_load_b64 v[72:73], v31
	ds_load_b64 v[74:75], v32
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v33, v[1:2], v[3:4] offset1:8
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v2, v0 :: v_dual_add_nc_u32 v5, 64, v5
	v_dual_mov_b32 v1, v0 :: v_dual_add_nc_u32 v6, 64, v6
	v_dual_mov_b32 v4, v0 :: v_dual_add_nc_u32 v7, 64, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s7, s38, v5
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v3, v0 :: v_dual_add_nc_u32 v52, 64, v52
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s7, s5
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_barrier
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v7, 0x80000000, v52
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b32 v90, v5, s[20:23], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_clause 0x1
	buffer_load_b64 v[76:77], v6, s[24:27], 0 offen
	buffer_load_b64 v[78:79], v7, s[24:27], 0 offen
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v5, v0
	v_dual_mov_b32 v6, v0 :: v_dual_add_nc_u32 v91, v23, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v59, v7 :: v_dual_add_nc_u32 v50, s42, v50
	v_mov_b32_e32 v56, v4
	v_dual_mov_b32 v58, v6 :: v_dual_mov_b32 v57, v5
	v_dual_mov_b32 v54, v2 :: v_dual_mov_b32 v55, v3
	v_dual_mov_b32 v52, v0 :: v_dual_mov_b32 v53, v1
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[1:2], v34
	ds_load_b64 v[3:4], v35
	ds_load_b64 v[5:6], v36
	ds_load_b64 v[80:81], v37
	ds_load_b64 v[82:83], v38
	ds_load_b64 v[84:85], v39
	ds_load_b64 v[86:87], v40
	ds_load_b64 v[88:89], v41
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cmp_lg_u32 s9, 0
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[60:61], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[3:4], v[62:63], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[52:59], v[5:6], v[64:65], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[80:81], v[66:67], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[52:59], v[82:83], v[68:69], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[84:85], v[70:71], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[52:59], v[86:87], v[72:73], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[88:89], v[74:75], v[52:59] neg_lo:[1,1,0]
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(2)
	ds_store_b32 v24, v90
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[1:2], v25
	ds_load_b64 v[3:4], v26
	ds_load_b64 v[5:6], v27
	ds_load_b64 v[60:61], v28
	ds_load_b64 v[62:63], v29
	ds_load_b64 v[64:65], v30
	ds_load_b64 v[66:67], v31
	ds_load_b64 v[68:69], v32
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v33, v[76:77], v[78:79] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v7, v51, s[12:15], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v82, v91, s[28:31], 0 offen offset:4
	buffer_load_u16 v83, v91, s[28:31], 0 offen
	buffer_load_u16 v90, v91, s[28:31], 0 offen offset:12
	buffer_load_u16 v92, v91, s[28:31], 0 offen offset:8
	buffer_load_u16 v93, v91, s[28:31], 0 offen offset:20
	buffer_load_u16 v94, v91, s[28:31], 0 offen offset:16
	buffer_load_u16 v95, v91, s[28:31], 0 offen offset:28
	buffer_load_u16 v91, v91, s[28:31], 0 offen offset:24
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[70:71], v34
	ds_load_b64 v[72:73], v35
	ds_load_b64 v[74:75], v36
	ds_load_b64 v[76:77], v37
	ds_load_b64 v[78:79], v38
	ds_load_b64 v[80:81], v39
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[70:71], v[1:2], v[52:59] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[1:2], v40
	ds_load_b64 v[70:71], v41
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[72:73], v[3:4], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[74:75], v[5:6], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[76:77], v[60:61], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[78:79], v[62:63], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[80:81], v[64:65], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[66:67], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[70:71], v[68:69], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v4, v55
	v_cvt_f32_i32_e32 v5, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v57
	v_cvt_f32_i32_e32 v1, v52
	v_cvt_f32_i32_e32 v2, v53
	v_cvt_f32_i32_e32 v3, v54
	v_cvt_f32_i32_e32 v52, v58
	v_cvt_f32_i32_e32 v53, v59
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v54, 16, v82
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v56, 16, v90
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v55, 16, v83
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v58, 16, v93
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v60, 16, v95
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v4, v7, v4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v46, v4, v56
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v6, v7, v6 :: v_dual_lshlrev_b32 v57, 16, v92
	v_dual_mul_f32 v2, v7, v2 :: v_dual_add_nc_u32 v51, 2, v51
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v61, 16, v91
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v1, v7, v1
	v_mul_f32_e32 v3, v7, v3
	v_mul_f32_e32 v5, v7, v5
	v_mul_f32_e32 v53, v7, v53
	v_dual_mul_f32 v7, v7, v52 :: v_dual_fmac_f32 v44, v6, v58
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v59, 16, v94
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v47, v1, v55 :: v_dual_fmac_f32 v48, v2, v54
	v_fmac_f32_e32 v45, v3, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v42, v7, v61 :: v_dual_fmac_f32 v43, v5, v59
	v_fmac_f32_e32 v13, v53, v60
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_7
; %bb.8:                                ; %Flow
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_mov_b32_e32 v1, v49
	s_branch .LBB0_2
.LBB0_9:                                ; %._crit_edge11
	.loc	1 196 1 is_stmt 1               ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp21:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 96
		.amdhsa_next_free_sgpr 46
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
		.amdhsa_inst_pref_size 22
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_vgpr, 96
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2764
; TotalNumSgprs: 48
; NumVgprs: 96
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 96
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     96
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
