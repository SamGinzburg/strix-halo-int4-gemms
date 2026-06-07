	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s5, s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x20
	.loc	1 208 24 is_stmt 1              ; generate_amdgcn.py:208:24
	s_lshl_b32 s44, s4, 2
	v_dual_mov_b32 v21, 0x7632 :: v_dual_and_b32 v4, 16, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v1, 5, v0
	v_dual_mov_b32 v20, 0x5410 :: v_dual_and_b32 v27, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshlrev_b32_e32 v3, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshrrev_b32_e32 v2, 1, v4
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	scratch_store_b32 off, v1, off offset:776 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 2, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v5, 1, v0
	v_lshrrev_b32_e32 v6, 3, v0
	v_or_b32_e32 v16, 0x3f0, v0
	v_or_b32_e32 v17, 0x7f0, v0
	v_or_b32_e32 v18, 0xbf0, v0
	v_or_b32_e32 v19, 0xff0, v0
	v_or_b32_e32 v22, 0x13f0, v0
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
	v_cmp_eq_u32_e64 s0, 0, v4
	s_cselect_b32 s5, -1, 0
	s_abs_i32 s10, s44
	v_or_b32_e32 v23, 0x17f0, v0
	s_cvt_f32_u32 s1, s10
	v_cndmask_b32_e64 v21, 0x3276, v21, s0
	v_or_b32_e32 v25, 0x1bf0, v0
	v_or_b32_e32 v26, 0x1ff0, v0
	v_rcp_iflag_f32_e32 v24, s1
	v_and_b32_e32 v0, 0x1e0, v0
	v_lshl_or_b32 v21, v21, 8, v21
	v_mad_u64_u32 v[48:49], null, s35, v27, v[2:3]
	v_cndmask_b32_e64 v20, 0x1054, v20, s0
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v2, 0x760076, v21
	v_and_b32_e32 v7, 56, v1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x70, v3
	v_readfirstlane_b32 s1, v24
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_or_b32_e32 v53, s3, v6
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v20, v20, 8, v20
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_and_or_b32 v54, v5, 62, s3
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_and_b32_e32 v8, 56, v6
	v_and_b32_e32 v51, 0x7060706, v2
	v_mad_u64_u32 v[1:2], null, s35, v53, v[1:2]
	s_cvt_u32_f32 s6, s1
	s_sub_i32 s1, 0, s10
	v_lshl_or_b32 v7, v27, 6, v7
	v_and_b32_e32 v20, 0x540054, v20
	s_mul_i32 s7, s1, s6
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cndmask_b32_e64 v0, 0, 1, s5
	v_xor_b32_e32 v8, v5, v8
	v_xor_b32_e32 v9, 8, v7
	v_xor_b32_e32 v10, 16, v7
	v_xor_b32_e32 v11, 24, v7
	v_cmp_ne_u32_e64 s3, 1, v0
	v_add_nc_u32_e32 v0, 0, v18
	scratch_store_b32 off, v27, off offset:780 ; 4-byte Folded Spill
	v_xor_b32_e32 v12, 32, v7
	v_xor_b32_e32 v13, 40, v7
	v_xor_b32_e32 v14, 48, v7
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v19
	v_xor_b32_e32 v15, 56, v7
	v_lshl_or_b32 v20, v20, 4, v20
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	scratch_store_b64 off, v[1:2], off offset:796 ; 8-byte Folded Spill
	s_and_b32 s37, s11, 0xffff
	scratch_store_b32 off, v0, off offset:756 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v22
	v_add_nc_u32_e32 v38, 0, v27
	v_add_nc_u32_e32 v49, 0x70, v48
	v_and_b32_e32 v50, 0x5040504, v20
	s_bfe_i32 s11, s4, 0x1001d
	v_lshrrev_b32_e32 v165, 3, v4
	v_add_nc_u32_e32 v55, 0, v8
	v_add_nc_u32_e32 v56, 0, v7
	v_add_nc_u32_e32 v57, 0, v9
	v_add_nc_u32_e32 v58, 0, v10
	v_add_nc_u32_e32 v157, 0, v11
	v_add_nc_u32_e32 v60, 0, v12
	v_add_nc_u32_e32 v72, 0, v13
	v_add_nc_u32_e32 v62, 0, v14
	v_add_nc_u32_e32 v161, 0, v15
	v_add_nc_u32_e32 v64, 0, v3
	v_add_nc_u32_e32 v153, 0, v16
	v_add_nc_u32_e32 v192, 0, v17
	scratch_store_b32 off, v0, off offset:760 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v23
	v_add_nc_u32_e32 v139, 0, v25
	v_add_nc_u32_e32 v222, 0, v26
	v_cmp_gt_i32_e64 s4, 64, v54
	v_cmp_gt_i32_e64 s5, 64, v53
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mul_hi_u32 s7, s6, s7
	s_mov_b32 s28, s8
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s16, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_and_b32 s25, s25, 0xffff
	s_add_i32 s47, s6, s7
	s_lshl_b32 s48, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s49, s46, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s50, s35, 6
	s_mov_b32 s51, 0x76543210
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	s_clause 0xc                            ; 56-byte Folded Spill
	scratch_store_b32 off, v0, off offset:764
	scratch_store_b32 off, v49, off offset:784
	scratch_store_b32 off, v50, off offset:788
	scratch_store_b32 off, v51, off offset:792
	scratch_store_b64 off, v[54:55], off offset:712
	scratch_store_b32 off, v55, off offset:720
	scratch_store_b32 off, v56, off offset:724
	scratch_store_b32 off, v57, off offset:728
	scratch_store_b32 off, v58, off offset:732
	scratch_store_b32 off, v60, off offset:736
	scratch_store_b32 off, v62, off offset:740
	scratch_store_b32 off, v64, off offset:744
	scratch_store_b32 off, v53, off offset:748
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v0.h, 0
	v_mov_b16_e32 v0.l, v114.h
	v_mov_b16_e32 v1.l, v113.h
	v_mov_b16_e32 v3.l, v111.h
	v_cmp_o_f32_e32 vcc_lo, v114, v114
	v_mov_b16_e32 v1.h, v0.h
	v_and_b32_e32 v2, 1, v0
	v_mov_b16_e32 v0.l, v112.h
	v_mov_b16_e32 v3.h, v0.h
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s6, s7, 7
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v2, v114, v2, 0x7fff
	v_and_b32_e32 v4, 1, v0
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v0.l, v110.h
	v_add3_u32 v5, v113, v1, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	v_add3_u32 v3, v111, v3, 0x7fff
	v_add3_u32 v2, v112, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v111, v111
	v_mov_b16_e32 v4.l, v115.h
	v_mov_b16_e32 v4.h, v0.h
	v_and_b32_e32 v6, 1, v0
	v_cndmask_b16 v1.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s7
	v_cmp_o_f32_e32 vcc_lo, v110, v110
	v_and_b32_e32 v3, 1, v4
	v_add3_u32 v4, v110, v6, 0x7fff
	v_mov_b16_e32 v0.l, v119.h
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	s_mul_i32 s14, s8, s35
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v5.l, v107.h
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s14, s14, s6
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s6, v112, v112
	v_mov_b16_e32 v5.h, v0.h
	v_add3_u32 v6, v115, v3, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	v_and_b32_e32 v4, 1, v0
	v_mov_b16_e32 v7.l, v105.h
	v_mov_b16_e32 v7.h, v0.h
	v_mov_b16_e32 v0.l, v106.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v4, v119, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v119, v119
	v_cndmask_b16 v3.l, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e32 v0.l, v104.h
	v_add3_u32 v5, v107, v5, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s6
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	v_add3_u32 v6, v105, v6, 0x7fff
	v_add3_u32 v7, v106, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v106, v106
	v_cmp_o_f32_e64 s7, v105, v105
	v_mov_b16_e32 v8.l, v103.h
	v_mov_b16_e32 v8.h, v0.h
	v_and_b32_e32 v9, 1, v0
	v_cndmask_b16 v4.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s7
	v_and_b32_e32 v6, 1, v8
	v_add3_u32 v7, v104, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_mov_b16_e32 v0.l, v102.h
	v_mov_b16_e32 v8.l, v101.h
	v_add3_u32 v9, v103, v6, 0x7fff
	v_mov_b16_e64 v10.l, v231.h
	v_cndmask_b16 v6.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e32 v10.h, v0.h
	v_mov_b16_e32 v0.l, v100.h
	v_and_b32_e32 v8, 1, v8
	v_cmp_o_f32_e64 s6, v102, v102
	v_add3_u32 v7, v102, v7, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v10
	v_and_b32_e32 v10, 1, v0
	v_mov_b16_e32 v0.l, v98.h
	v_add3_u32 v8, v101, v8, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s6
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	v_add3_u32 v9, v231, v9, 0x7fff
	v_add3_u32 v10, v100, v10, 0x7fff
	v_cmp_o_f32_e64 s6, v100, v100
	v_cmp_o_f32_e64 s7, v231, v231
	v_mov_b16_e32 v11.l, v97.h
	v_mov_b16_e32 v11.h, v0.h
	v_and_b32_e32 v12, 1, v0
	v_cndmask_b16 v7.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s6
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s7
	v_and_b32_e32 v9, 1, v11
	v_add3_u32 v10, v98, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_mov_b16_e32 v0.l, v96.h
	v_mov_b16_e32 v11.l, v95.h
	v_add3_u32 v9, v97, v9, 0x7fff
	v_mov_b16_e32 v13.l, v93.h
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_and_b32_e32 v12, 1, v0
	v_mov_b16_e32 v13.h, v0.h
	v_mov_b16_e32 v0.l, v61.h
	v_and_b32_e32 v11, 1, v11
	v_cmp_o_f32_e64 s6, v96, v96
	v_add3_u32 v12, v96, v12, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v13
	v_and_b32_e32 v13, 1, v0
	v_mov_b16_e32 v0.l, v92.h
	v_add3_u32 v11, v95, v11, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s6
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_add3_u32 v9, v93, v9, 0x7fff
	v_add3_u32 v13, v61, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v61, v61
	v_cmp_o_f32_e64 s7, v93, v93
	v_mov_b16_e32 v14.l, v91.h
	v_mov_b16_e32 v14.h, v0.h
	v_and_b32_e32 v15, 1, v0
	v_cndmask_b16 v12.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s6
	v_cndmask_b16 v11.l, 0x7fff, v9.h, s7
	v_and_b32_e32 v9, 1, v14
	v_add3_u32 v13, v92, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	v_mov_b16_e32 v0.l, v90.h
	v_mov_b16_e32 v14.l, v89.h
	v_add3_u32 v9, v91, v9, 0x7fff
	v_mov_b16_e32 v16.l, v88.h
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_and_b32_e32 v15, 1, v0
	v_mov_b16_e32 v16.h, v0.h
	v_mov_b16_e32 v0.l, v87.h
	v_and_b32_e32 v14, 1, v14
	v_cmp_o_f32_e64 s6, v90, v90
	v_add3_u32 v15, v90, v15, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v16
	v_and_b32_e32 v16, 1, v0
	v_mov_b16_e64 v0.l, v179.h
	v_add3_u32 v14, v89, v14, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s6
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	v_add3_u32 v9, v88, v9, 0x7fff
	v_add3_u32 v16, v87, v16, 0x7fff
	v_cmp_o_f32_e64 s6, v87, v87
	v_cmp_o_f32_e64 s7, v88, v88
	v_mov_b16_e64 v17.l, v226.h
	v_mov_b16_e32 v17.h, v0.h
	v_and_b32_e32 v18, 1, v0
	v_cndmask_b16 v15.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s6
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s7
	v_and_b32_e32 v9, 1, v17
	v_add3_u32 v16, v179, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	v_mov_b16_e32 v0.l, v84.h
	v_mov_b16_e32 v17.l, v83.h
	v_add3_u32 v9, v226, v9, 0x7fff
	v_mov_b16_e32 v19.l, v82.h
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v226, v226
	v_and_b32_e32 v18, 1, v0
	v_mov_b16_e32 v19.h, v0.h
	v_mov_b16_e64 v0.l, v219.h
	v_and_b32_e32 v17, 1, v17
	v_cmp_o_f32_e64 s6, v84, v84
	v_add3_u32 v18, v84, v18, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v19
	v_and_b32_e32 v19, 1, v0
	v_mov_b16_e32 v0.l, v80.h
	v_add3_u32 v17, v83, v17, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s6
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_add3_u32 v9, v82, v9, 0x7fff
	v_add3_u32 v19, v219, v19, 0x7fff
	v_cmp_o_f32_e64 s6, v219, v219
	v_cmp_o_f32_e64 s7, v82, v82
	v_mov_b16_e32 v20.l, v22.h
	v_mov_b16_e32 v20.h, v0.h
	v_and_b32_e32 v21, 1, v0
	v_cndmask_b16 v18.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s6
	v_cndmask_b16 v17.l, 0x7fff, v9.h, s7
	v_and_b32_e32 v9, 1, v20
	v_add3_u32 v19, v80, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_mov_b16_e32 v0.l, v79.h
	v_mov_b16_e32 v20.l, v78.h
	v_add3_u32 v9, v22, v9, 0x7fff
	v_cmp_o_f32_e64 s6, v79, v79
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_and_b32_e32 v21, 1, v0
	v_mov_b16_e32 v22.l, v23.h
	v_mov_b16_e32 v22.h, v0.h
	v_mov_b16_e32 v0.l, v24.h
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v21, v79, v21, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v22
	v_and_b32_e32 v22, 1, v0
	v_mov_b16_e32 v0.l, v71.h
	v_add3_u32 v20, v78, v20, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s6
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_add3_u32 v9, v23, v9, 0x7fff
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_cmp_o_f32_e64 s7, v23, v23
	v_mov_b16_e32 v23.l, v25.h
	v_mov_b16_e32 v23.h, v0.h
	v_and_b32_e32 v24, 1, v0
	v_cndmask_b16 v21.l, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s6
	v_cndmask_b16 v20.l, 0x7fff, v9.h, s7
	v_and_b32_e32 v9, 1, v23
	v_add3_u32 v22, v71, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_mov_b16_e32 v0.l, v68.h
	v_mov_b16_e32 v23.l, v67.h
	v_add3_u32 v9, v25, v9, 0x7fff
	v_cmp_o_f32_e64 s6, v68, v68
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_and_b32_e32 v24, 1, v0
	v_mov_b16_e32 v25.l, v26.h
	v_mov_b16_e32 v25.h, v0.h
	v_mov_b16_e64 v0.l, v163.h
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v24, v68, v24, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v25
	v_and_b32_e32 v25, 1, v0
	v_mov_b16_e32 v0.l, v66.h
	v_add3_u32 v23, v67, v23, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s6
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_add3_u32 v9, v26, v9, 0x7fff
	v_add3_u32 v25, v163, v25, 0x7fff
	v_cmp_o_f32_e64 s6, v163, v163
	v_cmp_o_f32_e64 s7, v26, v26
	v_mov_b16_e32 v26.l, v65.h
	v_mov_b16_e32 v26.h, v0.h
	v_and_b32_e32 v27, 1, v0
	v_cndmask_b16 v24.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s6
	v_cndmask_b16 v23.l, 0x7fff, v9.h, s7
	v_and_b32_e32 v9, 1, v26
	v_add3_u32 v25, v66, v27, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_mov_b16_e64 v0.l, v225.h
	v_mov_b16_e32 v26.l, v46.h
	v_add3_u32 v9, v65, v9, 0x7fff
	v_mov_b16_e32 v28.l, v44.h
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_and_b32_e32 v27, 1, v0
	v_mov_b16_e32 v28.h, v0.h
	v_mov_b16_e32 v0.l, v45.h
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s6, v225, v225
	v_add3_u32 v27, v225, v27, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v28
	v_and_b32_e32 v28, 1, v0
	v_mov_b16_e32 v0.l, v43.h
	v_add3_u32 v26, v46, v26, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s6
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_add3_u32 v9, v44, v9, 0x7fff
	v_add3_u32 v28, v45, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v45, v45
	v_cmp_o_f32_e64 s7, v44, v44
	v_mov_b16_e32 v29.l, v31.h
	v_mov_b16_e32 v29.h, v0.h
	v_and_b32_e32 v30, 1, v0
	v_cndmask_b16 v27.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s6
	v_cndmask_b16 v26.l, 0x7fff, v9.h, s7
	v_and_b32_e32 v9, 1, v29
	v_add3_u32 v28, v43, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_mov_b16_e32 v0.l, v42.h
	v_mov_b16_e32 v29.l, v41.h
	v_add3_u32 v9, v31, v9, 0x7fff
	v_cmp_o_f32_e64 s6, v42, v42
	v_cndmask_b16 v28.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_and_b32_e32 v30, 1, v0
	v_mov_b16_e32 v31.l, v32.h
	v_mov_b16_e32 v31.h, v0.h
	v_mov_b16_e32 v0.l, v34.h
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v30, v42, v30, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v31
	v_and_b32_e32 v31, 1, v0
	v_add3_u32 v29, v41, v29, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s6
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_cmp_o_f32_e64 s6, v34, v34
	v_add3_u32 v31, v34, v31, 0x7fff
	v_mov_b16_e32 v0.l, v33.h
	v_add3_u32 v9, v32, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v32, v32
	v_mov_b16_e32 v32.l, v40.h
	v_mov_b16_e32 v32.h, v0.h
	v_cndmask_b16 v30.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s6
	v_and_b32_e32 v31, 1, v0
	v_mov_b16_e32 v0.l, v37.h
	v_cndmask_b16 v29.l, 0x7fff, v9.h, s7
	v_and_b32_e32 v9, 1, v32
	v_mov_b16_e32 v32.l, v39.h
	v_add3_u32 v31, v33, v31, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_and_b32_e32 v33, 1, v0
	v_mov_b16_e32 v34.l, v36.h
	v_mov_b16_e32 v34.h, v0.h
	v_mov_b16_e32 v0.l, v35.h
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v9, v40, v9, 0x7fff
	v_cndmask_b16 v31.h, 0x7fff, v31.h, vcc_lo
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v0, 1, v0
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_add3_u32 v32, v39, v32, 0x7fff
	v_add3_u32 v33, v37, v33, 0x7fff
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v39, v39
	v_add3_u32 v34, v36, v34, 0x7fff
	v_add3_u32 v0, v35, v0, 0x7fff
	v_cmp_o_f32_e64 s8, v35, v35
	v_cmp_o_f32_e64 s9, v36, v36
	v_cndmask_b16 v31.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v33.h, s6
	v_cndmask_b16 v9.l, 0x7fff, v32.h, s7
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s8
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s9
	v_cndmask_b32_e64 v32, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v3, v4, v2, s0
	v_cndmask_b32_e64 v2, v2, v4, s0
	v_cndmask_b32_e64 v33, v7, v5, s0
	v_cndmask_b32_e64 v4, v5, v7, s0
	v_cndmask_b32_e64 v7, v8, v6, s0
	v_cndmask_b32_e64 v5, v6, v8, s0
	v_cndmask_b32_e64 v8, v12, v13, s0
	v_cndmask_b32_e64 v34, v11, v10, s0
	v_cndmask_b32_e64 v6, v10, v11, s0
	v_cndmask_b32_e64 v11, v13, v12, s0
	v_cndmask_b32_e64 v13, v16, v15, s0
	v_cndmask_b32_e64 v10, v15, v16, s0
	v_cndmask_b32_e64 v15, v18, v14, s0
	v_cndmask_b32_e64 v12, v14, v18, s0
	v_cndmask_b32_e64 v18, v21, v17, s0
	v_cndmask_b32_e64 v14, v17, v21, s0
	v_cndmask_b32_e64 v21, v20, v19, s0
	v_cndmask_b32_e64 v16, v19, v20, s0
	v_cndmask_b32_e64 v35, v23, v22, s0
	v_cndmask_b32_e64 v17, v22, v23, s0
	v_cndmask_b32_e64 v23, v25, v24, s0
	v_cndmask_b32_e64 v19, v24, v25, s0
	v_cndmask_b32_e64 v25, v28, v27, s0
	v_cndmask_b32_e64 v20, v27, v28, s0
	v_cndmask_b32_e64 v27, v30, v26, s0
	v_cndmask_b32_e64 v22, v26, v30, s0
	v_cndmask_b32_e64 v30, v9, v29, s0
	v_cndmask_b32_e64 v9, v29, v9, s0
	v_cndmask_b32_e64 v36, v0, v31, s0
	v_cndmask_b32_e64 v0, v31, v0, s0
	v_permlanex16_b32 v26, v4, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v8, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v2, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v5, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v6, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v10, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v14, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v16, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v17, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v9, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v0, s51, 0xfedcba98 op_sel:[1,0]
	s_waitcnt vmcnt(1)
	v_perm_b32 v4, v26, v33, v50
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v26, v33, v51
	v_perm_b32 v10, v31, v11, v50
	v_perm_b32 v11, v31, v11, v51
	v_add_nc_u32_e32 v31, 16, v48
	v_add_lshl_u32 v33, s14, v48, 1
	v_permlanex16_b32 v43, v19, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v20, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v32, v50
	v_perm_b32 v1, v1, v32, v51
	v_perm_b32 v2, v24, v3, v50
	v_perm_b32 v3, v24, v3, v51
	v_perm_b32 v6, v28, v7, v50
	v_perm_b32 v7, v28, v7, v51
	v_perm_b32 v8, v29, v34, v50
	v_perm_b32 v9, v29, v34, v51
	v_perm_b32 v16, v40, v18, v50
	v_perm_b32 v17, v40, v18, v51
	v_perm_b32 v18, v41, v21, v50
	v_perm_b32 v19, v41, v21, v51
	v_perm_b32 v20, v42, v35, v50
	v_perm_b32 v21, v42, v35, v51
	v_add_nc_u32_e32 v32, 32, v48
	v_perm_b32 v28, v46, v30, v50
	v_perm_b32 v29, v46, v30, v51
	v_add_lshl_u32 v34, v31, s14, 1
	v_perm_b32 v30, v47, v36, v50
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_add_nc_u32_e32 v35, 48, v48
	v_perm_b32 v31, v47, v36, v51
	v_add_nc_u32_e32 v36, 64, v48
	v_permlanex16_b32 v39, v12, s51, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v32, v32, s14, 1
	v_add_lshl_u32 v35, v35, s14, 1
	buffer_store_b128 v[0:3], v33, s[24:27], 0 offen
	v_add_lshl_u32 v0, v36, s14, 1
	v_add_nc_u32_e32 v1, 0x50, v48
	v_add_nc_u32_e32 v2, 0x60, v48
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	v_permlanex16_b32 v45, v22, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v37, v13, v50
	v_perm_b32 v13, v37, v13, v51
	v_perm_b32 v14, v39, v15, v50
	v_perm_b32 v15, v39, v15, v51
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	v_cndmask_b32_e64 v3, 0x80000000, v35, s1
	v_add_lshl_u32 v1, v1, s14, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_add_lshl_u32 v2, v2, s14, 1
	buffer_store_b128 v[4:7], v34, s[24:27], 0 offen
	v_add_lshl_u32 v4, v49, s14, 1
	v_perm_b32 v22, v43, v23, v50
	v_perm_b32 v23, v43, v23, v51
	v_perm_b32 v24, v44, v25, v50
	v_perm_b32 v25, v44, v25, v51
	v_perm_b32 v26, v45, v27, v50
	v_perm_b32 v27, v45, v27, v51
	s_clause 0x1
	buffer_store_b128 v[8:11], v32, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v3, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	buffer_store_b128 v[16:19], v0, s[24:27], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v2, s1
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	buffer_store_b128 v[20:23], v1, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s34
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[24:27], v0, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v2, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s6, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s8, s6, s47
	s_xor_b32 s7, s7, s11
	s_mul_i32 s9, s8, s10
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s8, 1
	s_sub_i32 s14, s6, s10
	s_cmp_ge_u32 s6, s10
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v40, 0
	s_cselect_b32 s8, s9, s8
	s_cselect_b32 s6, s14, s6
	s_add_i32 s9, s8, 1
	s_cmp_ge_u32 s6, s10
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	s_cselect_b32 s6, s9, s8
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v32, 0
	s_xor_b32 s6, s6, s7
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	s_sub_i32 s6, s6, s7
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
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
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s14
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v66, 0
	s_cvt_f32_u32 s9, s7
	s_sub_i32 s15, 0, s7
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v68, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s9
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v78, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s9, v0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v84, 0
	s_mul_f32 s9, s9, 0x4f7ffffe
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v226, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s9, s9
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v92, 0
	s_mul_i32 s15, s15, s9
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v96, 0
	s_mul_hi_u32 s6, s9, s15
	s_abs_i32 s15, s17
	s_add_i32 s9, s9, s6
	s_xor_b32 s6, s17, s14
	s_mul_hi_u32 s9, s15, s9
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s18, s9, s7
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v98, 0
	s_sub_i32 s15, s15, s18
	s_add_i32 s18, s9, 1
	s_sub_i32 s19, s15, s7
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v100, 0
	s_cselect_b32 s9, s18, s9
	s_cselect_b32 s15, s19, s15
	s_add_i32 s18, s9, 1
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v104, 0
	s_cselect_b32 s7, s18, s9
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v102, 0
	s_xor_b32 s9, s7, s6
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v106, 0
	s_sub_i32 s7, s9, s6
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v112, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s14, s7, s14
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v110, 0
	s_sub_i32 s14, s17, s14
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v114, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v113, 0
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
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:780
	scratch_load_b64 v[2:3], off, off offset:796
	scratch_load_b32 v1, off, off offset:776
	s_lshl_b32 s15, s6, 8
	s_lshl_b32 s6, s6, 7
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v35, 0
	s_lshl_b32 s14, s9, 8
	s_mov_b32 s52, 0
	s_mov_b32 s53, s46
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s8, v0
	s_waitcnt vmcnt(1)
	v_lshl_add_u32 v2, s9, 7, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s8, v1
	s_sub_i32 s9, s14, s15
	v_mul_lo_u32 v221, s49, v0
	v_subrev_nc_u32_e32 v2, s6, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[0:1], null, s45, v1, v[54:55]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[48:49], off offset:768
	scratch_store_b64 off, v[0:1], off offset:704
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v135, v72 :: v_dual_add_nc_u32 v0, s52, v54
	.loc	1 271 31 is_stmt 1              ; generate_amdgcn.py:271:31
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s45, v0
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v0, s52, v53
	.loc	1 259 30 is_stmt 0              ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 258 26 is_stmt 1              ; generate_amdgcn.py:258:26
	s_clause 0x1c                           ; 116-byte Folded Spill
	scratch_store_b32 off, v61, off offset:112
	scratch_store_b32 off, v2, off offset:108
	scratch_store_b32 off, v104, off offset:104
	scratch_store_b32 off, v101, off offset:100
	scratch_store_b32 off, v22, off offset:96
	scratch_store_b32 off, v24, off offset:92
	scratch_store_b32 off, v23, off offset:88
	scratch_store_b32 off, v71, off offset:84
	scratch_store_b32 off, v25, off offset:80
	scratch_store_b32 off, v68, off offset:76
	scratch_store_b32 off, v67, off offset:72
	scratch_store_b32 off, v26, off offset:68
	scratch_store_b32 off, v66, off offset:64
	scratch_store_b32 off, v65, off offset:60
	scratch_store_b32 off, v46, off offset:56
	scratch_store_b32 off, v45, off offset:52
	scratch_store_b32 off, v44, off offset:48
	scratch_store_b32 off, v43, off offset:44
	scratch_store_b32 off, v31, off offset:40
	scratch_store_b32 off, v42, off offset:36
	scratch_store_b32 off, v41, off offset:32
	scratch_store_b32 off, v34, off offset:28
	scratch_store_b32 off, v32, off offset:24
	scratch_store_b32 off, v33, off offset:20
	scratch_store_b32 off, v40, off offset:16
	scratch_store_b32 off, v39, off offset:12
	scratch_store_b32 off, v37, off offset:8
	scratch_store_b32 off, v36, off offset:4
	scratch_store_b32 off, v35, off
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s6, s45, v0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	scratch_load_b64 v[0:1], off, off offset:704 ; 8-byte Folded Reload
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s53, s53, -1
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v109, v139 :: v_dual_add_nc_u32 v0, s52, v0
	s_add_i32 s52, s52, 64
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s6, s5
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_u16 v4, v0, s[28:31], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	buffer_load_b128 v[0:3], v0, s[36:39], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v55, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[143:144], v56
	ds_load_b64 v[145:146], v57
	ds_load_b64 v[246:247], v58
	ds_load_b64 v[248:249], v157
	ds_load_b64 v[43:44], v60
	ds_load_b64 v[240:241], v72
	ds_load_b64 v[47:48], v62
	ds_load_b64 v[189:190], v161
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v64, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v0, v38 offset:512
	ds_load_u8 v1, v38 offset:640
	ds_load_u8 v2, v38 offset:656
	ds_load_u8 v3, v38 offset:672
	ds_load_u8 v14, v38 offset:7568
	ds_load_u8 v53, v38 offset:7584
	ds_load_u8 v129, v38 offset:7600
	ds_load_u8 v251, v38 offset:7616
	ds_load_u8 v164, v38 offset:7632
	ds_load_u8 v203, v38 offset:7648
	ds_load_u8 v239, v38 offset:7536
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	scratch_store_b32 off, v3, off offset:116 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:688
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:120 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:704
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:124 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:720
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:128 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:736
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:132 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:752
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v201, v38 offset:528
	ds_load_u8 v3, v38 offset:544
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:424 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:560
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:364 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:576
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:304 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:592
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:248 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:608
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:624
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v1, v38 offset:768
	ds_load_u8 v3, v38 offset:896
	ds_load_u8 v200, v38 offset:912
	ds_load_u8 v4, v38 offset:928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v1, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:428 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:944
	v_lshl_or_b32 v171, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:368 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:960
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:308 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:976
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:252 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:992
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v199, v38 offset:784
	ds_load_u8 v4, v38 offset:800
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:432 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:376 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:832
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:316 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:848
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:256 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v3, v38
	ds_load_u8 v8, v38 offset:128
	ds_load_u8 v198, v38 offset:144
	ds_load_u8 v4, v38 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v3, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:452 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:176
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:388 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:192
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:332 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:208
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:272 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:224
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:240
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v197, v38 offset:16
	ds_load_u8 v4, v38 offset:32
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:456 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:48
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:400 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:64
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:336 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:80
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:280 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:96
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:216 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:112
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v8, v38 offset:256
	ds_load_u8 v9, v38 offset:384
	ds_load_u8 v196, v38 offset:400
	ds_load_u8 v4, v38 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v8, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:464 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:432
	v_lshl_or_b32 v170, v8, 16, v3
	ds_load_u8 v0, v38 offset:1664
	ds_load_u8 v1, v38 offset:1536
	ds_load_u8 v3, v38 offset:1520
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v4, off offset:404 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:204 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:1648
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:348 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:464
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:212 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:288 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:480
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:224 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:496
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v195, v38 offset:272
	ds_load_u8 v4, v38 offset:288
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:468 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:304
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:412 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:320
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:360 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:336
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:300 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:232 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:368
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v1, v38 offset:1920
	ds_load_u8 v3, v38 offset:1792
	ds_load_u8 v4, v38 offset:1776
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:220 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:1904
	v_lshl_or_b32 v173, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:228 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:1024
	ds_load_u8 v8, v38 offset:1152
	ds_load_u8 v4, v38 offset:1136
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v3, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:236 ; 4-byte Folded Spill
	ds_load_u8 v8, v38 offset:1408
	ds_load_u8 v9, v38 offset:1280
	ds_load_u8 v4, v38 offset:1264
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v8, 16, v3
	ds_load_u8 v0, v38 offset:2688
	ds_load_u8 v1, v38 offset:2560
	ds_load_u8 v3, v38 offset:2576
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v4, off offset:240 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:1392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:136 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:2544
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:260 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:2704
	scratch_store_b32 off, v4, off offset:244 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:144 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:2672
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:264 ; 4-byte Folded Spill
	ds_load_u8 v1, v38 offset:2944
	ds_load_u8 v3, v38 offset:2816
	ds_load_u8 v4, v38 offset:2832
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:148 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:2800
	v_lshl_or_b32 v175, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:268 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:2960
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:2928
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:276 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:2176
	ds_load_u8 v8, v38 offset:2048
	ds_load_u8 v4, v38 offset:2064
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v8, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:340 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:2192
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:600 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:2160
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:284 ; 4-byte Folded Spill
	ds_load_u8 v8, v38 offset:2432
	ds_load_u8 v9, v38 offset:2304
	ds_load_u8 v4, v38 offset:2320
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v8, 16, v3
	ds_load_u8 v0, v38 offset:3712
	ds_load_u8 v1, v38 offset:3584
	ds_load_u8 v3, v38 offset:3600
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:624 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:3616
	scratch_store_b32 off, v4, off offset:608 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:2288
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:504 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:3568
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:292 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:2448
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:312 ; 4-byte Folded Spill
	ds_load_u8 v39, v38 offset:3728
	ds_load_u8 v3, v38 offset:3744
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v4, off offset:616 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:2416
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:532 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:3696
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:296 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:320 ; 4-byte Folded Spill
	ds_load_u8 v1, v38 offset:3968
	ds_load_u8 v3, v38 offset:3840
	ds_load_u8 v220, v38 offset:3856
	ds_load_u8 v4, v38 offset:3872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:536 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:3824
	v_lshl_or_b32 v13, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:324 ; 4-byte Folded Spill
	ds_load_u8 v218, v38 offset:3984
	ds_load_u8 v4, v38 offset:4000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:548 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:3952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:328 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:3200
	ds_load_u8 v8, v38 offset:3072
	ds_load_u8 v216, v38 offset:3088
	ds_load_u8 v4, v38 offset:3104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v8, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:560 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:3040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:392 ; 4-byte Folded Spill
	ds_load_u8 v214, v38 offset:3216
	ds_load_u8 v4, v38 offset:3232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:564 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:3184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:344 ; 4-byte Folded Spill
	ds_load_u8 v8, v38 offset:3456
	ds_load_u8 v9, v38 offset:3328
	ds_load_u8 v194, v38 offset:3344
	ds_load_u8 v4, v38 offset:3360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v8, 16, v3
	ds_load_u8 v0, v38 offset:4736
	ds_load_u8 v1, v38 offset:4608
	ds_load_u8 v52, v38 offset:4624
	ds_load_u8 v3, v38 offset:4640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:596 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:4656
	scratch_store_b32 off, v4, off offset:576 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:3312
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:500 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:4592
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:352 ; 4-byte Folded Spill
	ds_load_u8 v40, v38 offset:3472
	ds_load_u8 v4, v38 offset:3488
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v3, off offset:372 ; 4-byte Folded Spill
	ds_load_u8 v180, v38 offset:4752
	ds_load_u8 v3, v38 offset:4768
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v4, off offset:584 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:3440
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:672 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:4784
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:528 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:4720
	scratch_store_b32 off, v4, off offset:356 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:380 ; 4-byte Folded Spill
	ds_load_u8 v1, v38 offset:4992
	ds_load_u8 v3, v38 offset:4864
	ds_load_u8 v178, v38 offset:4880
	ds_load_u8 v4, v38 offset:4896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:680 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:4912
	v_lshl_or_b32 v11, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:544 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:4848
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:384 ; 4-byte Folded Spill
	ds_load_u8 v160, v38 offset:5008
	ds_load_u8 v4, v38 offset:5024
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:688 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:5040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:552 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:4976
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:396 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:4224
	ds_load_u8 v8, v38 offset:4096
	ds_load_u8 v159, v38 offset:4112
	ds_load_u8 v250, v38 offset:4128
	ds_load_u8 v4, v38 offset:4144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v3, v8, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:568 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:4064
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:448 ; 4-byte Folded Spill
	ds_load_u8 v158, v38 offset:4240
	ds_load_u8 v244, v38 offset:4256
	ds_load_u8 v4, v38 offset:4272
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:580 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:4208
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:408 ; 4-byte Folded Spill
	ds_load_u8 v8, v38 offset:4480
	ds_load_u8 v9, v38 offset:4352
	ds_load_u8 v50, v38 offset:4368
	ds_load_u8 v242, v38 offset:4384
	ds_load_u8 v4, v38 offset:4400
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v8, 16, v3
	ds_load_u8 v0, v38 offset:5760
	ds_load_u8 v1, v38 offset:5632
	ds_load_u8 v147, v38 offset:5648
	ds_load_u8 v233, v38 offset:5664
	ds_load_u8 v3, v38 offset:5680
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:620 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:5696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:512 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:5616
	scratch_store_b32 off, v4, off offset:592 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:4336
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:436 ; 4-byte Folded Spill
	ds_load_u8 v127, v38 offset:5776
	ds_load_u8 v211, v38 offset:5792
	ds_load_u8 v3, v38 offset:5808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:684 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:5824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:556 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:5744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:440 ; 4-byte Folded Spill
	ds_load_u8 v1, v38 offset:6016
	ds_load_u8 v8, v38 offset:5888
	ds_load_u8 v118, v38 offset:5904
	ds_load_u8 v202, v38 offset:5920
	ds_load_u8 v255, v38 offset:5936
	ds_load_u8 v3, v38 offset:5952
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v8, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:572 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:5872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:444 ; 4-byte Folded Spill
	ds_load_u8 v162, v38 offset:6032
	ds_load_u8 v193, v38 offset:6048
	ds_load_u8 v252, v38 offset:6064
	ds_load_u8 v3, v38 offset:6080
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:588 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:6000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:460 ; 4-byte Folded Spill
	ds_load_u8 v8, v38 offset:5248
	ds_load_u8 v9, v38 offset:5120
	ds_load_u8 v117, v38 offset:5136
	ds_load_u8 v184, v38 offset:5152
	ds_load_u8 v232, v38 offset:5168
	ds_load_u8 v3, v38 offset:5184
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v5, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:632 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:5088
	scratch_store_b32 off, v4, off offset:416 ; 4-byte Folded Spill
	ds_load_u8 v49, v38 offset:4496
	ds_load_u8 v235, v38 offset:4512
	ds_load_u8 v4, v38 offset:4528
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v3, off offset:492 ; 4-byte Folded Spill
	ds_load_u8 v66, v38 offset:5264
	ds_load_u8 v183, v38 offset:5280
	ds_load_u8 v230, v38 offset:5296
	ds_load_u8 v3, v38 offset:5312
	s_waitcnt lgkmcnt(4)
	scratch_store_b32 off, v4, off offset:604 ; 4-byte Folded Spill
	ds_load_u8 v4, v38 offset:4464
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:640 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:5232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:472 ; 4-byte Folded Spill
	ds_load_u8 v8, v38 offset:5504
	ds_load_u8 v9, v38 offset:5376
	ds_load_u8 v187, v38 offset:5392
	ds_load_u8 v136, v38 offset:5408
	ds_load_u8 v228, v38 offset:5424
	ds_load_u8 v3, v38 offset:5440
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	v_lshl_or_b32 v9, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:652 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:5360
	v_lshl_or_b32 v8, v8, 16, v5
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:476 ; 4-byte Folded Spill
	ds_load_u8 v65, v38 offset:5520
	ds_load_u8 v134, v38 offset:5536
	ds_load_u8 v224, v38 offset:5552
	ds_load_u8 v3, v38 offset:5568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:660 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:5488
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:480 ; 4-byte Folded Spill
	ds_load_u8 v0, v38 offset:6784
	ds_load_u8 v1, v38 offset:6656
	ds_load_u8 v101, v38 offset:6672
	ds_load_u8 v131, v38 offset:6688
	ds_load_u8 v215, v38 offset:6704
	ds_load_u8 v3, v38 offset:6720
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:668 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:6736
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:540 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:6640
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:484 ; 4-byte Folded Spill
	ds_load_u8 v51, v38 offset:6800
	ds_load_u8 v123, v38 offset:6816
	ds_load_u8 v186, v38 offset:6832
	ds_load_u8 v237, v38 offset:6848
	ds_load_u8 v3, v38 offset:6864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:636 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:6768
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:488 ; 4-byte Folded Spill
	ds_load_u8 v1, v38 offset:7040
	ds_load_u8 v19, v38 offset:6912
	ds_load_u8 v130, v38 offset:6928
	ds_load_u8 v121, v38 offset:6944
	ds_load_u8 v182, v38 offset:6960
	ds_load_u8 v227, v38 offset:6976
	ds_load_u8 v3, v38 offset:6992
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v19, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:664 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:6896
	v_lshl_or_b32 v177, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:496 ; 4-byte Folded Spill
	ds_load_u8 v133, v38 offset:7056
	ds_load_u8 v116, v38 offset:7072
	ds_load_u8 v181, v38 offset:7088
	ds_load_u8 v223, v38 offset:7104
	ds_load_u8 v3, v38 offset:7120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:676 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:7024
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:508 ; 4-byte Folded Spill
	ds_load_u8 v19, v38 offset:6272
	ds_load_u8 v20, v38 offset:6144
	ds_load_u8 v62, v38 offset:6160
	ds_load_u8 v104, v38 offset:6176
	ds_load_u8 v166, v38 offset:6192
	ds_load_u8 v212, v38 offset:6208
	ds_load_u8 v3, v38 offset:6224
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:692 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:6112
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:628 ; 4-byte Folded Spill
	ds_load_u8 v60, v38 offset:6288
	ds_load_u8 v99, v38 offset:6304
	ds_load_u8 v156, v38 offset:6320
	ds_load_u8 v210, v38 offset:6336
	ds_load_u8 v3, v38 offset:6352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:696 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:6256
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:516 ; 4-byte Folded Spill
	ds_load_u8 v20, v38 offset:6528
	ds_load_u8 v21, v38 offset:6400
	ds_load_u8 v57, v38 offset:6416
	ds_load_u8 v94, v38 offset:6432
	ds_load_u8 v155, v38 offset:6448
	ds_load_u8 v206, v38 offset:6464
	ds_load_u8 v245, v38 offset:6480
	ds_load_u8 v3, v38 offset:6384
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v20, 16, v19
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:520 ; 4-byte Folded Spill
	ds_load_u8 v72, v38 offset:6544
	ds_load_u8 v85, v38 offset:6560
	ds_load_u8 v151, v38 offset:6576
	ds_load_u8 v204, v38 offset:6592
	ds_load_u8 v243, v38 offset:6608
	ds_load_u8 v3, v38 offset:6512
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:524 ; 4-byte Folded Spill
	ds_load_u8 v0, v38 offset:7808
	ds_load_u8 v1, v38 offset:7680
	ds_load_u8 v42, v38 offset:7696
	ds_load_u8 v77, v38 offset:7712
	ds_load_u8 v150, v38 offset:7728
	ds_load_u8 v191, v38 offset:7744
	ds_load_u8 v234, v38 offset:7760
	ds_load_u8 v3, v38 offset:7776
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:648 ; 4-byte Folded Spill
	ds_load_u8 v3, v38 offset:7664
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:612 ; 4-byte Folded Spill
	ds_load_u8 v41, v38 offset:7824
	ds_load_u8 v71, v38 offset:7840
	ds_load_u8 v128, v38 offset:7856
	ds_load_u8 v208, v38 offset:7872
	ds_load_u8 v207, v38 offset:7888
	ds_load_u8 v254, v38 offset:7904
	ds_load_u8 v3, v38 offset:7792
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:644 ; 4-byte Folded Spill
	ds_load_u8 v1, v38 offset:8064
	ds_load_u8 v19, v38 offset:7936
	ds_load_u8 v37, v38 offset:7952
	ds_load_u8 v64, v38 offset:7968
	ds_load_u8 v86, v38 offset:7984
	ds_load_u8 v154, v38 offset:8000
	ds_load_u8 v188, v38 offset:8016
	ds_load_u8 v229, v38 offset:8032
	ds_load_u8 v3, v38 offset:7920
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v1, v19, v1, 0xc0c0004
	ds_load_u8 v19, v38 offset:7296
	ds_load_u8 v20, v38 offset:7168
	ds_load_u8 v17, v38 offset:7184
	ds_load_u8 v58, v38 offset:7200
	ds_load_u8 v76, v38 offset:7216
	ds_load_u8 v140, v38 offset:7232
	ds_load_u8 v169, v38 offset:7248
	ds_load_u8 v217, v38 offset:7264
	ds_load_u8 v209, v38 offset:7136
	ds_load_u8 v16, v38 offset:7312
	ds_load_u8 v67, v38 offset:7328
	ds_load_u8 v75, v38 offset:7344
	ds_load_u8 v138, v38 offset:7360
	ds_load_u8 v168, v38 offset:7376
	ds_load_u8 v213, v38 offset:7392
	ds_load_u8 v253, v38 offset:7280
	v_lshl_or_b32 v1, v1, 16, v0
	s_waitcnt lgkmcnt(16)
	scratch_store_b32 off, v3, off offset:656 ; 4-byte Folded Spill
	ds_load_u8 v36, v38 offset:8080
	ds_load_u8 v61, v38 offset:8096
	ds_load_u8 v81, v38 offset:8112
	ds_load_u8 v238, v38 offset:8128
	ds_load_u8 v185, v38 offset:8144
	ds_load_u8 v236, v38 offset:8160
	ds_load_u8 v3, v38 offset:8048
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v20, v38 offset:7552
	ds_load_u8 v21, v38 offset:7424
	ds_load_u8 v15, v38 offset:7440
	ds_load_u8 v55, v38 offset:7456
	ds_load_u8 v73, v38 offset:7472
	ds_load_u8 v137, v38 offset:7488
	ds_load_u8 v167, v38 offset:7504
	ds_load_u8 v205, v38 offset:7520
	ds_load_u8 v3, v38 offset:7408
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v0, v20, 16, v19
	v_dual_mov_b32 v26, s23 :: v_dual_mov_b32 v21, s18
	v_dual_mov_b32 v25, s22 :: v_dual_mov_b32 v24, s21
	v_mov_b32_e32 v19, s16
	v_dual_mov_b32 v23, s20 :: v_dual_mov_b32 v22, s19
	v_mov_b32_e32 v20, s17
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:700 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[28:35], v[170:171], v[143:144], v[19:26] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[172:173], v[145:146], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[174:175], v[246:247], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[12:13], v[248:249], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[10:11], v[43:44], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[8:9], v[240:241], v[28:35] neg_lo:[1,1,0]
	v_perm_b32 v8, v197, v198, 0xc0c0004
	v_perm_b32 v9, v195, v196, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[28:35], v[176:177], v[47:48], v[28:35] neg_lo:[1,1,0]
	ds_load_u8 v177, v38 offset:1360
	ds_load_u8 v139, v38 offset:1376
	v_wmma_i32_16x16x16_iu4 v[28:35], v[0:1], v[189:190], v[28:35] neg_lo:[1,1,0]
	v_perm_b32 v1, v199, v200, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v0, v35
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	scratch_store_b32 off, v4, off offset:420 ; 4-byte Folded Spill
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v176, v28
	v_cvt_f32_i32_e32 v175, v29
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v29, v194, v40, 0xc0c0004
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_perm_b32 v0, v201, v2, 0xc0c0004
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v174, v30
	v_cvt_f32_i32_e32 v173, v31
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v30, v159, v158, 0xc0c0004
	v_perm_b32 v31, v50, v49, 0xc0c0004
	v_lshl_or_b32 v1, v1, 16, v0
	v_lshl_or_b32 v0, v9, 16, v8
	ds_load_u8 v8, v38 offset:1552
	ds_load_u8 v9, v38 offset:1680
	ds_load_u8 v195, v38 offset:1696
	ds_load_u8 v196, v38 offset:1712
	ds_load_u8 v197, v38 offset:1728
	ds_load_u8 v198, v38 offset:1744
	ds_load_u8 v199, v38 offset:1760
	ds_load_u8 v200, v38 offset:1568
	ds_load_u8 v201, v38 offset:1584
	ds_load_u8 v74, v38 offset:1600
	ds_load_u8 v132, v38 offset:1616
	ds_load_u8 v152, v38 offset:1632
	v_lshl_or_b32 v159, v14, 16, v16
	v_lshl_or_b32 v49, v31, 16, v30
	v_perm_b32 v30, v117, v66, 0xc0c0004
	v_perm_b32 v31, v187, v65, 0xc0c0004
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v172, v32
	v_cvt_f32_i32_e32 v171, v33
	v_cvt_f32_i32_e32 v170, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v65, v31, 16, v30
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v8, v9, 0xc0c0004
	ds_load_u8 v9, v38 offset:1808
	ds_load_u8 v10, v38 offset:1936
	ds_load_u8 v7, v38 offset:1952
	ds_load_u8 v46, v38 offset:1968
	ds_load_u8 v70, v38 offset:1984
	ds_load_u8 v126, v38 offset:2000
	ds_load_u8 v6, v38 offset:1824
	ds_load_u8 v56, v38 offset:1840
	ds_load_u8 v108, v38 offset:1856
	ds_load_u8 v125, v38 offset:1872
	ds_load_u8 v148, v38 offset:1888
	v_perm_b32 v30, v62, v60, 0xc0c0004
	v_perm_b32 v31, v57, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v31, 16, v30
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	ds_load_u8 v10, v38 offset:1040
	ds_load_u8 v11, v38 offset:1168
	ds_load_u8 v5, v38 offset:1184
	ds_load_u8 v45, v38 offset:1200
	ds_load_u8 v69, v38 offset:1216
	ds_load_u8 v124, v38 offset:1232
	ds_load_u8 v149, v38 offset:1248
	ds_load_u8 v4, v38 offset:1056
	ds_load_u8 v54, v38 offset:1072
	ds_load_u8 v68, v38 offset:1088
	ds_load_u8 v122, v38 offset:1104
	ds_load_u8 v142, v38 offset:1120
	v_lshl_or_b32 v9, v9, 16, v8
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v6, v7, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v38 offset:1296
	ds_load_u8 v12, v38 offset:1424
	ds_load_u8 v3, v38 offset:1440
	ds_load_u8 v27, v38 offset:1456
	ds_load_u8 v59, v38 offset:1472
	ds_load_u8 v120, v38 offset:1488
	ds_load_u8 v141, v38 offset:1504
	ds_load_u8 v2, v38 offset:1312
	ds_load_u8 v18, v38 offset:1328
	ds_load_u8 v63, v38 offset:1344
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v4, v5, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v8, v11, 16, v10
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:136
	scratch_load_b32 v11, off, off offset:144
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:148
	scratch_load_b32 v12, off, off offset:152
	s_waitcnt vmcnt(0)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:156
	scratch_load_b32 v13, off, off offset:600
	v_lshl_or_b32 v11, v11, 16, v10
	s_waitcnt vmcnt(0)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:608
	scratch_load_b32 v28, off, off offset:616
	s_waitcnt vmcnt(0)
	v_perm_b32 v13, v13, v28, 0xc0c0004
	v_perm_b32 v28, v216, v214, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v10, v13, 16, v12
	scratch_load_b32 v12, off, off offset:624 ; 4-byte Folded Reload
	v_perm_b32 v13, v220, v218, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v12, v12, v39, 0xc0c0004
	v_mov_b32_e32 v39, v145
	v_dual_mov_b32 v14, v189 :: v_dual_mov_b32 v15, v190
	v_mov_b32_e32 v40, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v13, 16, v12
	v_lshl_or_b32 v12, v29, 16, v28
	v_perm_b32 v28, v52, v180, 0xc0c0004
	v_perm_b32 v29, v178, v160, 0xc0c0004
	v_lshl_or_b32 v50, v29, 16, v28
	v_perm_b32 v28, v147, v127, 0xc0c0004
	v_perm_b32 v29, v118, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v66, v29, 16, v28
	v_perm_b32 v28, v101, v51, 0xc0c0004
	v_perm_b32 v29, v130, v133, 0xc0c0004
	v_dual_mov_b32 v52, v44 :: v_dual_mov_b32 v51, v43
	v_lshl_or_b32 v118, v29, 16, v28
	v_perm_b32 v28, v42, v41, 0xc0c0004
	v_perm_b32 v29, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v160, v29, 16, v28
	v_wmma_i32_16x16x16_iu4 v[28:35], v[0:1], v[143:144], v[19:26] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[8:9], v[145:146], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[10:11], v[246:247], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[12:13], v[248:249], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[49:50], v[43:44], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[65:66], v[240:241], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[117:118], v[47:48], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[159:160], v[14:15], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v0, v31
	v_cvt_f32_i32_e32 v118, v28
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v159, v29
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v29, v242, v235, 0xc0c0004
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v160, v30
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:116
	scratch_load_b32 v1, off, off offset:424
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:428
	scratch_load_b32 v8, off, off offset:432
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v8, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:452
	scratch_load_b32 v9, off, off offset:456
	v_lshl_or_b32 v1, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:464
	scratch_load_b32 v10, off, off offset:468
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v0, v9, 16, v8
	v_perm_b32 v8, v200, v195, 0xc0c0004
	v_lshl_or_b32 v9, v6, 16, v8
	v_lshl_or_b32 v8, v2, 16, v4
	ds_load_u8 v2, v38 offset:2592
	ds_load_u8 v3, v38 offset:2720
	ds_load_u8 v5, v38 offset:2736
	ds_load_u8 v6, v38 offset:2752
	ds_load_u8 v72, v38 offset:2768
	ds_load_u8 v117, v38 offset:2784
	ds_load_u8 v4, v38 offset:2608
	ds_load_u8 v16, v38 offset:2624
	ds_load_u8 v7, v38 offset:2640
	ds_load_u8 v145, v38 offset:2656
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v38 offset:2848
	ds_load_u8 v10, v38 offset:2976
	ds_load_u8 v17, v38 offset:2992
	ds_load_u8 v57, v38 offset:3008
	ds_load_u8 v101, v38 offset:3024
	ds_load_u8 v60, v38 offset:2864
	ds_load_u8 v130, v38 offset:2880
	ds_load_u8 v133, v38 offset:2896
	ds_load_u8 v147, v38 offset:2912
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v3, v3, v10, 0xc0c0004
	ds_load_u8 v10, v38 offset:2080
	ds_load_u8 v11, v38 offset:2208
	ds_load_u8 v62, v38 offset:2224
	ds_load_u8 v158, v38 offset:2240
	ds_load_u8 v162, v38 offset:2256
	ds_load_u8 v178, v38 offset:2272
	ds_load_u8 v127, v38 offset:2096
	ds_load_u8 v180, v38 offset:2112
	ds_load_u8 v187, v38 offset:2128
	ds_load_u8 v189, v38 offset:2144
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v38 offset:2336
	ds_load_u8 v12, v38 offset:2464
	ds_load_u8 v190, v38 offset:2480
	ds_load_u8 v194, v38 offset:2496
	ds_load_u8 v195, v38 offset:2512
	ds_load_u8 v200, v38 offset:2528
	ds_load_u8 v214, v38 offset:2352
	ds_load_u8 v216, v38 offset:2368
	ds_load_u8 v218, v38 offset:2384
	ds_load_u8 v220, v38 offset:2400
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v12, v11, v12, 0xc0c0004
	v_lshl_or_b32 v11, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:504
	scratch_load_b32 v3, off, off offset:532
	v_lshl_or_b32 v10, v12, 16, v10
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:536
	scratch_load_b32 v12, off, off offset:548
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v12, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:560
	scratch_load_b32 v13, off, off offset:564
	s_waitcnt vmcnt(0)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:576
	scratch_load_b32 v28, off, off offset:584
	s_waitcnt vmcnt(0)
	v_perm_b32 v28, v13, v28, 0xc0c0004
	v_lshl_or_b32 v13, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:596
	scratch_load_b32 v3, off, off offset:672
	v_lshl_or_b32 v12, v28, 16, v12
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:680
	scratch_load_b32 v28, off, off offset:688
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v28, 0xc0c0004
	v_perm_b32 v28, v250, v244, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v37, v3, 16, v2
	v_lshl_or_b32 v36, v29, 16, v28
	v_perm_b32 v28, v184, v183, 0xc0c0004
	v_perm_b32 v29, v136, v134, 0xc0c0004
	v_perm_b32 v2, v233, v211, 0xc0c0004
	v_perm_b32 v3, v202, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v41, v29, 16, v28
	v_perm_b32 v28, v104, v99, 0xc0c0004
	v_perm_b32 v29, v94, v85, 0xc0c0004
	v_lshl_or_b32 v42, v3, 16, v2
	v_perm_b32 v2, v131, v123, 0xc0c0004
	v_perm_b32 v3, v121, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v49, v29, 16, v28
	v_perm_b32 v28, v58, v67, 0xc0c0004
	v_perm_b32 v29, v55, v53, 0xc0c0004
	v_lshl_or_b32 v50, v3, 16, v2
	v_perm_b32 v3, v64, v61, 0xc0c0004
	v_perm_b32 v2, v77, v71, 0xc0c0004
	v_mov_b32_e32 v67, v40
	v_lshl_or_b32 v64, v29, 16, v28
	v_wmma_i32_16x16x16_iu4 v[28:35], v[0:1], v[143:144], v[19:26] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:120
	scratch_load_b32 v1, off, off offset:364
	v_lshl_or_b32 v65, v3, 16, v2
	v_mov_b32_e32 v66, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[8:9], v[66:67], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[10:11], v[246:247], v[28:35] neg_lo:[1,1,0]
	v_perm_b32 v10, v18, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[12:13], v[248:249], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[36:37], v[51:52], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[41:42], v[240:241], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[49:50], v[47:48], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[64:65], v[14:15], v[28:35] neg_lo:[1,1,0]
	v_dual_mov_b32 v65, v15 :: v_dual_mov_b32 v64, v14
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v211, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v233, v29
	v_cvt_f32_i32_e32 v184, v30
	v_cvt_f32_i32_e32 v242, v31
	v_cvt_f32_i32_e32 v146, v32
	v_cvt_f32_i32_e32 v193, v33
	v_cvt_f32_i32_e32 v183, v34
	v_cvt_f32_i32_e32 v244, v35
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:368
	scratch_load_b32 v2, off, off offset:376
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:388
	scratch_load_b32 v3, off, off offset:400
	v_lshl_or_b32 v1, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:404
	scratch_load_b32 v8, off, off offset:412
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v8, v3, 0xc0c0004
	v_perm_b32 v8, v54, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v0, v3, 16, v2
	v_perm_b32 v2, v201, v196, 0xc0c0004
	v_perm_b32 v3, v56, v46, 0xc0c0004
	v_lshl_or_b32 v8, v10, 16, v8
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v10, v214, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v3, 16, v2
	v_perm_b32 v2, v4, v5, 0xc0c0004
	v_perm_b32 v3, v60, v17, 0xc0c0004
	v_perm_b32 v4, v127, v62, 0xc0c0004
	v_lshl_or_b32 v11, v3, 16, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v10, v10, 16, v4
	ds_load_u8 v2, v38 offset:3632
	ds_load_u8 v3, v38 offset:3760
	ds_load_u8 v4, v38 offset:3776
	ds_load_u8 v14, v38 offset:3792
	ds_load_u8 v18, v38 offset:3808
	ds_load_u8 v17, v38 offset:3648
	ds_load_u8 v27, v38 offset:3664
	ds_load_u8 v235, v38 offset:3680
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v38 offset:3888
	ds_load_u8 v12, v38 offset:4016
	ds_load_u8 v39, v38 offset:4032
	ds_load_u8 v62, v38 offset:4048
	ds_load_u8 v46, v38 offset:3904
	ds_load_u8 v49, v38 offset:3920
	ds_load_u8 v50, v38 offset:3936
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v3, v12, 0xc0c0004
	ds_load_u8 v12, v38 offset:3120
	ds_load_u8 v13, v38 offset:3248
	ds_load_u8 v55, v38 offset:3264
	ds_load_u8 v85, v38 offset:3280
	ds_load_u8 v94, v38 offset:3296
	ds_load_u8 v60, v38 offset:3136
	ds_load_u8 v99, v38 offset:3152
	ds_load_u8 v116, v38 offset:3168
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v12, v13, 0xc0c0004
	ds_load_u8 v13, v38 offset:3376
	ds_load_u8 v28, v38 offset:3504
	ds_load_u8 v121, v38 offset:3520
	ds_load_u8 v123, v38 offset:3536
	ds_load_u8 v127, v38 offset:3552
	ds_load_u8 v131, v38 offset:3392
	ds_load_u8 v134, v38 offset:3408
	ds_load_u8 v136, v38 offset:3424
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v28, v13, v28, 0xc0c0004
	v_lshl_or_b32 v13, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:500
	scratch_load_b32 v3, off, off offset:528
	v_lshl_or_b32 v12, v28, 16, v12
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:544
	scratch_load_b32 v5, off, off offset:552
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v5, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:568
	scratch_load_b32 v15, off, off offset:580
	v_lshl_or_b32 v37, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:620
	scratch_load_b32 v3, off, off offset:684
	s_waitcnt vmcnt(2)
	v_perm_b32 v28, v5, v15, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:592
	scratch_load_b32 v15, off, off offset:604
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	v_perm_b32 v3, v255, v252, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v3, 16, v2
	v_perm_b32 v2, v215, v186, 0xc0c0004
	v_perm_b32 v3, v182, v181, 0xc0c0004
	v_lshl_or_b32 v43, v3, 16, v2
	v_perm_b32 v2, v150, v128, 0xc0c0004
	v_perm_b32 v3, v86, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v5, v15, 0xc0c0004
	v_lshl_or_b32 v36, v29, 16, v28
	v_perm_b32 v28, v232, v230, 0xc0c0004
	v_perm_b32 v29, v228, v224, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v29, 16, v28
	v_perm_b32 v28, v166, v156, 0xc0c0004
	v_perm_b32 v29, v155, v151, 0xc0c0004
	v_lshl_or_b32 v42, v29, 16, v28
	v_perm_b32 v28, v76, v75, 0xc0c0004
	v_perm_b32 v29, v73, v129, 0xc0c0004
	v_dual_mov_b32 v128, v246 :: v_dual_mov_b32 v129, v247
	v_mov_b32_e32 v75, v115
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v44, v29, 16, v28
	v_wmma_i32_16x16x16_iu4 v[28:35], v[0:1], v[143:144], v[19:26] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:124
	scratch_load_b32 v1, off, off offset:304
	v_wmma_i32_16x16x16_iu4 v[28:35], v[8:9], v[66:67], v[28:35] neg_lo:[1,1,0]
	v_perm_b32 v8, v68, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[10:11], v[246:247], v[28:35] neg_lo:[1,1,0]
	v_perm_b32 v10, v63, v59, 0xc0c0004
	v_mov_b32_e32 v247, v52
	v_dual_mov_b32 v156, v48 :: v_dual_mov_b32 v155, v47
	v_wmma_i32_16x16x16_iu4 v[28:35], v[12:13], v[248:249], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v8, v10, 16, v8
	v_perm_b32 v10, v216, v194, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:308
	scratch_load_b32 v2, off, off offset:316
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:332
	scratch_load_b32 v3, off, off offset:336
	v_lshl_or_b32 v1, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:348
	scratch_load_b32 v5, off, off offset:360
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v5, v3, 0xc0c0004
	v_perm_b32 v5, v180, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v0, v3, 16, v2
	v_perm_b32 v2, v74, v197, 0xc0c0004
	v_perm_b32 v3, v108, v70, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v5
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v131, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v9, v3, 16, v2
	v_perm_b32 v2, v16, v6, 0xc0c0004
	v_perm_b32 v3, v130, v57, 0xc0c0004
	v_mov_b32_e32 v131, v67
	v_dual_mov_b32 v151, v65 :: v_dual_mov_b32 v150, v64
	v_mov_b32_e32 v246, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v11, v3, 16, v2
	v_perm_b32 v2, v17, v4, 0xc0c0004
	v_perm_b32 v3, v46, v39, 0xc0c0004
	v_perm_b32 v4, v60, v55, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[28:35], v[36:37], v[246:247], v[28:35] neg_lo:[1,1,0]
	v_mov_b32_e32 v130, v66
	v_mov_b32_e32 v58, v119
	v_lshl_or_b32 v13, v3, 16, v2
	v_lshl_or_b32 v12, v5, 16, v4
	ds_load_u8 v2, v38 offset:4672
	ds_load_u8 v3, v38 offset:4800
	ds_load_u8 v4, v38 offset:4816
	ds_load_u8 v5, v38 offset:4832
	ds_load_u8 v15, v38 offset:4688
	ds_load_u8 v51, v38 offset:4704
	v_wmma_i32_16x16x16_iu4 v[28:35], v[40:41], v[240:241], v[28:35] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v68, off, off offset:764
	scratch_load_b32 v67, off, off offset:760
	scratch_load_b32 v66, off, off offset:756
	scratch_load_b32 v108, off, off offset:752
	v_wmma_i32_16x16x16_iu4 v[28:35], v[42:43], v[47:48], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[44:45], v[150:151], v[28:35] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v38 offset:4928
	ds_load_u8 v17, v38 offset:5056
	ds_load_u8 v52, v38 offset:5072
	ds_load_u8 v54, v38 offset:4944
	ds_load_u8 v59, v38 offset:4960
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v182, v28
	v_cvt_f32_i32_e32 v65, v29
	v_cvt_f32_i32_e32 v190, v30
	v_cvt_f32_i32_e32 v64, v31
	v_cvt_f32_i32_e32 v76, v32
	v_cvt_f32_i32_e32 v73, v33
	v_cvt_f32_i32_e32 v166, v34
	v_cvt_f32_i32_e32 v45, v35
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v3, v3, v17, 0xc0c0004
	ds_load_u8 v17, v38 offset:4160
	ds_load_u8 v28, v38 offset:4288
	ds_load_u8 v61, v38 offset:4304
	ds_load_u8 v63, v38 offset:4320
	ds_load_u8 v69, v38 offset:4176
	ds_load_u8 v70, v38 offset:4192
	v_lshl_or_b32 v37, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:512
	scratch_load_b32 v3, off, off offset:556
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v17, v28, 0xc0c0004
	ds_load_u8 v28, v38 offset:4416
	ds_load_u8 v29, v38 offset:4544
	ds_load_u8 v77, v38 offset:4560
	ds_load_u8 v81, v38 offset:4576
	ds_load_u8 v86, v38 offset:4432
	ds_load_u8 v104, v38 offset:4448
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v28, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v28, 16, v17
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:572
	scratch_load_b32 v6, off, off offset:588
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v6, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:632
	scratch_load_b32 v16, off, off offset:640
	v_lshl_or_b32 v40, v3, 16, v2
	scratch_load_b32 v2, off, off offset:668 ; 4-byte Folded Reload
	v_perm_b32 v3, v227, v223, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v17, v6, v16, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:652
	scratch_load_b32 v16, off, off offset:660
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v237, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v3, 16, v2
	v_perm_b32 v2, v191, v208, 0xc0c0004
	v_perm_b32 v3, v154, v238, 0xc0c0004
	v_lshl_or_b32 v44, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v28, v6, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v28, 16, v17
	v_perm_b32 v17, v212, v210, 0xc0c0004
	v_perm_b32 v28, v206, v204, 0xc0c0004
	v_lshl_or_b32 v41, v28, 16, v17
	v_perm_b32 v17, v140, v138, 0xc0c0004
	v_perm_b32 v28, v137, v251, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v17
	v_wmma_i32_16x16x16_iu4 v[28:35], v[0:1], v[143:144], v[19:26] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:128
	scratch_load_b32 v1, off, off offset:248
	v_wmma_i32_16x16x16_iu4 v[28:35], v[8:9], v[130:131], v[28:35] neg_lo:[1,1,0]
	v_perm_b32 v8, v122, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[10:11], v[128:129], v[28:35] neg_lo:[1,1,0]
	v_perm_b32 v10, v177, v120, 0xc0c0004
	v_dual_mov_b32 v119, v150 :: v_dual_mov_b32 v120, v151
	v_wmma_i32_16x16x16_iu4 v[28:35], v[12:13], v[248:249], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v8, v10, 16, v8
	v_perm_b32 v10, v218, v195, 0xc0c0004
	v_perm_b32 v12, v134, v123, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[28:35], v[36:37], v[246:247], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[39:40], v[240:241], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[41:42], v[47:48], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[43:44], v[150:151], v[28:35] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v60, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v56, v29
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v29, v167, v164, 0xc0c0004
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v46, v30
	v_cvt_f32_i32_e32 v44, v31
	v_cvt_f32_i32_e32 v57, v32
	v_cvt_f32_i32_e32 v42, v33
	v_cvt_f32_i32_e32 v55, v34
	v_cvt_f32_i32_e32 v41, v35
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:252
	scratch_load_b32 v2, off, off offset:256
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:272
	scratch_load_b32 v3, off, off offset:280
	v_lshl_or_b32 v1, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:288
	scratch_load_b32 v6, off, off offset:300
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v6, v3, 0xc0c0004
	v_perm_b32 v6, v187, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v0, v3, 16, v2
	v_perm_b32 v2, v132, v198, 0xc0c0004
	v_perm_b32 v3, v125, v126, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v6
	v_perm_b32 v6, v99, v85, 0xc0c0004
	v_dual_mov_b32 v125, v246 :: v_dual_mov_b32 v126, v247
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v9, v3, 16, v2
	v_perm_b32 v2, v7, v72, 0xc0c0004
	v_perm_b32 v3, v133, v101, 0xc0c0004
	v_lshl_or_b32 v12, v12, 16, v6
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v6, v86, v77, 0xc0c0004
	v_dual_mov_b32 v121, v155 :: v_dual_mov_b32 v122, v156
	v_lshl_or_b32 v11, v3, 16, v2
	v_perm_b32 v2, v27, v14, 0xc0c0004
	v_perm_b32 v3, v49, v62, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v101, off, off offset:100
	scratch_load_b32 v62, off, off offset:740
	v_mov_b32_e32 v72, v135
	v_lshl_or_b32 v13, v3, 16, v2
	v_perm_b32 v2, v15, v4, 0xc0c0004
	v_perm_b32 v3, v54, v52, 0xc0c0004
	v_perm_b32 v4, v69, v61, 0xc0c0004
	scratch_load_b32 v61, off, off offset:112 ; 4-byte Folded Reload
	v_lshl_or_b32 v17, v3, 16, v2
	v_lshl_or_b32 v16, v6, 16, v4
	ds_load_u8 v2, v38 offset:5712
	ds_load_u8 v3, v38 offset:5840
	ds_load_u8 v4, v38 offset:5856
	ds_load_u8 v6, v38 offset:5728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v38 offset:6096
	ds_load_u8 v14, v38 offset:5968
	ds_load_u8 v27, v38 offset:5984
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v14, v3, 0xc0c0004
	ds_load_u8 v14, v38 offset:5200
	ds_load_u8 v15, v38 offset:5328
	ds_load_u8 v48, v38 offset:5344
	ds_load_u8 v49, v38 offset:5216
	v_lshl_or_b32 v37, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:540
	scratch_load_b32 v3, off, off offset:636
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v14, v15, 0xc0c0004
	ds_load_u8 v15, v38 offset:5456
	ds_load_u8 v28, v38 offset:5584
	ds_load_u8 v52, v38 offset:5600
	ds_load_u8 v54, v38 offset:5472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v15, v28, 0xc0c0004
	v_perm_b32 v28, v245, v243, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v36, v15, 16, v14
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:664
	scratch_load_b32 v7, off, off offset:676
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v7, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:692
	scratch_load_b32 v14, off, off offset:696
	v_lshl_or_b32 v15, v3, 16, v2
	v_perm_b32 v2, v234, v207, 0xc0c0004
	v_perm_b32 v3, v188, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v14, v7, v14, 0xc0c0004
	v_lshl_or_b32 v14, v28, 16, v14
	v_perm_b32 v28, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v29, 16, v28
	v_wmma_i32_16x16x16_iu4 v[28:35], v[0:1], v[143:144], v[19:26] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:132
	scratch_load_b32 v1, off, off offset:184
	v_wmma_i32_16x16x16_iu4 v[28:35], v[8:9], v[130:131], v[28:35] neg_lo:[1,1,0]
	v_perm_b32 v8, v142, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[10:11], v[128:129], v[28:35] neg_lo:[1,1,0]
	v_perm_b32 v10, v139, v141, 0xc0c0004
	v_mov_b32_e32 v139, v109
	v_wmma_i32_16x16x16_iu4 v[28:35], v[12:13], v[248:249], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v8, v10, 16, v8
	v_perm_b32 v10, v220, v200, 0xc0c0004
	v_perm_b32 v12, v136, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[28:35], v[16:17], v[125:126], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[36:37], v[240:241], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[14:15], v[121:122], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[39:40], v[119:120], v[28:35] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v43, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v40, v30
	v_cvt_f32_i32_e32 v15, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v39, v29
	v_cvt_f32_i32_e32 v16, v31
	v_cvt_f32_i32_e32 v14, v33
	v_cvt_f32_i32_e32 v36, v35
	v_cvt_f32_i32_e32 v37, v34
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:192
	scratch_load_b32 v2, off, off offset:196
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:208
	scratch_load_b32 v3, off, off offset:216
	v_lshl_or_b32 v1, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:224
	scratch_load_b32 v7, off, off offset:232
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v7, v3, 0xc0c0004
	v_perm_b32 v7, v189, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v0, v3, 16, v2
	scratch_load_b32 v3, off, off offset:340 ; 4-byte Folded Reload
	v_perm_b32 v2, v152, v199, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v7
	v_perm_b32 v7, v116, v94, 0xc0c0004
	v_dual_mov_b32 v115, v128 :: v_dual_mov_b32 v116, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v7
	v_perm_b32 v7, v104, v81, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v148, v3, 0xc0c0004
	v_lshl_or_b32 v9, v3, 16, v2
	scratch_load_b32 v3, off, off offset:392 ; 4-byte Folded Reload
	v_perm_b32 v2, v145, v117, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v147, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v3, 16, v2
	scratch_load_b32 v3, off, off offset:448 ; 4-byte Folded Reload
	v_perm_b32 v2, v235, v18, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v50, v3, 0xc0c0004
	v_lshl_or_b32 v13, v3, 16, v2
	scratch_load_b32 v3, off, off offset:492 ; 4-byte Folded Reload
	v_perm_b32 v2, v51, v5, 0xc0c0004
	v_perm_b32 v5, v70, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v7, 16, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v54, v52, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v59, v3, 0xc0c0004
	v_lshl_or_b32 v18, v3, 16, v2
	scratch_load_b32 v3, off, off offset:628 ; 4-byte Folded Reload
	v_perm_b32 v2, v6, v4, 0xc0c0004
	v_perm_b32 v4, v49, v48, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[47:54], v[0:1], v[143:144], v[19:26] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:172
	scratch_load_b32 v1, off, off offset:176
	v_wmma_i32_16x16x16_iu4 v[47:54], v[8:9], v[130:131], v[47:54] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[47:54], v[10:11], v[115:116], v[47:54] neg_lo:[1,1,0]
	scratch_load_b32 v11, off, off offset:168 ; 4-byte Folded Reload
	ds_load_u8 v10, v109
	ds_load_u8 v8, v222
	v_wmma_i32_16x16x16_iu4 v[47:54], v[12:13], v[248:249], v[47:54] neg_lo:[1,1,0]
	v_dual_mov_b32 v12, v150 :: v_dual_mov_b32 v13, v151
	s_waitcnt vmcnt(3)
	v_perm_b32 v3, v27, v3, 0xc0c0004
	v_lshl_or_b32 v27, v5, 16, v4
	ds_load_u8 v4, v38 offset:6368
	ds_load_u8 v5, v38 offset:6240
	v_lshl_or_b32 v28, v3, 16, v2
	ds_load_u8 v2, v38 offset:6880
	ds_load_u8 v3, v38 offset:6752
	s_waitcnt vmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	ds_load_u8 v5, v38 offset:6624
	ds_load_u8 v6, v38 offset:6496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v38 offset:7008
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v209, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v29, v5, 16, v4
	v_perm_b32 v4, v217, v213, 0xc0c0004
	v_perm_b32 v5, v205, v203, 0xc0c0004
	v_lshl_or_b32 v30, v3, 16, v2
	scratch_load_b32 v2, off, off offset:648 ; 4-byte Folded Reload
	v_perm_b32 v3, v229, v236, 0xc0c0004
	v_lshl_or_b32 v31, v5, 16, v4
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:180
	scratch_load_b32 v2, off, off offset:188
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:160
	scratch_load_b32 v3, off, off offset:164
	v_lshl_or_b32 v0, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v153
	ds_load_u8 v4, v192
	ds_load_u8 v5, v108
	ds_load_u8 v6, v66
	ds_load_u8 v7, v67
	ds_load_u8 v9, v68
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:72
	scratch_load_b32 v66, off, off offset:64
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v11, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[19:26], v[0:1], v[143:144], v[19:26] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:236
	scratch_load_b32 v1, off, off offset:240
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:204
	scratch_load_b32 v2, off, off offset:244
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:212
	scratch_load_b32 v3, off, off offset:220
	v_lshl_or_b32 v0, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	scratch_load_b32 v3, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[19:26], v[0:1], v[130:131], v[19:26] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:284
	scratch_load_b32 v1, off, off offset:292
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:260
	scratch_load_b32 v2, off, off offset:296
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:264
	scratch_load_b32 v3, off, off offset:268
	v_lshl_or_b32 v0, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	scratch_load_b32 v3, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_perm_b32 v3, v3, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[19:26], v[0:1], v[115:116], v[19:26] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:344
	scratch_load_b32 v1, off, off offset:352
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:312
	scratch_load_b32 v2, off, off offset:356
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:320
	scratch_load_b32 v3, off, off offset:324
	v_lshl_or_b32 v0, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	scratch_load_b32 v3, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_perm_b32 v3, v3, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[19:26], v[0:1], v[248:249], v[19:26] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:408
	scratch_load_b32 v1, off, off offset:416
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:372
	scratch_load_b32 v2, off, off offset:420
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:380
	scratch_load_b32 v3, off, off offset:384
	v_lshl_or_b32 v0, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	scratch_load_b32 v3, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_perm_b32 v3, v3, v7, 0xc0c0004
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v7, v221, s[12:15], 0 offen
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v221, 2, v221
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v1, v3, 16, v2
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[19:26], v[0:1], v[125:126], v[19:26] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:472
	scratch_load_b32 v1, off, off offset:476
	v_wmma_i32_16x16x16_iu4 v[47:54], v[17:18], v[125:126], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[47:54], v[27:28], v[240:241], v[47:54] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[47:54], v[29:30], v[121:122], v[47:54] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:436
	scratch_load_b32 v2, off, off offset:480
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:440
	scratch_load_b32 v3, off, off offset:444
	v_lshl_or_b32 v0, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	scratch_load_b32 v3, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_perm_b32 v3, v3, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[19:26], v[0:1], v[240:241], v[19:26] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:516
	scratch_load_b32 v1, off, off offset:520
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:484
	scratch_load_b32 v2, off, off offset:524
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:488
	scratch_load_b32 v3, off, off offset:496
	v_lshl_or_b32 v0, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	scratch_load_b32 v3, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[19:26], v[0:1], v[121:122], v[19:26] neg_lo:[1,1,0]
	scratch_load_b32 v0, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v253, v0, 0xc0c0004
	scratch_load_b32 v0, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v239, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:644
	scratch_load_b32 v1, off, off offset:656
	s_waitcnt vmcnt(0)
	v_perm_b32 v11, v0, v1, 0xc0c0004
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v0, v8, 0xc0c0004
	v_lshl_or_b32 v0, v10, 16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v1, 16, v11
	v_wmma_i32_16x16x16_iu4 v[19:26], v[0:1], v[12:13], v[19:26] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v13, s9, v165
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[47:54], v[31:32], v[119:120], v[47:54] neg_lo:[1,1,0]
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s9, s9, s48
	s_cmp_lg_u32 s53, 0
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v12, v19
	v_cvt_f32_i32_e32 v0, v20
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v8, v13, s[40:43], 0 offen
	buffer_load_u16 v9, v13, s[40:43], 0 offen offset:4
	buffer_load_u16 v10, v13, s[40:43], 0 offen offset:8
	buffer_load_u16 v11, v13, s[40:43], 0 offen offset:12
	buffer_load_u16 v17, v13, s[40:43], 0 offen offset:16
	buffer_load_u16 v18, v13, s[40:43], 0 offen offset:20
	buffer_load_u16 v19, v13, s[40:43], 0 offen offset:24
	buffer_load_u16 v20, v13, s[40:43], 0 offen offset:28
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v2, v21
	v_mul_f32_e32 v21, v7, v176
	v_cvt_f32_i32_e32 v1, v22
	v_cvt_f32_i32_e32 v29, v53
	scratch_load_b32 v53, off, off offset:748 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v4, v23
	scratch_load_b32 v23, off, off offset:88 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v3, v24
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v24, off, off offset:92
	scratch_load_b32 v71, off, off offset:84
	scratch_load_b32 v68, off, off offset:76
	v_cvt_f32_i32_e32 v6, v25
	scratch_load_b32 v25, off, off offset:80 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v5, v26
	scratch_load_b32 v26, off, off offset:68 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v35, v47
	v_cvt_f32_i32_e32 v34, v48
	v_cvt_f32_i32_e32 v33, v49
	v_cvt_f32_i32_e32 v31, v51
	v_cvt_f32_i32_e32 v30, v52
	v_cvt_f32_i32_e32 v32, v50
	v_cvt_f32_i32_e32 v28, v54
	v_mul_f32_e32 v0, v7, v0
	v_mul_f32_e32 v2, v7, v2
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v1, v7, v1 :: v_dual_lshlrev_b32 v8, 16, v8
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(13)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v113, v21, v8 :: v_dual_lshlrev_b32 v8, 16, v9
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v175
	v_dual_mul_f32 v21, v7, v118 :: v_dual_fmac_f32 v114, v9, v8
	v_mul_f32_e32 v9, v7, v174
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v8, 16, v10
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(11)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v111, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v11
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v173
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v112, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v9, v7, v172 :: v_dual_lshlrev_b32 v8, 16, v17
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(9)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v75, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v18
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v171
	v_dual_mov_b32 v115, v75 :: v_dual_fmac_f32 v110, v9, v8
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v9, v7, v170 :: v_dual_lshlrev_b32 v8, 16, v19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v107, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v9, off, off offset:140
	scratch_load_b32 v104, off, off offset:104
	scratch_load_b32 v22, off, off offset:96
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v9, v7, v9 :: v_dual_lshlrev_b32 v8, 16, v20
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v58, v9, v8
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v8, v13, s[40:43], 0 offen offset:32
	buffer_load_u16 v9, v13, s[40:43], 0 offen offset:36
	buffer_load_u16 v10, v13, s[40:43], 0 offen offset:40
	buffer_load_u16 v11, v13, s[40:43], 0 offen offset:44
	buffer_load_u16 v17, v13, s[40:43], 0 offen offset:48
	buffer_load_u16 v18, v13, s[40:43], 0 offen offset:52
	buffer_load_u16 v19, v13, s[40:43], 0 offen offset:56
	buffer_load_u16 v20, v13, s[40:43], 0 offen offset:60
	v_mov_b32_e32 v119, v58
	scratch_load_b32 v58, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v105, v21, v8 :: v_dual_lshlrev_b32 v8, 16, v9
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v159
	v_dual_mul_f32 v21, v7, v211 :: v_dual_fmac_f32 v106, v9, v8
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v9, v7, v160 :: v_dual_lshlrev_b32 v8, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v103, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	scratch_load_b32 v9, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v9, v7, v9 :: v_dual_lshlrev_b32 v8, 16, v11
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v104, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	scratch_load_b32 v9, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v8, 16, v17
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v7, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v101, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	scratch_load_b32 v9, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v9, v7, v9 :: v_dual_lshlrev_b32 v8, 16, v18
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v102, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	scratch_load_b32 v9, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v9, v7, v9 :: v_dual_lshlrev_b32 v8, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v231, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	scratch_load_b32 v9, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v9, v7, v9 :: v_dual_lshlrev_b32 v8, 16, v20
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v100, v9, v8
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v8, v13, s[40:43], 0 offen offset:64
	buffer_load_u16 v9, v13, s[40:43], 0 offen offset:68
	buffer_load_u16 v10, v13, s[40:43], 0 offen offset:72
	buffer_load_u16 v11, v13, s[40:43], 0 offen offset:76
	buffer_load_u16 v17, v13, s[40:43], 0 offen offset:80
	buffer_load_u16 v18, v13, s[40:43], 0 offen offset:84
	buffer_load_u16 v19, v13, s[40:43], 0 offen offset:88
	buffer_load_u16 v20, v13, s[40:43], 0 offen offset:92
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v97, v21, v8 :: v_dual_lshlrev_b32 v8, 16, v9
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v233
	v_dual_mul_f32 v21, v7, v182 :: v_dual_fmac_f32 v98, v9, v8
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v9, v7, v184 :: v_dual_lshlrev_b32 v8, 16, v10
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v95, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v11
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v242
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v96, v9, v8 :: v_dual_mul_f32 v9, v7, v146
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v8, 16, v17
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v93, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v18
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v193
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v61, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v19
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v91, v9, v8
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v20
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v244
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v92, v9, v8
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v8, v13, s[40:43], 0 offen offset:96
	buffer_load_u16 v9, v13, s[40:43], 0 offen offset:100
	buffer_load_u16 v10, v13, s[40:43], 0 offen offset:104
	buffer_load_u16 v11, v13, s[40:43], 0 offen offset:108
	buffer_load_u16 v17, v13, s[40:43], 0 offen offset:112
	buffer_load_u16 v18, v13, s[40:43], 0 offen offset:116
	buffer_load_u16 v19, v13, s[40:43], 0 offen offset:120
	buffer_load_u16 v20, v13, s[40:43], 0 offen offset:124
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v89, v21, v8 :: v_dual_lshlrev_b32 v8, 16, v9
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v65
	scratch_load_b32 v65, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v90, v9, v8 :: v_dual_mul_f32 v9, v7, v190
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v8, 16, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v88, v9, v8
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v9, v7, v64 :: v_dual_lshlrev_b32 v8, 16, v11
	scratch_load_b32 v64, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v87, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v17
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v226, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v9, v7, v73 :: v_dual_lshlrev_b32 v8, 16, v18
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v179, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v19
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v166
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v83, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v9, v7, v45 :: v_dual_lshlrev_b32 v8, 16, v20
	scratch_load_b32 v45, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v84, v9, v8
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v8, v13, s[40:43], 0 offen offset:128
	buffer_load_u16 v9, v13, s[40:43], 0 offen offset:132
	buffer_load_u16 v10, v13, s[40:43], 0 offen offset:136
	buffer_load_u16 v11, v13, s[40:43], 0 offen offset:140
	buffer_load_u16 v17, v13, s[40:43], 0 offen offset:144
	buffer_load_u16 v18, v13, s[40:43], 0 offen offset:148
	buffer_load_u16 v19, v13, s[40:43], 0 offen offset:152
	buffer_load_u16 v20, v13, s[40:43], 0 offen offset:156
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v21, v7, v60
	scratch_load_b32 v60, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v82, v21, v8
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v8, 16, v9
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v56
	v_mul_f32_e32 v21, v7, v43
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:44
	scratch_load_b32 v56, off, off offset:724
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v219, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v10
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v46
	scratch_load_b32 v46, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v22, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v9, v7, v44 :: v_dual_lshlrev_b32 v8, 16, v11
	scratch_load_b32 v44, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v80, v9, v8
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v8, 16, v17
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v57
	scratch_load_b32 v57, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v78, v9, v8
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v8, 16, v18
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v42
	scratch_load_b32 v42, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v79, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v19
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v55
	scratch_load_b64 v[54:55], off, off offset:712 ; 8-byte Folded Reload
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v23, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v9, v7, v41 :: v_dual_lshlrev_b32 v8, 16, v20
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v24, v9, v8
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v8, v13, s[40:43], 0 offen offset:160
	buffer_load_u16 v9, v13, s[40:43], 0 offen offset:164
	buffer_load_u16 v10, v13, s[40:43], 0 offen offset:168
	buffer_load_u16 v11, v13, s[40:43], 0 offen offset:172
	buffer_load_u16 v17, v13, s[40:43], 0 offen offset:176
	buffer_load_u16 v18, v13, s[40:43], 0 offen offset:180
	buffer_load_u16 v19, v13, s[40:43], 0 offen offset:184
	buffer_load_u16 v20, v13, s[40:43], 0 offen offset:188
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v25, v21, v8 :: v_dual_lshlrev_b32 v8, 16, v9
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v39
	scratch_load_b32 v39, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v71, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v10
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v40
	scratch_load_b32 v40, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v67, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v11
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v68, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v9, v7, v15 :: v_dual_lshlrev_b32 v8, 16, v17
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v26, v9, v8
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v8, 16, v18
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v14
	v_mul_f32_e32 v18, v7, v35
	scratch_load_b32 v35, off, off          ; 4-byte Folded Reload
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v163, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v19
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v65, v9, v8
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v8, 16, v20
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v36
	scratch_load_b32 v36, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v66, v9, v8
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v8, v13, s[40:43], 0 offen offset:192
	buffer_load_u16 v9, v13, s[40:43], 0 offen offset:196
	buffer_load_u16 v10, v13, s[40:43], 0 offen offset:200
	buffer_load_u16 v11, v13, s[40:43], 0 offen offset:204
	buffer_load_u16 v14, v13, s[40:43], 0 offen offset:208
	buffer_load_u16 v15, v13, s[40:43], 0 offen offset:212
	buffer_load_u16 v16, v13, s[40:43], 0 offen offset:216
	buffer_load_u16 v17, v13, s[40:43], 0 offen offset:220
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v46, v18, v8
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v8, 16, v9
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v34
	scratch_load_b32 v34, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v225, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v10
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v33
	scratch_load_b32 v33, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v44, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v9, v7, v32 :: v_dual_lshlrev_b32 v8, 16, v11
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:24
	scratch_load_b32 v37, off, off offset:8
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v45, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v31, off, off offset:40
	scratch_load_b32 v41, off, off offset:32
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v8, 16, v14
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v31, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v15
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v30
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v43, v9, v8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v9, v7, v29 :: v_dual_lshlrev_b32 v8, 16, v16
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v41, v9, v8 :: v_dual_lshlrev_b32 v8, 16, v17
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v9, v7, v28
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v42, v9, v8
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v8, v13, s[40:43], 0 offen offset:224
	buffer_load_u16 v9, v13, s[40:43], 0 offen offset:228
	buffer_load_u16 v10, v13, s[40:43], 0 offen offset:232
	buffer_load_u16 v11, v13, s[40:43], 0 offen offset:236
	buffer_load_u16 v14, v13, s[40:43], 0 offen offset:240
	buffer_load_u16 v15, v13, s[40:43], 0 offen offset:244
	buffer_load_u16 v16, v13, s[40:43], 0 offen offset:248
	buffer_load_u16 v13, v13, s[40:43], 0 offen offset:252
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v12, v7, v12
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v32, v12, v8
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v8, 16, v9
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v34, v0, v8
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v0, 16, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v40, v2, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:108
	scratch_load_b32 v55, off, off offset:720
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v11
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v33, v1, v0 :: v_dual_lshlrev_b32 v0, 16, v14
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v1, v7, v4 :: v_dual_add_nc_u32 v2, s50, v2
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v39, v1, v0 :: v_dual_lshlrev_b32 v0, 16, v15
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v1, v7, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v37, v1, v0
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v1, v7, v6 :: v_dual_lshlrev_b32 v0, 16, v16
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v36, v1, v0
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v0, v7, v5
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v1, 16, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v35, v0, v1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_clause 0x3                            ; 20-byte Folded Reload
	scratch_load_b64 v[48:49], off, off offset:768
	scratch_load_b32 v49, off, off offset:784
	scratch_load_b32 v50, off, off offset:788
	scratch_load_b32 v51, off, off offset:792
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge9
	.loc	1 196 1 is_stmt 1               ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 808
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 54
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.private_seg_size, 808
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21252
; TotalNumSgprs: 56
; NumVgprs: 256
; ScratchSize: 808
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 56
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 808
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 206
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
