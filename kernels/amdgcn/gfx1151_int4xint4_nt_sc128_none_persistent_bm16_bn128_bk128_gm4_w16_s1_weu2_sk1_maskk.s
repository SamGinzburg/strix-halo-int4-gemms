	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
	s_add_i32 s4, s34, 15
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
	s_lshr_b32 s6, s6, 28
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
	s_ashr_i32 s33, s4, 4
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
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x20
	v_lshlrev_b32_e32 v1, 2, v0
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_and_b32_e32 v2, 16, v0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s44, s4, 2
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v16, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v17, 3, v0
	v_and_b32_e32 v5, 56, v1
	v_lshrrev_b32_e32 v1, 1, v2
	v_lshrrev_b32_e32 v7, 1, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v15, 5, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v3, 1, v0
	v_lshlrev_b32_e32 v4, 3, v0
	v_mad_u64_u32 v[8:9], null, s35, v16, v[1:2]
	v_mov_b32_e32 v9, 0x7632
	v_dual_mov_b32 v1, 0x5410 :: v_dual_and_b32 v6, 56, v17
	v_lshl_or_b32 v5, v16, 6, v5
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s5, 0x7f
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
	s_lshr_b32 s6, s6, 25
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s45, s5, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s6
	s_mov_b32 s36, s10
	s_ashr_i32 s46, s1, 7
	s_cmpk_gt_i32 s0, 0x7f
	v_cmp_eq_u32_e64 s0, 0, v2
	s_cselect_b32 s5, -1, 0
	s_abs_i32 s10, s44
	v_and_b32_e32 v7, 56, v7
	s_cvt_f32_u32 s1, s10
	v_cndmask_b32_e64 v9, 0x3276, v9, s0
	v_cndmask_b32_e64 v1, 0x1054, v1, s0
	v_and_b32_e32 v0, 0x1e0, v0
	v_rcp_iflag_f32_e32 v10, s1
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 6
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v1, v1, 8, v1
	v_xor_b32_e32 v6, v3, v6
	v_xor_b32_e32 v11, 8, v5
	v_xor_b32_e32 v12, 16, v5
	v_and_b32_e32 v9, 0x760076, v9
	v_and_b32_e32 v1, 0x540054, v1
	v_xor_b32_e32 v13, 24, v5
	v_readfirstlane_b32 s1, v10
	v_xor_b32_e32 v14, 32, v5
	v_lshl_or_b32 v9, v9, 4, v9
	v_xor_b32_e32 v35, 40, v5
	v_xor_b32_e32 v36, 48, v5
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_xor_b32_e32 v37, 56, v5
	v_xor_b32_e32 v7, v4, v7
	v_lshl_or_b32 v1, v1, 4, v1
	s_cvt_u32_f32 s6, s1
	s_sub_i32 s1, 0, s10
	v_and_b32_e32 v27, 0x7060706, v9
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_and_or_b32 v9, v3, 62, s3
	s_mul_i32 s7, s1, s6
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cndmask_b32_e64 v0, 0, 1, s5
	v_and_or_b32 v10, v4, 56, s3
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v18, 64, v17
	s_and_b32 s37, s11, 0xffff
	v_add_nc_u32_e32 v19, 16, v8
	v_add_nc_u32_e32 v20, 32, v8
	v_add_nc_u32_e32 v21, 48, v8
	v_add_nc_u32_e32 v22, 64, v8
	v_add_nc_u32_e32 v23, 0x50, v8
	v_add_nc_u32_e32 v24, 0x60, v8
	v_add_nc_u32_e32 v25, 0x70, v8
	v_and_b32_e32 v26, 0x5040504, v1
	s_bfe_i32 s11, s4, 0x1001d
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_lshrrev_b32_e32 v28, 3, v2
	v_cmp_ne_u32_e64 s3, 1, v0
	v_add_nc_u32_e32 v29, 0, v6
	v_add_nc_u32_e32 v30, 0, v5
	v_add_nc_u32_e32 v31, 0, v11
	v_add_nc_u32_e32 v32, 0, v12
	v_add_nc_u32_e32 v33, 0, v13
	v_add_nc_u32_e32 v34, 0, v14
	v_add_nc_u32_e32 v35, 0, v35
	v_add_nc_u32_e32 v36, 0, v36
	v_add_nc_u32_e32 v37, 0, v37
	v_add_nc_u32_e32 v38, 0, v7
	v_cmp_gt_i32_e64 s4, 64, v9
	v_cmp_gt_i32_e64 s5, 64, v10
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mul_hi_u32 s7, s6, s7
	s_mov_b32 s28, s8
	s_and_b32 s29, s9, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_mov_b32 s16, 0
	s_and_b32 s25, s25, 0xffff
	s_add_i32 s47, s6, s7
	s_lshl_b32 s48, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s49, s46, 1
	s_mov_b32 s50, 0x76543210
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v0.h, 0
	v_mov_b16_e32 v0.l, v101.h
	v_mov_b16_e32 v1.l, v100.h
	v_mov_b16_e32 v3.l, v98.h
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	v_mov_b16_e32 v1.h, v0.h
	v_and_b32_e32 v2, 1, v0
	v_mov_b16_e32 v0.l, v99.h
	v_mov_b16_e32 v3.h, v0.h
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s6, s7, 7
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v2, v101, v2, 0x7fff
	v_and_b32_e32 v4, 1, v0
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v0.l, v97.h
	v_add3_u32 v5, v100, v1, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_add3_u32 v3, v98, v3, 0x7fff
	v_add3_u32 v2, v99, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v98, v98
	v_mov_b16_e32 v4.l, v96.h
	v_mov_b16_e32 v4.h, v0.h
	v_and_b32_e32 v6, 1, v0
	v_cndmask_b16 v1.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s7
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_and_b32_e32 v3, 1, v4
	v_add3_u32 v4, v97, v6, 0x7fff
	v_mov_b16_e32 v0.l, v95.h
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	s_mul_i32 s14, s8, s35
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v5.l, v94.h
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s14, s14, s6
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s6, v99, v99
	v_mov_b16_e32 v5.h, v0.h
	v_add3_u32 v6, v96, v3, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_and_b32_e32 v4, 1, v0
	v_mov_b16_e32 v7.l, v92.h
	v_mov_b16_e32 v7.h, v0.h
	v_mov_b16_e32 v0.l, v93.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v4, v95, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v95, v95
	v_cndmask_b16 v3.l, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e32 v0.l, v91.h
	v_add3_u32 v5, v94, v5, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s6
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	v_add3_u32 v6, v92, v6, 0x7fff
	v_add3_u32 v7, v93, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v93, v93
	v_cmp_o_f32_e64 s7, v92, v92
	v_mov_b16_e32 v11.l, v90.h
	v_mov_b16_e32 v11.h, v0.h
	v_and_b32_e32 v12, 1, v0
	v_cndmask_b16 v4.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s7
	v_and_b32_e32 v6, 1, v11
	v_add3_u32 v7, v91, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_mov_b16_e32 v0.l, v89.h
	v_mov_b16_e32 v11.l, v88.h
	v_add3_u32 v12, v90, v6, 0x7fff
	v_mov_b16_e32 v13.l, v86.h
	v_cndmask_b16 v6.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e32 v13.h, v0.h
	v_mov_b16_e32 v0.l, v87.h
	v_and_b32_e32 v11, 1, v11
	v_cmp_o_f32_e64 s6, v89, v89
	v_add3_u32 v7, v89, v7, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v13
	v_and_b32_e32 v13, 1, v0
	v_mov_b16_e32 v0.l, v85.h
	v_add3_u32 v11, v88, v11, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s6
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	v_add3_u32 v12, v86, v12, 0x7fff
	v_add3_u32 v13, v87, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v87, v87
	v_cmp_o_f32_e64 s7, v86, v86
	v_mov_b16_e32 v86.l, v84.h
	v_mov_b16_e32 v86.h, v0.h
	v_and_b32_e32 v87, 1, v0
	v_cndmask_b16 v7.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s6
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s7
	v_and_b32_e32 v12, 1, v86
	v_add3_u32 v13, v85, v87, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_mov_b16_e32 v0.l, v83.h
	v_mov_b16_e32 v85.l, v82.h
	v_mov_b16_e32 v85.h, v0.h
	v_add3_u32 v12, v84, v12, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_and_b32_e32 v84, 1, v0
	v_mov_b16_e32 v86.l, v80.h
	v_mov_b16_e32 v0.l, v81.h
	v_and_b32_e32 v85, 1, v85
	v_cmp_o_f32_e64 s6, v83, v83
	v_add3_u32 v84, v83, v84, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v86
	v_and_b32_e32 v83, 1, v0
	v_mov_b16_e32 v0.l, v79.h
	v_add3_u32 v85, v82, v85, 0x7fff
	v_cndmask_b16 v84.h, 0x7fff, v84.h, s6
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_add3_u32 v12, v80, v12, 0x7fff
	v_add3_u32 v82, v81, v83, 0x7fff
	v_cmp_o_f32_e64 s6, v81, v81
	v_cmp_o_f32_e64 s7, v80, v80
	v_mov_b16_e32 v80.l, v78.h
	v_mov_b16_e32 v80.h, v0.h
	v_and_b32_e32 v81, 1, v0
	v_cndmask_b16 v84.l, 0x7fff, v85.h, vcc_lo
	v_cndmask_b16 v82.l, 0x7fff, v12.h, s7
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_and_b32_e32 v12, 1, v80
	v_add3_u32 v80, v79, v81, 0x7fff
	v_mov_b16_e32 v0.l, v77.h
	v_mov_b16_e32 v79.l, v76.h
	v_mov_b16_e32 v79.h, v0.h
	v_add3_u32 v12, v78, v12, 0x7fff
	v_cndmask_b16 v80.h, 0x7fff, v80.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_and_b32_e32 v78, 1, v0
	v_mov_b16_e32 v81.l, v75.h
	v_mov_b16_e32 v81.h, v0.h
	v_mov_b16_e32 v0.l, v74.h
	v_cndmask_b16 v82.h, 0x7fff, v82.h, s6
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v78, v77, v78, 0x7fff
	v_cmp_o_f32_e64 s6, v77, v77
	v_cndmask_b16 v80.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v81
	v_and_b32_e32 v77, 1, v0
	v_mov_b16_e32 v0.l, v73.h
	v_add3_u32 v79, v76, v79, 0x7fff
	v_cndmask_b16 v78.h, 0x7fff, v78.h, s6
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_add3_u32 v12, v75, v12, 0x7fff
	v_add3_u32 v76, v74, v77, 0x7fff
	v_cmp_o_f32_e64 s6, v74, v74
	v_cmp_o_f32_e64 s7, v75, v75
	v_mov_b16_e32 v74.l, v72.h
	v_mov_b16_e32 v74.h, v0.h
	v_and_b32_e32 v75, 1, v0
	v_cndmask_b16 v78.l, 0x7fff, v79.h, vcc_lo
	v_cndmask_b16 v76.l, 0x7fff, v12.h, s7
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_and_b32_e32 v12, 1, v74
	v_add3_u32 v74, v73, v75, 0x7fff
	v_mov_b16_e32 v0.l, v71.h
	v_mov_b16_e32 v73.l, v70.h
	v_mov_b16_e32 v73.h, v0.h
	v_add3_u32 v12, v72, v12, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v74.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_and_b32_e32 v72, 1, v0
	v_mov_b16_e32 v75.l, v69.h
	v_mov_b16_e32 v75.h, v0.h
	v_mov_b16_e32 v0.l, v68.h
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s6
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v72, v71, v72, 0x7fff
	v_cmp_o_f32_e64 s6, v71, v71
	v_cndmask_b16 v74.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v75
	v_and_b32_e32 v71, 1, v0
	v_mov_b16_e32 v0.l, v67.h
	v_add3_u32 v73, v70, v73, 0x7fff
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s6
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_add3_u32 v12, v69, v12, 0x7fff
	v_add3_u32 v70, v68, v71, 0x7fff
	v_cmp_o_f32_e64 s6, v68, v68
	v_cmp_o_f32_e64 s7, v69, v69
	v_mov_b16_e32 v68.l, v66.h
	v_mov_b16_e32 v68.h, v0.h
	v_and_b32_e32 v69, 1, v0
	v_cndmask_b16 v72.l, 0x7fff, v73.h, vcc_lo
	v_cndmask_b16 v70.l, 0x7fff, v12.h, s7
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_and_b32_e32 v12, 1, v68
	v_add3_u32 v68, v67, v69, 0x7fff
	v_mov_b16_e32 v0.l, v65.h
	v_mov_b16_e32 v67.l, v64.h
	v_mov_b16_e32 v67.h, v0.h
	v_add3_u32 v12, v66, v12, 0x7fff
	v_cndmask_b16 v68.h, 0x7fff, v68.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_and_b32_e32 v66, 1, v0
	v_mov_b16_e32 v69.l, v62.h
	v_mov_b16_e32 v69.h, v0.h
	v_mov_b16_e32 v0.l, v63.h
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s6
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v66, v65, v66, 0x7fff
	v_cmp_o_f32_e64 s6, v65, v65
	v_cndmask_b16 v68.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v69
	v_and_b32_e32 v65, 1, v0
	v_mov_b16_e32 v0.l, v61.h
	v_add3_u32 v67, v64, v67, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s6
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	v_add3_u32 v12, v62, v12, 0x7fff
	v_add3_u32 v64, v63, v65, 0x7fff
	v_cmp_o_f32_e64 s6, v63, v63
	v_cmp_o_f32_e64 s7, v62, v62
	v_mov_b16_e32 v62.l, v60.h
	v_mov_b16_e32 v62.h, v0.h
	v_and_b32_e32 v63, 1, v0
	v_cndmask_b16 v66.l, 0x7fff, v67.h, vcc_lo
	v_cndmask_b16 v64.l, 0x7fff, v12.h, s7
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_and_b32_e32 v12, 1, v62
	v_add3_u32 v62, v61, v63, 0x7fff
	v_mov_b16_e32 v0.l, v59.h
	v_mov_b16_e32 v61.l, v58.h
	v_mov_b16_e32 v61.h, v0.h
	v_add3_u32 v12, v60, v12, 0x7fff
	v_cndmask_b16 v62.h, 0x7fff, v62.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_and_b32_e32 v60, 1, v0
	v_mov_b16_e32 v63.l, v56.h
	v_mov_b16_e32 v63.h, v0.h
	v_mov_b16_e32 v0.l, v57.h
	v_cndmask_b16 v64.h, 0x7fff, v64.h, s6
	v_and_b32_e32 v61, 1, v61
	v_add3_u32 v60, v59, v60, 0x7fff
	v_cmp_o_f32_e64 s6, v59, v59
	v_cndmask_b16 v62.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v63
	v_and_b32_e32 v59, 1, v0
	v_mov_b16_e32 v0.l, v55.h
	v_add3_u32 v61, v58, v61, 0x7fff
	v_cndmask_b16 v60.h, 0x7fff, v60.h, s6
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_add3_u32 v12, v56, v12, 0x7fff
	v_add3_u32 v58, v57, v59, 0x7fff
	v_cmp_o_f32_e64 s6, v57, v57
	v_cmp_o_f32_e64 s7, v56, v56
	v_mov_b16_e32 v56.l, v54.h
	v_mov_b16_e32 v56.h, v0.h
	v_and_b32_e32 v57, 1, v0
	v_cndmask_b16 v60.l, 0x7fff, v61.h, vcc_lo
	v_cndmask_b16 v58.l, 0x7fff, v12.h, s7
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_and_b32_e32 v12, 1, v56
	v_add3_u32 v56, v55, v57, 0x7fff
	v_mov_b16_e32 v0.l, v53.h
	v_mov_b16_e32 v55.l, v52.h
	v_mov_b16_e32 v55.h, v0.h
	v_add3_u32 v12, v54, v12, 0x7fff
	v_cndmask_b16 v56.h, 0x7fff, v56.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_and_b32_e32 v54, 1, v0
	v_mov_b16_e32 v57.l, v50.h
	v_mov_b16_e32 v57.h, v0.h
	v_mov_b16_e32 v0.l, v51.h
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s6
	v_and_b32_e32 v55, 1, v55
	v_add3_u32 v54, v53, v54, 0x7fff
	v_cmp_o_f32_e64 s6, v53, v53
	v_cndmask_b16 v56.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v57
	v_and_b32_e32 v53, 1, v0
	v_mov_b16_e32 v0.l, v49.h
	v_add3_u32 v55, v52, v55, 0x7fff
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s6
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_add3_u32 v12, v50, v12, 0x7fff
	v_add3_u32 v52, v51, v53, 0x7fff
	v_cmp_o_f32_e64 s6, v51, v51
	v_cmp_o_f32_e64 s7, v50, v50
	v_mov_b16_e32 v50.l, v48.h
	v_mov_b16_e32 v50.h, v0.h
	v_and_b32_e32 v51, 1, v0
	v_cndmask_b16 v54.l, 0x7fff, v55.h, vcc_lo
	v_cndmask_b16 v52.l, 0x7fff, v12.h, s7
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_and_b32_e32 v12, 1, v50
	v_add3_u32 v50, v49, v51, 0x7fff
	v_mov_b16_e32 v0.l, v47.h
	v_mov_b16_e32 v49.l, v46.h
	v_mov_b16_e32 v49.h, v0.h
	v_add3_u32 v12, v48, v12, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_and_b32_e32 v48, 1, v0
	v_mov_b16_e32 v51.l, v44.h
	v_mov_b16_e32 v51.h, v0.h
	v_mov_b16_e32 v0.l, v45.h
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s6
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v48, v47, v48, 0x7fff
	v_cmp_o_f32_e64 s6, v47, v47
	v_cndmask_b16 v50.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v51
	v_and_b32_e32 v47, 1, v0
	v_add3_u32 v49, v46, v49, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s6
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_add3_u32 v12, v44, v12, 0x7fff
	v_add3_u32 v46, v45, v47, 0x7fff
	v_cmp_o_f32_e64 s6, v45, v45
	v_cmp_o_f32_e64 s7, v44, v44
	v_mov_b16_e32 v44.l, v42.h
	v_mov_b16_e32 v44.h, v0.h
	v_mov_b16_e32 v0.l, v43.h
	v_cndmask_b16 v45.h, 0x7fff, v46.h, s6
	v_cndmask_b16 v45.l, 0x7fff, v12.h, s7
	v_mov_b16_e32 v46.l, v41.h
	v_and_b32_e32 v12, 1, v44
	v_and_b32_e32 v44, 1, v0
	v_mov_b16_e32 v0.l, v40.h
	v_mov_b16_e32 v46.h, v0.h
	v_cndmask_b16 v48.l, 0x7fff, v49.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_add3_u32 v44, v43, v44, 0x7fff
	v_and_b32_e32 v43, 1, v0
	v_and_b32_e32 v46, 1, v46
	v_mov_b16_e32 v47.l, v39.h
	v_mov_b16_e32 v47.h, v0.h
	v_mov_b16_e32 v0.l, v14.h
	v_add3_u32 v12, v42, v12, 0x7fff
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_add3_u32 v42, v41, v46, 0x7fff
	v_and_b32_e32 v46, 1, v47
	v_and_b32_e32 v0, 1, v0
	v_add3_u32 v43, v40, v43, 0x7fff
	v_cmp_o_f32_e64 s6, v40, v40
	v_cmp_o_f32_e64 s7, v41, v41
	v_add3_u32 v40, v39, v46, 0x7fff
	v_add3_u32 v0, v14, v0, 0x7fff
	v_cmp_o_f32_e64 s8, v14, v14
	v_cmp_o_f32_e64 s9, v39, v39
	v_cndmask_b16 v44.l, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v12.h, 0x7fff, v43.h, s6
	v_cndmask_b16 v12.l, 0x7fff, v42.h, s7
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s8
	v_cndmask_b16 v0.l, 0x7fff, v40.h, s9
	v_cndmask_b32_e64 v14, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v3, v4, v2, s0
	v_cndmask_b32_e64 v2, v2, v4, s0
	v_cndmask_b32_e64 v39, v7, v5, s0
	v_cndmask_b32_e64 v4, v5, v7, s0
	v_cndmask_b32_e64 v7, v11, v6, s0
	v_cndmask_b32_e64 v5, v6, v11, s0
	v_cndmask_b32_e64 v40, v82, v13, s0
	v_cndmask_b32_e64 v6, v13, v82, s0
	v_cndmask_b32_e64 v11, v84, v80, s0
	v_cndmask_b32_e64 v13, v78, v74, s0
	v_cndmask_b32_e64 v46, v76, v72, s0
	v_cndmask_b32_e64 v49, v70, v66, s0
	v_cndmask_b32_e64 v55, v58, v62, s0
	v_cndmask_b32_e64 v57, v62, v58, s0
	v_cndmask_b32_e64 v58, v56, v60, s0
	v_cndmask_b32_e64 v56, v60, v56, s0
	v_cndmask_b32_e64 v41, v80, v84, s0
	v_cndmask_b32_e64 v42, v74, v78, s0
	v_cndmask_b32_e64 v43, v72, v76, s0
	v_cndmask_b32_e64 v47, v66, v70, s0
	v_cndmask_b32_e64 v51, v64, v68, s0
	v_cndmask_b32_e64 v53, v68, v64, s0
	v_cndmask_b32_e64 v59, v50, v54, s0
	v_cndmask_b32_e64 v50, v54, v50, s0
	v_cndmask_b32_e64 v60, v12, v45, s0
	v_cndmask_b32_e64 v12, v45, v12, s0
	v_cndmask_b32_e64 v61, v0, v44, s0
	v_cndmask_b32_e64 v0, v44, v0, s0
	v_permlanex16_b32 v1, v1, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v2, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v4, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v62, v6, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v63, v11, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v64, v13, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v49, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v56, v56, s50, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v54, v48, v52, s0
	v_cndmask_b32_e64 v48, v52, v48, s0
	v_permlanex16_b32 v52, v5, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v65, v50, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v67, v12, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v68, v0, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v14, v26
	v_perm_b32 v1, v1, v14, v27
	v_perm_b32 v2, v44, v3, v26
	v_perm_b32 v3, v44, v3, v27
	v_perm_b32 v4, v45, v39, v26
	v_perm_b32 v5, v45, v39, v27
	v_perm_b32 v11, v62, v40, v26
	v_perm_b32 v12, v62, v40, v27
	v_perm_b32 v13, v63, v41, v26
	v_perm_b32 v14, v63, v41, v27
	v_perm_b32 v39, v64, v42, v26
	v_perm_b32 v40, v64, v42, v27
	v_perm_b32 v41, v46, v43, v26
	v_perm_b32 v42, v46, v43, v27
	v_perm_b32 v43, v49, v47, v26
	v_perm_b32 v44, v49, v47, v27
	v_perm_b32 v49, v56, v58, v26
	v_perm_b32 v50, v56, v58, v27
	v_add_lshl_u32 v58, s14, v8, 1
	v_permlanex16_b32 v53, v53, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v57, v57, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v52, v7, v26
	v_perm_b32 v7, v52, v7, v27
	v_cndmask_b32_e64 v62, 0x80000000, v58, s1
	v_perm_b32 v45, v53, v51, v26
	v_perm_b32 v46, v53, v51, v27
	v_perm_b32 v51, v65, v59, v26
	v_perm_b32 v52, v65, v59, v27
	v_add_lshl_u32 v59, v19, s14, 1
	v_permlanex16_b32 v66, v48, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v47, v57, v55, v26
	v_perm_b32 v48, v57, v55, v27
	v_perm_b32 v55, v67, v60, v26
	v_perm_b32 v56, v67, v60, v27
	v_add_lshl_u32 v60, v20, s14, 1
	v_perm_b32 v57, v68, v61, v26
	v_perm_b32 v58, v68, v61, v27
	v_add_lshl_u32 v61, v21, s14, 1
	buffer_store_b128 v[0:3], v62, s[24:27], 0 offen
	v_add_lshl_u32 v0, v22, s14, 1
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	v_cndmask_b32_e64 v60, 0x80000000, v60, s1
	v_cndmask_b32_e64 v1, 0x80000000, v61, s1
	v_add_lshl_u32 v2, v23, s14, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_add_lshl_u32 v3, v24, s14, 1
	s_clause 0x1
	buffer_store_b128 v[4:7], v59, s[24:27], 0 offen
	buffer_store_b128 v[11:14], v60, s[24:27], 0 offen
	v_add_lshl_u32 v4, v25, s14, 1
	v_perm_b32 v53, v66, v54, v26
	v_perm_b32 v54, v66, v54, v27
	buffer_store_b128 v[39:42], v1, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s1
	buffer_store_b128 v[43:46], v0, s[24:27], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v3, s1
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	buffer_store_b128 v[47:50], v1, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s34
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[51:54], v0, s[24:27], 0 offen
	buffer_store_b128 v[55:58], v2, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s6, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s8, s6, s47
	s_xor_b32 s7, s7, s11
	s_mul_i32 s9, s8, s10
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v39, 0
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s8, 1
	s_sub_i32 s14, s6, s10
	s_cmp_ge_u32 s6, s10
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	s_cselect_b32 s8, s9, s8
	s_cselect_b32 s6, s14, s6
	s_add_i32 s9, s8, 1
	s_cmp_ge_u32 s6, s10
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	s_cselect_b32 s6, s9, s8
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	s_xor_b32 s6, s6, s7
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	s_sub_i32 s6, s6, s7
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s8, s6, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s6, s6, s44
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s7, s33, s8
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s17, s2, s6
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s14, s7, 4
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s14
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	s_cvt_f32_u32 s9, s7
	s_sub_i32 s15, 0, s7
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s9
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s9, v0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	s_mul_f32 s9, s9, 0x4f7ffffe
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s9, s9
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	s_mul_i32 s15, s15, s9
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	s_mul_hi_u32 s6, s9, s15
	s_abs_i32 s15, s17
	s_add_i32 s9, s9, s6
	s_xor_b32 s6, s17, s14
	s_mul_hi_u32 s9, s15, s9
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s18, s9, s7
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	s_sub_i32 s15, s15, s18
	s_add_i32 s18, s9, 1
	s_sub_i32 s19, s15, s7
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	s_cselect_b32 s9, s18, s9
	s_cselect_b32 s15, s19, s15
	s_add_i32 s18, s9, 1
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	s_cselect_b32 s7, s18, s9
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	s_xor_b32 s9, s7, s6
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	s_sub_i32 s7, s9, s6
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s14, s7, s14
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	s_sub_i32 s14, s17, s14
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s14, s14, s8
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s8, s14, 4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v3, s8, v15
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s14, s9, 8
	s_lshl_b32 s9, s9, 7
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v0, s8, v16
	v_or_b32_e32 v1, s9, v18
	v_or_b32_e32 v2, s9, v17
	v_mad_u64_u32 v[11:12], null, s45, v3, v[9:10]
	s_lshl_b32 s15, s6, 8
	s_lshl_b32 s6, s6, 7
	v_mul_lo_u32 v102, s49, v0
	v_subrev_nc_u32_e32 v0, s6, v1
	v_subrev_nc_u32_e32 v1, s6, v2
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[12:13], null, s45, v0, v[10:11]
	v_mad_u64_u32 v[13:14], null, s45, v1, v[10:11]
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v14, 0
	s_sub_i32 s9, s14, s15
	s_mov_b32 s51, 0
	s_mov_b32 s52, s46
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 271 31 is_stmt 1              ; generate_amdgcn.py:271:31
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_add_nc_u32_e32 v104, s51, v9
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v0, s16 :: v_dual_add_nc_u32 v105, s51, v10
	v_dual_mov_b32 v1, s17 :: v_dual_add_nc_u32 v106, s51, v11
	v_mov_b32_e32 v3, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s45, v104
	v_cmp_gt_i32_e64 s6, s45, v105
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v2, s18 :: v_dual_add_nc_u32 v107, s51, v13
	v_dual_mov_b32 v5, s21 :: v_dual_add_nc_u32 v108, s51, v12
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s4
	s_and_b32 s6, s6, s5
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v104, 0x80000000, v106, vcc_lo
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_cndmask_b32_e64 v105, 0x80000000, v107, s6
	v_cndmask_b32_e64 v106, 0x80000000, v108, s6
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_u16 v108, v104, s[28:31], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_clause 0x1
	buffer_load_b64 v[104:105], v105, s[36:39], 0 offen
	buffer_load_b64 v[106:107], v106, s[36:39], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v4, s20 :: v_dual_add_nc_u32 v103, s9, v28
	v_dual_mov_b32 v6, s22 :: v_dual_mov_b32 v7, s23
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s52, s52, -1
	s_add_i32 s9, s9, s48
	s_add_i32 s51, s51, 64
	s_cmp_lg_u32 s52, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(2)
	ds_store_b16 v29, v108
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[160:161], v30
	ds_load_b64 v[162:163], v31
	ds_load_b64 v[167:168], v32
	ds_load_b64 v[171:172], v33
	ds_load_b64 v[194:195], v34
	ds_load_b64 v[196:197], v35
	ds_load_b64 v[198:199], v36
	ds_load_b64 v[200:201], v37
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v38, v[104:105], v[106:107] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[118:121], v30 offset1:2
	ds_load_2addr_stride64_b64 v[134:137], v30 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[144:147], v30 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[148:151], v30 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[152:155], v31 offset1:2
	ds_load_2addr_stride64_b64 v[156:159], v31 offset0:4 offset1:6
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v166, v102, s[12:15], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v176, v103, s[40:43], 0 offen
	buffer_load_u16 v164, v103, s[40:43], 0 offen offset:4
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[118:119], v[160:161], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[160:161], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[134:135], v[160:161], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[136:137], v[160:161], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[144:145], v[160:161], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[146:147], v[160:161], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[148:149], v[160:161], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[150:151], v[160:161], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[144:147], v31 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[148:151], v31 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[156:157], v[162:163], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[158:159], v[162:163], v[128:135] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[157:160], v32 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[104:111], v[152:153], v[162:163], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[154:155], v[162:163], v[112:119] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[152:155], v32 offset1:2
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v156, v103, s[40:43], 0 offen offset:12
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[144:145], v[162:163], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[146:147], v[162:163], v[178:185] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[144:147], v32 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[148:149], v[162:163], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[150:151], v[162:163], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[148:151], v32 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[152:153], v[167:168], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[157:158], v[167:168], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[159:160], v[167:168], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[158:161], v33 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[154:155], v[167:168], v[112:119] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v155, v103, s[40:43], 0 offen offset:8
	buffer_load_u16 v154, v103, s[40:43], 0 offen offset:16
	buffer_load_u16 v153, v103, s[40:43], 0 offen offset:44
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[144:145], v[167:168], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[146:147], v[167:168], v[128:135] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[144:147], v33 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[148:149], v[167:168], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[150:151], v[167:168], v[178:185] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[149:152], v33 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[167:170], v34 offset1:2
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v157, v103, s[40:43], 0 offen offset:20
	buffer_load_u16 v148, v103, s[40:43], 0 offen offset:24
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[158:159], v[171:172], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[160:161], v[171:172], v[178:185] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[159:162], v34 offset0:4 offset1:6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v158, v103, s[40:43], 0 offen offset:36
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[144:145], v[171:172], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[146:147], v[171:172], v[112:119] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[144:147], v33 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[149:150], v[171:172], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[151:152], v[171:172], v[128:135] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[167:168], v[194:195], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[169:170], v[194:195], v[112:119] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[167:170], v35 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[159:160], v[194:195], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[161:162], v[194:195], v[128:135] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[159:162], v34 offset0:12 offset1:14
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v150, v103, s[40:43], 0 offen offset:28
	buffer_load_u16 v152, v103, s[40:43], 0 offen offset:40
	buffer_load_u16 v149, v103, s[40:43], 0 offen offset:48
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[144:145], v[171:172], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[146:147], v[171:172], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[171:174], v34 offset0:8 offset1:10
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v147, v103, s[40:43], 0 offen offset:32
	buffer_load_u16 v151, v103, s[40:43], 0 offen offset:52
	buffer_load_u16 v144, v103, s[40:43], 0 offen offset:56
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[167:168], v[196:197], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[169:170], v[196:197], v[112:119] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[167:170], v35 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[159:160], v[194:195], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[161:162], v[194:195], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[159:162], v35 offset0:4 offset1:6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v146, v103, s[40:43], 0 offen offset:60
	buffer_load_u16 v145, v103, s[40:43], 0 offen offset:64
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[171:172], v[194:195], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[173:174], v[194:195], v[178:185] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[171:174], v37 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[167:168], v[196:197], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[169:170], v[196:197], v[178:185] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[159:160], v[196:197], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[161:162], v[196:197], v[128:135] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[159:162], v35 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[159:160], v[196:197], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[161:162], v[196:197], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[159:162], v36 offset1:2
	ds_load_2addr_stride64_b64 v[167:170], v36 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[159:160], v[198:199], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[161:162], v[198:199], v[112:119] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[159:162], v36 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[167:168], v[198:199], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[169:170], v[198:199], v[128:135] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[167:170], v36 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[159:160], v[198:199], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[161:162], v[198:199], v[178:185] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[159:162], v37 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[167:168], v[198:199], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[169:170], v[198:199], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[167:170], v37 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[136:143], v[171:172], v[200:201], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[173:174], v[200:201], v[178:185] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[159:160], v[200:201], v[104:111] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v159, v103, s[40:43], 0 offen offset:68
	buffer_load_u16 v160, v103, s[40:43], 0 offen offset:72
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[161:162], v[200:201], v[112:119] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[167:168], v[200:201], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[169:170], v[200:201], v[128:135] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[167:170], v37 offset0:12 offset1:14
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v196, v106
	v_cvt_f32_i32_e32 v197, v107
	v_cvt_f32_i32_e32 v199, v109
	v_cvt_f32_i32_e32 v109, v126
	v_cvt_f32_i32_e32 v126, v143
	v_cvt_f32_i32_e32 v198, v108
	v_cvt_f32_i32_e32 v203, v113
	v_cvt_f32_i32_e32 v205, v115
	v_cvt_f32_i32_e32 v113, v130
	v_cvt_f32_i32_e32 v130, v181
	v_cvt_f32_i32_e32 v202, v112
	v_cvt_f32_i32_e32 v175, v118
	v_cvt_f32_i32_e32 v165, v120
	v_cvt_f32_i32_e32 v115, v132
	v_cvt_f32_i32_e32 v118, v135
	v_cvt_f32_i32_e32 v120, v137
	v_cvt_f32_i32_e32 v132, v183
	v_cvt_f32_i32_e32 v206, v116
	v_cvt_f32_i32_e32 v177, v117
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[169:170], v[200:201], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[167:168], v[200:201], v[186:193] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v201, v111
	v_cvt_f32_i32_e32 v111, v128
	v_cvt_f32_i32_e32 v128, v179
	v_cvt_f32_i32_e32 v143, v0
	v_cvt_f32_i32_e32 v0, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v200, v110
	v_cvt_f32_i32_e32 v135, v186
	v_cvt_f32_i32_e32 v137, v188
	v_cvt_f32_i32_e32 v117, v134
	v_cvt_f32_i32_e32 v134, v185
	v_cvt_f32_i32_e32 v194, v104
	v_cvt_f32_i32_e32 v104, v121
	v_cvt_f32_i32_e32 v121, v138
	v_cvt_f32_i32_e32 v138, v189
	v_cvt_f32_i32_e32 v195, v105
	v_cvt_f32_i32_e32 v204, v114
	v_cvt_f32_i32_e32 v167, v119
	v_cvt_f32_i32_e32 v112, v129
	v_cvt_f32_i32_e32 v129, v180
	v_cvt_f32_i32_e32 v110, v127
	v_cvt_f32_i32_e32 v114, v131
	v_cvt_f32_i32_e32 v116, v133
	v_cvt_f32_i32_e32 v119, v136
	v_cvt_f32_i32_e32 v127, v178
	v_cvt_f32_i32_e32 v131, v182
	v_cvt_f32_i32_e32 v133, v184
	v_cvt_f32_i32_e32 v136, v187
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x9
	buffer_load_u16 v161, v103, s[40:43], 0 offen offset:76
	buffer_load_u16 v162, v103, s[40:43], 0 offen offset:80
	buffer_load_u16 v163, v103, s[40:43], 0 offen offset:84
	buffer_load_u16 v168, v103, s[40:43], 0 offen offset:88
	buffer_load_u16 v169, v103, s[40:43], 0 offen offset:92
	buffer_load_u16 v170, v103, s[40:43], 0 offen offset:96
	buffer_load_u16 v171, v103, s[40:43], 0 offen offset:100
	buffer_load_u16 v172, v103, s[40:43], 0 offen offset:104
	buffer_load_u16 v173, v103, s[40:43], 0 offen offset:108
	buffer_load_u16 v174, v103, s[40:43], 0 offen offset:112
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v105, v122
	v_cvt_f32_i32_e32 v106, v123
	v_cvt_f32_i32_e32 v107, v124
	v_cvt_f32_i32_e32 v108, v125
	v_cvt_f32_i32_e32 v122, v139
	v_cvt_f32_i32_e32 v123, v140
	v_cvt_f32_i32_e32 v124, v141
	v_cvt_f32_i32_e32 v125, v142
	v_cvt_f32_i32_e32 v139, v190
	v_cvt_f32_i32_e32 v140, v191
	v_cvt_f32_i32_e32 v141, v192
	v_cvt_f32_i32_e32 v142, v193
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v155, 16, v155
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v7, 16, v166
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v153, 16, v153
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v179, v7, v196
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v98, v179, v155
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v181, v7, v198 :: v_dual_lshlrev_b32 v166, 16, v176
	v_mul_f32_e32 v183, v7, v200
	v_mul_f32_e32 v186, v7, v203
	v_mul_f32_e32 v188, v7, v205
	v_dual_mul_f32 v185, v7, v202 :: v_dual_lshlrev_b32 v156, 16, v156
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v96, v181, v154
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v189, v7, v206
	v_mul_f32_e32 v180, v7, v197
	v_mul_f32_e32 v176, v7, v194
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v177, v7, v177 :: v_dual_lshlrev_b32 v158, 16, v158
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v99, v180, v156
	v_fmac_f32_e32 v100, v176, v166
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v182, v7, v199 :: v_dual_fmac_f32 v93, v186, v158
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v184, v7, v201
	v_mul_f32_e32 v187, v7, v204
	v_mul_f32_e32 v167, v7, v167
	v_mul_f32_e32 v165, v7, v165
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v166, v103, s[40:43], 0 offen offset:116
	buffer_load_u16 v176, v103, s[40:43], 0 offen offset:120
	buffer_load_u16 v155, v103, s[40:43], 0 offen offset:132
	buffer_load_u16 v179, v103, s[40:43], 0 offen offset:136
	buffer_load_u16 v156, v103, s[40:43], 0 offen offset:140
	buffer_load_u16 v180, v103, s[40:43], 0 offen offset:144
	buffer_load_u16 v154, v103, s[40:43], 0 offen offset:148
	buffer_load_u16 v181, v103, s[40:43], 0 offen offset:152
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v97, v182, v157
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v157, v103, s[40:43], 0 offen offset:156
	buffer_load_u16 v182, v103, s[40:43], 0 offen offset:160
	buffer_load_u16 v158, v103, s[40:43], 0 offen offset:188
	buffer_load_u16 v186, v103, s[40:43], 0 offen offset:192
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v105, v7, v105 :: v_dual_add_nc_u32 v102, 2, v102
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v152, 16, v152
	v_lshlrev_b32_e32 v150, 16, v150
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v104, v7, v104
	v_mul_f32_e32 v109, v7, v109
	v_mul_f32_e32 v106, v7, v106
	v_mul_f32_e32 v107, v7, v107
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v149, 16, v149
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v175, v7, v175
	v_mul_f32_e32 v111, v7, v111
	v_mul_f32_e32 v108, v7, v108
	v_mul_f32_e32 v113, v7, v113
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v88, v189, v149
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v149, v103, s[40:43], 0 offen offset:212
	buffer_load_u16 v189, v103, s[40:43], 0 offen offset:216
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v147, 16, v147
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v144, 16, v144
	v_lshlrev_b32_e32 v151, 16, v151
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v178, v7, v195 :: v_dual_fmac_f32 v95, v184, v150
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v92, v185, v147
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v150, v103, s[40:43], 0 offen offset:172
	buffer_load_u16 v184, v103, s[40:43], 0 offen offset:176
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(29)
	v_dual_fmac_f32 v101, v178, v164 :: v_dual_lshlrev_b32 v146, 16, v146
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v164, v103, s[40:43], 0 offen offset:124
	buffer_load_u16 v178, v103, s[40:43], 0 offen offset:128
	buffer_load_u16 v147, v103, s[40:43], 0 offen offset:180
	buffer_load_u16 v185, v103, s[40:43], 0 offen offset:184
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v90, v187, v152 :: v_dual_fmac_f32 v89, v177, v151
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v152, v103, s[40:43], 0 offen offset:196
	buffer_load_u16 v187, v103, s[40:43], 0 offen offset:200
	buffer_load_u16 v151, v103, s[40:43], 0 offen offset:220
	buffer_load_u16 v177, v103, s[40:43], 0 offen offset:224
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v110, v7, v110
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(36)
	v_dual_fmac_f32 v86, v175, v144 :: v_dual_lshlrev_b32 v145, 16, v145
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v144, v103, s[40:43], 0 offen offset:228
	buffer_load_u16 v175, v103, s[40:43], 0 offen offset:232
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v87, v167, v146
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v146, v103, s[40:43], 0 offen offset:236
	buffer_load_u16 v167, v103, s[40:43], 0 offen offset:240
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v115, v7, v115
	v_mul_f32_e32 v112, v7, v112
	v_mul_f32_e32 v117, v7, v117
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v84, v165, v145
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v114, v7, v114
	v_mul_f32_e32 v116, v7, v116
	v_mul_f32_e32 v119, v7, v119
	v_mul_f32_e32 v127, v7, v127
	v_mul_f32_e32 v131, v7, v131
	v_mul_f32_e32 v118, v7, v118
	v_mul_f32_e32 v121, v7, v121
	v_mul_f32_e32 v129, v7, v129
	v_mul_f32_e32 v137, v7, v137
	v_mul_f32_e32 v139, v7, v139
	v_mul_f32_e32 v120, v7, v120
	v_mul_f32_e32 v136, v7, v136
	v_mul_f32_e32 v141, v7, v141
	v_mul_f32_e32 v1, v7, v1
	v_mul_f32_e32 v128, v7, v128
	v_mul_f32_e32 v133, v7, v133
	v_mul_f32_e32 v138, v7, v138
	v_mul_f32_e32 v143, v7, v143
	v_mul_f32_e32 v123, v7, v123
	v_mul_f32_e32 v125, v7, v125
	v_mul_f32_e32 v130, v7, v130
	v_mul_f32_e32 v3, v7, v3
	v_mul_f32_e32 v135, v7, v135
	v_mul_f32_e32 v122, v7, v122
	v_mul_f32_e32 v124, v7, v124
	v_mul_f32_e32 v126, v7, v126
	v_mul_f32_e32 v132, v7, v132
	v_mul_f32_e32 v134, v7, v134
	v_mul_f32_e32 v5, v7, v5
	v_mul_f32_e32 v140, v7, v140
	v_mul_f32_e32 v142, v7, v142
	v_mul_f32_e32 v2, v7, v2
	v_mul_f32_e32 v4, v7, v4
	s_waitcnt vmcnt(39)
	v_dual_mul_f32 v6, v7, v6 :: v_dual_lshlrev_b32 v159, 16, v159
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v91, v188, v153 :: v_dual_lshlrev_b32 v148, 16, v148
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v153, v103, s[40:43], 0 offen offset:204
	buffer_load_u16 v188, v103, s[40:43], 0 offen offset:208
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(40)
	v_dual_fmac_f32 v85, v104, v159 :: v_dual_lshlrev_b32 v160, 16, v160
	v_fmac_f32_e32 v94, v183, v148
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x4
	buffer_load_u16 v148, v103, s[40:43], 0 offen offset:164
	buffer_load_u16 v183, v103, s[40:43], 0 offen offset:168
	buffer_load_u16 v145, v103, s[40:43], 0 offen offset:244
	buffer_load_u16 v165, v103, s[40:43], 0 offen offset:248
	buffer_load_u16 v103, v103, s[40:43], 0 offen offset:252
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v168, 16, v168
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v169, 16, v169
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v170, 16, v170
	v_lshlrev_b32_e32 v161, 16, v161
	v_lshlrev_b32_e32 v162, 16, v162
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v171, 16, v171
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v172, 16, v172
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v173, 16, v173
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v174, 16, v174
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v0, v7, v0 :: v_dual_fmac_f32 v83, v106, v161
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v82, v105, v160 :: v_dual_fmac_f32 v81, v108, v163
	v_dual_fmac_f32 v80, v107, v162 :: v_dual_fmac_f32 v79, v110, v169
	v_dual_fmac_f32 v78, v109, v168 :: v_dual_fmac_f32 v77, v112, v171
	v_dual_fmac_f32 v76, v111, v170 :: v_dual_fmac_f32 v75, v113, v172
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v166, 16, v166
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v179, 16, v179
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v180, 16, v180
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v181, 16, v181
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v182, 16, v182
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v186, 16, v186
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v74, v114, v173 :: v_dual_fmac_f32 v73, v116, v166
	v_dual_fmac_f32 v68, v120, v155 :: v_dual_fmac_f32 v67, v122, v156
	v_dual_fmac_f32 v66, v121, v179 :: v_dual_fmac_f32 v65, v124, v154
	v_dual_fmac_f32 v64, v123, v180 :: v_dual_fmac_f32 v63, v126, v157
	v_fmac_f32_e32 v55, v134, v158
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v149, 16, v149
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v189, 16, v189
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(20)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v49, v140, v149 :: v_dual_lshlrev_b32 v150, 16, v150
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v184, 16, v184
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v164, 16, v164
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v147, 16, v147
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v185, 16, v185
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v187, 16, v187
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v151, 16, v151
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v72, v115, v174 :: v_dual_lshlrev_b32 v177, 16, v177
	v_fmac_f32_e32 v71, v118, v164
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v70, v117, v176 :: v_dual_lshlrev_b32 v167, 16, v167
	v_fmac_f32_e32 v69, v119, v178
	v_dual_fmac_f32 v60, v127, v182 :: v_dual_fmac_f32 v57, v132, v147
	v_dual_fmac_f32 v59, v130, v150 :: v_dual_fmac_f32 v56, v131, v184
	v_dual_fmac_f32 v54, v133, v185 :: v_dual_fmac_f32 v53, v136, v152
	v_fmac_f32_e32 v50, v137, v187
	v_dual_fmac_f32 v46, v141, v189 :: v_dual_fmac_f32 v43, v3, v146
	v_dual_fmac_f32 v47, v142, v151 :: v_dual_fmac_f32 v44, v143, v177
	v_fmac_f32_e32 v45, v1, v144
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v188, 16, v188
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v52, v135, v186
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v148, 16, v148
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v183, 16, v183
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v165, 16, v165
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v62, v125, v181 :: v_dual_lshlrev_b32 v103, 16, v103
	v_dual_fmac_f32 v61, v128, v148 :: v_dual_fmac_f32 v58, v129, v183
	v_dual_fmac_f32 v51, v138, v153 :: v_dual_fmac_f32 v48, v139, v188
	v_dual_fmac_f32 v42, v2, v175 :: v_dual_fmac_f32 v39, v0, v165
	v_dual_fmac_f32 v41, v4, v167 :: v_dual_fmac_f32 v40, v5, v145
	v_fmac_f32_e32 v14, v6, v103
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 207
		.amdhsa_next_free_sgpr 53
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
		.amdhsa_inst_pref_size 63
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_vgpr, 207
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8104
; TotalNumSgprs: 55
; NumVgprs: 207
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 207
; Occupancy: 7
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     207
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
