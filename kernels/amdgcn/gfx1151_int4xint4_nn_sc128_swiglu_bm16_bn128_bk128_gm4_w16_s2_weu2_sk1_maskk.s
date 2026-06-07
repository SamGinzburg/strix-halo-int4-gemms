	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
	v_mov_b32_e32 v114, v0
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshlrev_b32_e32 v13, 1, v114
	v_and_b32_e32 v1, 62, v13
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v3, 4, v114
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v4, 3, v114
	v_lshlrev_b32_e32 v15, 2, v114
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v115, 15, v114
	v_or_b32_e32 v25, 0x3f0, v114
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v2, 0x70, v3
	v_or_b32_e32 v26, 0x7f0, v114
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	v_and_b32_e32 v15, 56, v15
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	v_or_b32_e32 v30, 0xbf0, v114
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_or_b32_e32 v21, 0xff0, v114
	v_or_b32_e32 v22, 0x13f0, v114
	v_rcp_iflag_f32_e32 v0, s7
	v_or_b32_e32 v23, 0x17f0, v114
	v_or_b32_e32 v24, 0x1bf0, v114
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v33, 0, v3
	v_or_b32_e32 v31, 0x1ff0, v114
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v16, 56, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s7, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v13, v13, v16
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v32, 0, v13
	v_lshl_or_b32 v13, v115, 6, v15
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s16, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s20, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s20
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s17, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s17
	v_readfirstlane_b32 s17, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v0, 5, v114
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s20
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s5, s7
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s6, s6, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s19, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s6, s19, s6
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s18, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s6, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s7, s5, s17
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s34, s27, 1
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s4, 0x7f
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s6, s7, s17
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s18, s3, 6
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s34, v4, v[2:3]
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s19, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s20, s6, s20
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v8, s18, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s5, s21, 31
.Ltmp15:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[6:7], null, s19, v0, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s20
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v9, s18, v4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s5, 25
.Ltmp17:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s22, s34, s18
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s6, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s23, s21, s4
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s19, v8
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s5, 64, v8
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s6, s19, v9
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 64, v9
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s35, s23, 7
.Ltmp21:
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s26, s22, v5
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s16, s33, s19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s21, 0x7f
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v6, s18, s16, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, s5, vcc_lo
	s_and_b32 s6, s4, s6
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v7, s27, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v9, 0x80000000, v7, vcc_lo
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v14, v6, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b128 v[5:8], v5, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	s_mov_b32 s6, -1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s21, 0xff
                                        ; implicit-def: $vgpr3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(2)
	ds_store_b16 v32, v14 offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v33, v[5:8]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[9:12] offset:8192
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v3, 0x3f0, v114
	v_or_b32_e32 v5, 0x7f0, v114
	v_or_b32_e32 v6, 0xbf0, v114
	v_or_b32_e32 v7, 0xff0, v114
	v_or_b32_e32 v8, 0x13f0, v114
	v_or_b32_e32 v9, 0x17f0, v114
	v_or_b32_e32 v10, 0x1bf0, v114
	v_or_b32_e32 v11, 0x1f70, v115
	v_or_b32_e32 v12, 0x1ff0, v114
	s_mov_b32 s6, 0
.LBB0_2:                                ; %Flow1969
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	v_xor_b32_e32 v14, 8, v13
	v_xor_b32_e32 v15, 16, v13
	v_xor_b32_e32 v16, 24, v13
	v_xor_b32_e32 v17, 32, v13
	v_xor_b32_e32 v18, 40, v13
	v_xor_b32_e32 v19, 48, v13
	v_xor_b32_e32 v20, 56, v13
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v28, 0, v13
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v244, 0
	s_load_b64 s[24:25], s[0:1], 0x20
	v_mov_b32_e32 v48, 0
	v_bfe_u32 v134, v114, 4, 1
	scratch_store_b32 off, v13, off offset:4 ; 4-byte Folded Spill
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v29, 0, v15
	v_mov_b32_e32 v248, 0
	scratch_store_b32 off, v13, off         ; 4-byte Folded Spill
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v14, 0, v14
	v_mov_b32_e32 v121, 0
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v15, 0, v16
	scratch_store_b32 off, v13, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v13, 0
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v27, 0, v17
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v44, 0, v18
	scratch_store_b32 off, v13, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v13, 0
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v45, 0, v19
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v46, 0, v20
	scratch_store_b32 off, v13, off offset:20 ; 4-byte Folded Spill
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v200, 0
	scratch_store_b32 off, v13, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v62, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v57, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s1, s35, -1
	scratch_store_b32 off, v13, off offset:24 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	v_dual_mov_b32 v62, 0 :: v_dual_lshlrev_b32 v3, 1, v4
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v4, s19, v4
	s_lshl_b32 s20, s7, 8
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v3, s3, 7, v3
	s_add_i32 s3, s20, s34
	s_lshl_b32 s21, s17, 8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:628
	scratch_store_b32 off, v134, off offset:720
	s_sub_i32 s3, s3, s21
	s_lshl_b32 s22, s7, 7
	s_sub_i32 s7, s20, s21
	s_add_i32 s45, s18, 64
	s_mov_b32 s18, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v4, 0x81, v3
	v_add_nc_u32_e32 v3, 0x80, v3
	s_lshl_b32 s17, s17, 7
	v_sub_nc_u32_e32 v5, s19, v1
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v197, 0
	v_mul_lo_u32 v4, s27, v4
	v_mul_lo_u32 v3, s27, v3
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v215, 0
	v_mov_b32_e32 v54, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v193, 0
	v_add3_u32 v4, v4, s22, v2
	v_add3_u32 v2, v3, s22, v2
	s_mov_b32 s22, s16
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v247, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v76, s17, v4
	v_subrev_nc_u32_e32 v3, s17, v2
	s_mov_b32 s17, s16
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v0, s33, v0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v243, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[0:1], null, s19, v0, v[1:2]
	s_mov_b32 s19, s16
	v_dual_mov_b32 v13, 0 :: v_dual_lshlrev_b32 v6, 1, v134
	v_add_nc_u32_e32 v56, 0, v115
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v195, 0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[0:1], off offset:636
	scratch_store_b32 off, v31, off offset:752
	v_add_nc_u32_e32 v0, 0, v25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:644
	scratch_store_b32 off, v26, off offset:744
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v0, 0, v26
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:648
	scratch_store_b32 off, v30, off offset:748
	v_add_nc_u32_e32 v0, 0, v30
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:652
	scratch_store_b32 off, v21, off offset:724
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v0, 0, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:656
	scratch_store_b32 off, v22, off offset:728
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v0, 0, v22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:660
	scratch_store_b32 off, v23, off offset:732
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v0, 0, v23
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:664
	scratch_store_b32 off, v24, off offset:736
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v0, 0, v24
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v53, 0
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v31
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v241, 0
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:632
	scratch_store_b32 off, v25, off offset:740
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_mov_b32_e32 v189, 0
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:624
	scratch_store_b32 off, v115, off offset:716
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v5, s33, v115
	v_mov_b32_e32 v239, 0
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v59, 0
	v_mul_lo_u32 v5, s35, v5
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v233, 0
	v_lshlrev_b32_e32 v75, 1, v5
	v_dual_mov_b32 v4, s16 :: v_dual_mov_b32 v5, s17
	v_dual_mov_b32 v6, s18 :: v_dual_mov_b32 v7, s19
	v_dual_mov_b32 v8, s20 :: v_dual_mov_b32 v9, s21
	v_dual_mov_b32 v10, s22 :: v_dual_mov_b32 v11, s23
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[4:7], off offset:676
	scratch_store_b128 off, v[8:11], off offset:692
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v210, 0
	v_mov_b32_e32 v164, 0
	v_mov_b32_e32 v206, 0
	v_mov_b32_e32 v160, 0
	v_mov_b32_e32 v204, 0
	v_mov_b32_e32 v158, 0
	v_mov_b32_e32 v154, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v202, 0
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v150, 0
	v_mov_b32_e32 v148, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s0, s1, 1
	s_lshl_b32 s6, s27, 2
	s_lshl_b32 s44, s27, 7
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v114, off offset:712
	scratch_store_b32 off, v0, off offset:44
	scratch_store_b32 off, v33, off offset:708
	scratch_store_b32 off, v27, off offset:592
	scratch_store_b32 off, v44, off offset:596
	scratch_store_b32 off, v45, off offset:600
	scratch_store_b32 off, v46, off offset:604
	scratch_store_b32 off, v28, off offset:608
	scratch_store_b32 off, v14, off offset:612
	scratch_store_b32 off, v29, off offset:616
	scratch_store_b32 off, v15, off offset:48
	scratch_store_b32 off, v32, off offset:620
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	s_clause 0x16                           ; 92-byte Folded Spill
	scratch_store_b32 off, v8, off offset:8
	scratch_store_b32 off, v18, off offset:4
	scratch_store_b32 off, v17, off
	scratch_store_b32 off, v12, off offset:12
	scratch_store_b32 off, v7, off offset:20
	scratch_store_b32 off, v6, off offset:16
	scratch_store_b32 off, v5, off offset:24
	scratch_store_b32 off, v13, off offset:104
	scratch_store_b32 off, v57, off offset:100
	scratch_store_b32 off, v54, off offset:96
	scratch_store_b32 off, v58, off offset:36
	scratch_store_b32 off, v248, off offset:92
	scratch_store_b32 off, v40, off offset:88
	scratch_store_b32 off, v41, off offset:84
	scratch_store_b32 off, v47, off offset:80
	scratch_store_b32 off, v48, off offset:76
	scratch_store_b32 off, v49, off offset:72
	scratch_store_b32 off, v50, off offset:32
	scratch_store_b32 off, v51, off offset:68
	scratch_store_b32 off, v52, off offset:64
	scratch_store_b32 off, v215, off offset:60
	scratch_store_b32 off, v53, off offset:56
	scratch_store_b32 off, v55, off offset:52
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	scratch_load_b64 v[5:6], off, off offset:636 ; 8-byte Folded Reload
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s0, s0, -1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(1)
	v_cmp_lt_i32_e32 vcc_lo, s45, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v5
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v56 offset:640
	ds_load_u8 v9, v56 offset:512
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[107:110], off, off offset:676
	scratch_load_b128 v[111:114], off, off offset:692
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[34:35], v28 offset:16384
	ds_load_b64 v[36:37], v14 offset:16384
	ds_load_b64 v[32:33], v29 offset:16384
	ds_load_b64 v[28:29], v27 offset:16384
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v56 offset:896
	ds_load_u8 v10, v56 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:128
	ds_load_u8 v11, v56
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v56 offset:1664
	ds_load_u8 v9, v56 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:384
	ds_load_u8 v12, v56 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v56 offset:1920
	ds_load_u8 v10, v56 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:1152
	ds_load_u8 v11, v56 offset:1024
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v56 offset:2688
	ds_load_u8 v9, v56 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:1408
	ds_load_u8 v12, v56 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v56 offset:2944
	ds_load_u8 v10, v56 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:2176
	ds_load_u8 v11, v56 offset:2048
	v_lshl_or_b32 v22, v9, 16, v0
	ds_load_u8 v0, v56 offset:3712
	ds_load_u8 v9, v56 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:2432
	ds_load_u8 v12, v56 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v11, 16, v10
	ds_load_u8 v9, v56 offset:3968
	ds_load_u8 v10, v56 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:3200
	ds_load_u8 v11, v56 offset:3072
	v_lshl_or_b32 v24, v9, 16, v0
	ds_load_u8 v0, v56 offset:4736
	ds_load_u8 v9, v56 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:3456
	ds_load_u8 v12, v56 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v11, 16, v10
	ds_load_u8 v9, v56 offset:4992
	ds_load_u8 v10, v56 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:4224
	ds_load_u8 v11, v56 offset:4096
	v_lshl_or_b32 v26, v9, 16, v0
	ds_load_u8 v0, v56 offset:5760
	ds_load_u8 v9, v56 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:4480
	ds_load_u8 v12, v56 offset:4352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v11, 16, v10
	ds_load_u8 v9, v56 offset:6016
	ds_load_u8 v10, v56 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:5248
	ds_load_u8 v11, v56 offset:5120
	v_lshl_or_b32 v39, v9, 16, v0
	ds_load_u8 v0, v56 offset:6784
	ds_load_u8 v9, v56 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:5504
	ds_load_u8 v12, v56 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v11, 16, v10
	ds_load_u8 v9, v56 offset:7040
	ds_load_u8 v10, v56 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:6272
	ds_load_u8 v11, v56 offset:6144
	v_lshl_or_b32 v41, v9, 16, v0
	ds_load_u8 v0, v56 offset:7808
	ds_load_u8 v9, v56 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:6528
	ds_load_u8 v12, v56 offset:6400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v11, 16, v10
	ds_load_u8 v9, v56 offset:8064
	ds_load_u8 v10, v56 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:7296
	ds_load_u8 v11, v56 offset:7168
	v_lshl_or_b32 v43, v9, 16, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:7552
	ds_load_u8 v12, v56 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v11, 16, v10
	s_waitcnt vmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[34:35], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[32:33], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[30:31], v0 offset:16384
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[30:31], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[22:23], v46 offset:16384
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[28:29], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[26:27], v44 offset:16384
	ds_load_b64 v[24:25], v45 offset:16384
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[42:43], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	ds_load_u8 v0, v56 offset:8832
	ds_load_u8 v9, v56 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v56 offset:9088
	ds_load_u8 v10, v56 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:8320
	ds_load_u8 v11, v56 offset:8192
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v56 offset:9856
	ds_load_u8 v9, v56 offset:9728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:8576
	ds_load_u8 v12, v56 offset:8448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v56 offset:10112
	ds_load_u8 v10, v56 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:9344
	ds_load_u8 v11, v56 offset:9216
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v56 offset:10880
	ds_load_u8 v9, v56 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:9600
	ds_load_u8 v12, v56 offset:9472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v56 offset:11136
	ds_load_u8 v10, v56 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:10368
	ds_load_u8 v11, v56 offset:10240
	v_lshl_or_b32 v39, v9, 16, v0
	ds_load_u8 v0, v56 offset:11904
	ds_load_u8 v9, v56 offset:11776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:10624
	ds_load_u8 v12, v56 offset:10496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v11, 16, v10
	ds_load_u8 v9, v56 offset:12160
	ds_load_u8 v10, v56 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:11392
	ds_load_u8 v11, v56 offset:11264
	v_lshl_or_b32 v41, v9, 16, v0
	ds_load_u8 v0, v56 offset:12928
	ds_load_u8 v9, v56 offset:12800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:11648
	ds_load_u8 v12, v56 offset:11520
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v11, 16, v10
	ds_load_u8 v9, v56 offset:13184
	ds_load_u8 v10, v56 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:12416
	ds_load_u8 v11, v56 offset:12288
	v_lshl_or_b32 v43, v9, 16, v0
	ds_load_u8 v0, v56 offset:13952
	ds_load_u8 v9, v56 offset:13824
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:12672
	ds_load_u8 v12, v56 offset:12544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v11, 16, v10
	ds_load_u8 v9, v56 offset:14208
	ds_load_u8 v10, v56 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:13440
	ds_load_u8 v11, v56 offset:13312
	v_lshl_or_b32 v45, v9, 16, v0
	ds_load_u8 v0, v56 offset:14976
	ds_load_u8 v9, v56 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:13696
	ds_load_u8 v12, v56 offset:13568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v11, 16, v10
	ds_load_u8 v9, v56 offset:15232
	ds_load_u8 v10, v56 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:14464
	ds_load_u8 v11, v56 offset:14336
	v_lshl_or_b32 v47, v9, 16, v0
	ds_load_u8 v0, v56 offset:16000
	ds_load_u8 v9, v56 offset:15872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:14720
	ds_load_u8 v12, v56 offset:14592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v11, 16, v10
	ds_load_u8 v9, v56 offset:16256
	ds_load_u8 v10, v56 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:15488
	ds_load_u8 v11, v56 offset:15360
	v_lshl_or_b32 v49, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:15744
	ds_load_u8 v12, v56 offset:15616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[34:35], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[32:33], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[30:31], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[42:43], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	ds_load_u8 v0, v56 offset:656
	ds_load_u8 v9, v56 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v56 offset:912
	ds_load_u8 v10, v56 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:16
	ds_load_u8 v11, v56 offset:144
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v56 offset:1680
	ds_load_u8 v9, v56 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v56 offset:400
	ds_load_u8 v12, v56 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v56 offset:1936
	ds_load_u8 v10, v56 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:1168
	ds_load_u8 v11, v56 offset:1040
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v56 offset:2704
	ds_load_u8 v9, v56 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:1424
	ds_load_u8 v12, v56 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v56 offset:2960
	ds_load_u8 v10, v56 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:2192
	ds_load_u8 v11, v56 offset:2064
	v_lshl_or_b32 v39, v9, 16, v0
	ds_load_u8 v0, v56 offset:3728
	ds_load_u8 v9, v56 offset:3600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:2448
	ds_load_u8 v12, v56 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v11, 16, v10
	ds_load_u8 v9, v56 offset:3984
	ds_load_u8 v10, v56 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:3216
	ds_load_u8 v11, v56 offset:3088
	v_lshl_or_b32 v41, v9, 16, v0
	ds_load_u8 v0, v56 offset:4752
	ds_load_u8 v9, v56 offset:4624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:3472
	ds_load_u8 v12, v56 offset:3344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v11, 16, v10
	ds_load_u8 v9, v56 offset:5008
	ds_load_u8 v10, v56 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:4240
	ds_load_u8 v11, v56 offset:4112
	v_lshl_or_b32 v43, v9, 16, v0
	ds_load_u8 v0, v56 offset:5776
	ds_load_u8 v9, v56 offset:5648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:4496
	ds_load_u8 v12, v56 offset:4368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v11, 16, v10
	ds_load_u8 v9, v56 offset:6032
	ds_load_u8 v10, v56 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:5264
	ds_load_u8 v11, v56 offset:5136
	v_lshl_or_b32 v45, v9, 16, v0
	ds_load_u8 v0, v56 offset:6800
	ds_load_u8 v9, v56 offset:6672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:5520
	ds_load_u8 v12, v56 offset:5392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v11, 16, v10
	ds_load_u8 v9, v56 offset:7056
	ds_load_u8 v10, v56 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:6288
	ds_load_u8 v11, v56 offset:6160
	v_lshl_or_b32 v47, v9, 16, v0
	ds_load_u8 v0, v56 offset:7824
	ds_load_u8 v9, v56 offset:7696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:6544
	ds_load_u8 v12, v56 offset:6416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v11, 16, v10
	ds_load_u8 v9, v56 offset:8080
	ds_load_u8 v10, v56 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:7312
	ds_load_u8 v11, v56 offset:7184
	v_lshl_or_b32 v49, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:7568
	ds_load_u8 v12, v56 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[34:35], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[32:33], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[30:31], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[42:43], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v0, v56 offset:8848
	ds_load_u8 v9, v56 offset:8720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v56 offset:9104
	ds_load_u8 v10, v56 offset:8976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:8336
	ds_load_u8 v11, v56 offset:8208
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v56 offset:9872
	ds_load_u8 v9, v56 offset:9744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:8592
	ds_load_u8 v12, v56 offset:8464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v56 offset:10128
	ds_load_u8 v10, v56 offset:10000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:9360
	ds_load_u8 v11, v56 offset:9232
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v56 offset:10896
	ds_load_u8 v9, v56 offset:10768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:9616
	ds_load_u8 v12, v56 offset:9488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v56 offset:11152
	ds_load_u8 v10, v56 offset:11024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:10384
	ds_load_u8 v11, v56 offset:10256
	v_lshl_or_b32 v39, v9, 16, v0
	ds_load_u8 v0, v56 offset:11920
	ds_load_u8 v9, v56 offset:11792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:10640
	ds_load_u8 v12, v56 offset:10512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v11, 16, v10
	ds_load_u8 v9, v56 offset:12176
	ds_load_u8 v10, v56 offset:12048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:11408
	ds_load_u8 v11, v56 offset:11280
	v_lshl_or_b32 v41, v9, 16, v0
	ds_load_u8 v0, v56 offset:12944
	ds_load_u8 v9, v56 offset:12816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:11664
	ds_load_u8 v12, v56 offset:11536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v11, 16, v10
	ds_load_u8 v9, v56 offset:13200
	ds_load_u8 v10, v56 offset:13072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:12432
	ds_load_u8 v11, v56 offset:12304
	v_lshl_or_b32 v43, v9, 16, v0
	ds_load_u8 v0, v56 offset:13968
	ds_load_u8 v9, v56 offset:13840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:12688
	ds_load_u8 v12, v56 offset:12560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v11, 16, v10
	ds_load_u8 v9, v56 offset:14224
	ds_load_u8 v10, v56 offset:14096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:13456
	ds_load_u8 v11, v56 offset:13328
	v_lshl_or_b32 v45, v9, 16, v0
	ds_load_u8 v0, v56 offset:14992
	ds_load_u8 v9, v56 offset:14864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:13712
	ds_load_u8 v12, v56 offset:13584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v11, 16, v10
	ds_load_u8 v9, v56 offset:15248
	ds_load_u8 v10, v56 offset:15120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:14480
	ds_load_u8 v11, v56 offset:14352
	v_lshl_or_b32 v47, v9, 16, v0
	ds_load_u8 v0, v56 offset:16016
	ds_load_u8 v9, v56 offset:15888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:14736
	ds_load_u8 v12, v56 offset:14608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v11, 16, v10
	ds_load_u8 v9, v56 offset:16272
	ds_load_u8 v10, v56 offset:16144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:15504
	ds_load_u8 v11, v56 offset:15376
	v_lshl_or_b32 v49, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:15760
	ds_load_u8 v12, v56 offset:15632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[34:35], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[32:33], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[30:31], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[42:43], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v0, v56 offset:672
	ds_load_u8 v9, v56 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v56 offset:928
	ds_load_u8 v10, v56 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:32
	ds_load_u8 v11, v56 offset:160
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v56 offset:1696
	ds_load_u8 v9, v56 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v56 offset:416
	ds_load_u8 v12, v56 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v56 offset:1952
	ds_load_u8 v10, v56 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:1184
	ds_load_u8 v11, v56 offset:1056
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v56 offset:2720
	ds_load_u8 v9, v56 offset:2592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:1440
	ds_load_u8 v12, v56 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v56 offset:2976
	ds_load_u8 v10, v56 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:2208
	ds_load_u8 v11, v56 offset:2080
	v_lshl_or_b32 v39, v9, 16, v0
	ds_load_u8 v0, v56 offset:3744
	ds_load_u8 v9, v56 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:2464
	ds_load_u8 v12, v56 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v11, 16, v10
	ds_load_u8 v9, v56 offset:4000
	ds_load_u8 v10, v56 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:3232
	ds_load_u8 v11, v56 offset:3104
	v_lshl_or_b32 v41, v9, 16, v0
	ds_load_u8 v0, v56 offset:4768
	ds_load_u8 v9, v56 offset:4640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:3488
	ds_load_u8 v12, v56 offset:3360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v11, 16, v10
	ds_load_u8 v9, v56 offset:5024
	ds_load_u8 v10, v56 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:4256
	ds_load_u8 v11, v56 offset:4128
	v_lshl_or_b32 v43, v9, 16, v0
	ds_load_u8 v0, v56 offset:5792
	ds_load_u8 v9, v56 offset:5664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:4512
	ds_load_u8 v12, v56 offset:4384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v11, 16, v10
	ds_load_u8 v9, v56 offset:6048
	ds_load_u8 v10, v56 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:5280
	ds_load_u8 v11, v56 offset:5152
	v_lshl_or_b32 v45, v9, 16, v0
	ds_load_u8 v0, v56 offset:6816
	ds_load_u8 v9, v56 offset:6688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:5536
	ds_load_u8 v12, v56 offset:5408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v11, 16, v10
	ds_load_u8 v9, v56 offset:7072
	ds_load_u8 v10, v56 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:6304
	ds_load_u8 v11, v56 offset:6176
	v_lshl_or_b32 v47, v9, 16, v0
	ds_load_u8 v0, v56 offset:7840
	ds_load_u8 v9, v56 offset:7712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:6560
	ds_load_u8 v12, v56 offset:6432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v11, 16, v10
	ds_load_u8 v9, v56 offset:8096
	ds_load_u8 v10, v56 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:7328
	ds_load_u8 v11, v56 offset:7200
	v_lshl_or_b32 v49, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:7584
	ds_load_u8 v12, v56 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[34:35], v[107:114] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:664
	scratch_load_b32 v18, off, off offset:668
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[36:37], v[9:16] neg_lo:[1,1,0]
	scratch_load_b32 v19, off, off offset:672 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[32:33], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[30:31], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[42:43], v[28:29], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[26:27], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[22:23], v[9:16] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	ds_load_u8 v0, v56 offset:8864
	ds_load_u8 v9, v56 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v56 offset:9120
	ds_load_u8 v10, v56 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:8352
	ds_load_u8 v11, v56 offset:8224
	v_lshl_or_b32 v39, v9, 16, v0
	ds_load_u8 v0, v56 offset:9888
	ds_load_u8 v9, v56 offset:9760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:8608
	ds_load_u8 v12, v56 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v11, 16, v10
	ds_load_u8 v0, v56 offset:10144
	ds_load_u8 v10, v56 offset:10016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v0, 0xc0c0004
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	scratch_load_b32 v0, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v41, v10, 16, v9
	ds_load_u8 v9, v56 offset:10912
	ds_load_u8 v10, v56 offset:10784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(0)
	v_cmp_lt_i32_e32 vcc_lo, s45, v0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v56 offset:48
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v12, v56 offset:9376
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s45, s45, 64
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e32 v11, 0x80000000, v3, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v3, s44, v3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[5:8], v11, s[28:31], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v11, v56 offset:9248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	ds_load_u8 v12, v56 offset:9632
	ds_load_u8 v13, v56 offset:9504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v12, 16, v11
	ds_load_u8 v10, v56 offset:11168
	ds_load_u8 v11, v56 offset:11040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:10400
	ds_load_u8 v12, v56 offset:10272
	v_lshl_or_b32 v43, v10, 16, v9
	ds_load_u8 v9, v56 offset:11936
	ds_load_u8 v10, v56 offset:11808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:10656
	ds_load_u8 v13, v56 offset:10528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v12, 16, v11
	ds_load_u8 v10, v56 offset:12192
	ds_load_u8 v11, v56 offset:12064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:11424
	ds_load_u8 v12, v56 offset:11296
	v_lshl_or_b32 v45, v10, 16, v9
	ds_load_u8 v9, v56 offset:12960
	ds_load_u8 v10, v56 offset:12832
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:11680
	ds_load_u8 v13, v56 offset:11552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v12, 16, v11
	ds_load_u8 v10, v56 offset:13216
	ds_load_u8 v11, v56 offset:13088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:12448
	ds_load_u8 v12, v56 offset:12320
	v_lshl_or_b32 v47, v10, 16, v9
	ds_load_u8 v9, v56 offset:13984
	ds_load_u8 v10, v56 offset:13856
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:12704
	ds_load_u8 v13, v56 offset:12576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v12, 16, v11
	ds_load_u8 v10, v56 offset:14240
	ds_load_u8 v11, v56 offset:14112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:13472
	ds_load_u8 v12, v56 offset:13344
	v_lshl_or_b32 v49, v10, 16, v9
	ds_load_u8 v9, v56 offset:15008
	ds_load_u8 v10, v56 offset:14880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:13728
	ds_load_u8 v13, v56 offset:13600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v12, 16, v11
	ds_load_u8 v10, v56 offset:15264
	ds_load_u8 v11, v56 offset:15136
	s_waitcnt vmcnt(0)
	scratch_store_b128 off, v[5:8], off offset:304 ; 16-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v6, off, off offset:652
	scratch_load_b32 v7, off, off offset:656
	scratch_load_b32 v8, off, off offset:660
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:14496
	ds_load_u8 v12, v56 offset:14368
	v_lshl_or_b32 v51, v10, 16, v9
	ds_load_u8 v9, v56 offset:16032
	ds_load_u8 v10, v56 offset:15904
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:14752
	ds_load_u8 v13, v56 offset:14624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v12, 16, v11
	ds_load_u8 v10, v56 offset:16288
	ds_load_u8 v11, v56 offset:16160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:15520
	ds_load_u8 v12, v56 offset:15392
	v_lshl_or_b32 v53, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:15776
	ds_load_u8 v13, v56 offset:15648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[34:35], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[42:43], v[32:33], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[30:31], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[50:51], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[52:53], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v5, v9
	scratch_store_b32 off, v5, off offset:268 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v56 offset:688
	ds_load_u8 v10, v56 offset:560
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v5, off offset:264 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v11
	scratch_store_b32 off, v5, off offset:260 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v12
	scratch_store_b32 off, v5, off offset:256 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v13
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:944
	ds_load_u8 v11, v56 offset:816
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v5, off offset:252 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v14
	scratch_store_b32 off, v5, off offset:248 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v15
	scratch_store_b32 off, v5, off offset:244 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v5, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:176
	v_lshl_or_b32 v39, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v11, 0xc0c0004
	ds_load_u8 v11, v56 offset:432
	ds_load_u8 v12, v56 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v11, 16, v0
	ds_load_u8 v0, v56 offset:1712
	ds_load_u8 v9, v56 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v56 offset:1968
	ds_load_u8 v10, v56 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:1200
	ds_load_u8 v11, v56 offset:1072
	v_lshl_or_b32 v41, v9, 16, v0
	ds_load_u8 v0, v56 offset:2736
	ds_load_u8 v9, v56 offset:2608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:1456
	ds_load_u8 v12, v56 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v11, 16, v10
	ds_load_u8 v9, v56 offset:2992
	ds_load_u8 v10, v56 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:2224
	ds_load_u8 v11, v56 offset:2096
	v_lshl_or_b32 v43, v9, 16, v0
	ds_load_u8 v0, v56 offset:3760
	ds_load_u8 v9, v56 offset:3632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:2480
	ds_load_u8 v12, v56 offset:2352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v11, 16, v10
	ds_load_u8 v9, v56 offset:4016
	ds_load_u8 v10, v56 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:3248
	ds_load_u8 v11, v56 offset:3120
	v_lshl_or_b32 v45, v9, 16, v0
	ds_load_u8 v0, v56 offset:4784
	ds_load_u8 v9, v56 offset:4656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:3504
	ds_load_u8 v12, v56 offset:3376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v11, 16, v10
	ds_load_u8 v9, v56 offset:5040
	ds_load_u8 v10, v56 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:4272
	ds_load_u8 v11, v56 offset:4144
	v_lshl_or_b32 v47, v9, 16, v0
	ds_load_u8 v0, v56 offset:5808
	ds_load_u8 v9, v56 offset:5680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:4528
	ds_load_u8 v12, v56 offset:4400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v11, 16, v10
	ds_load_u8 v9, v56 offset:6064
	ds_load_u8 v10, v56 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:5296
	ds_load_u8 v11, v56 offset:5168
	v_lshl_or_b32 v49, v9, 16, v0
	ds_load_u8 v0, v56 offset:6832
	ds_load_u8 v9, v56 offset:6704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:5552
	ds_load_u8 v12, v56 offset:5424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v11, 16, v10
	ds_load_u8 v9, v56 offset:7088
	ds_load_u8 v10, v56 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:6320
	ds_load_u8 v11, v56 offset:6192
	v_lshl_or_b32 v51, v9, 16, v0
	ds_load_u8 v0, v56 offset:7856
	ds_load_u8 v9, v56 offset:7728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:6576
	ds_load_u8 v12, v56 offset:6448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v11, 16, v10
	ds_load_u8 v9, v56 offset:8112
	ds_load_u8 v10, v56 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:7344
	ds_load_u8 v11, v56 offset:7216
	v_lshl_or_b32 v53, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:7600
	ds_load_u8 v12, v56 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[34:35], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[42:43], v[32:33], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[30:31], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[50:51], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[52:53], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	ds_load_u8 v0, v56 offset:8880
	ds_load_u8 v9, v56 offset:8752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v56 offset:9136
	ds_load_u8 v10, v56 offset:9008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:8368
	ds_load_u8 v11, v56 offset:8240
	v_lshl_or_b32 v39, v9, 16, v0
	ds_load_u8 v0, v56 offset:9904
	ds_load_u8 v9, v56 offset:9776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:8624
	ds_load_u8 v12, v56 offset:8496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v11, 16, v10
	ds_load_u8 v9, v56 offset:10160
	ds_load_u8 v10, v56 offset:10032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:9392
	ds_load_u8 v11, v56 offset:9264
	v_lshl_or_b32 v41, v9, 16, v0
	ds_load_u8 v0, v56 offset:10928
	ds_load_u8 v9, v56 offset:10800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:9648
	ds_load_u8 v12, v56 offset:9520
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v11, 16, v10
	ds_load_u8 v9, v56 offset:11184
	ds_load_u8 v10, v56 offset:11056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:10416
	ds_load_u8 v11, v56 offset:10288
	v_lshl_or_b32 v43, v9, 16, v0
	ds_load_u8 v0, v56 offset:11952
	ds_load_u8 v9, v56 offset:11824
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:10672
	ds_load_u8 v12, v56 offset:10544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v11, 16, v10
	ds_load_u8 v9, v56 offset:12208
	ds_load_u8 v10, v56 offset:12080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:11440
	ds_load_u8 v11, v56 offset:11312
	v_lshl_or_b32 v45, v9, 16, v0
	ds_load_u8 v0, v56 offset:12976
	ds_load_u8 v9, v56 offset:12848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:11696
	ds_load_u8 v12, v56 offset:11568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v11, 16, v10
	ds_load_u8 v9, v56 offset:13232
	ds_load_u8 v10, v56 offset:13104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:12464
	ds_load_u8 v11, v56 offset:12336
	v_lshl_or_b32 v55, v9, 16, v0
	ds_load_u8 v0, v56 offset:14000
	ds_load_u8 v9, v56 offset:13872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:12720
	ds_load_u8 v12, v56 offset:12592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v11, 16, v10
	ds_load_u8 v9, v56 offset:14256
	ds_load_u8 v10, v56 offset:14128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:13488
	ds_load_u8 v11, v56 offset:13360
	v_lshl_or_b32 v58, v9, 16, v0
	ds_load_u8 v0, v56 offset:15024
	ds_load_u8 v9, v56 offset:14896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:13744
	ds_load_u8 v12, v56 offset:13616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v11, 16, v10
	ds_load_u8 v9, v56 offset:15280
	ds_load_u8 v10, v56 offset:15152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:14512
	ds_load_u8 v11, v56 offset:14384
	v_lshl_or_b32 v64, v9, 16, v0
	ds_load_u8 v0, v56 offset:16048
	ds_load_u8 v9, v56 offset:15920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:14768
	ds_load_u8 v12, v56 offset:14640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v11, 16, v10
	ds_load_u8 v9, v56 offset:16304
	ds_load_u8 v10, v56 offset:16176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:15536
	ds_load_u8 v11, v56 offset:15408
	v_lshl_or_b32 v66, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:15792
	ds_load_u8 v12, v56 offset:15664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[34:35], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[42:43], v[32:33], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[30:31], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[54:55], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v5, off offset:240 ; 4-byte Folded Spill
	scratch_load_b32 v5, off, off offset:648 ; 4-byte Folded Reload
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	ds_load_u8 v0, v56 offset:704
	ds_load_u8 v9, v56 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v56 offset:960
	ds_load_u8 v10, v56 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:192
	ds_load_u8 v11, v56 offset:64
	v_lshl_or_b32 v39, v9, 16, v0
	ds_load_u8 v0, v56 offset:1728
	ds_load_u8 v9, v56 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:448
	ds_load_u8 v12, v56 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v11, 16, v10
	ds_load_u8 v9, v56 offset:1984
	ds_load_u8 v10, v56 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:1216
	ds_load_u8 v11, v56 offset:1088
	v_lshl_or_b32 v41, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:1472
	ds_load_u8 v12, v56 offset:1344
	ds_load_u8 v0, v56 offset:2752
	ds_load_u8 v9, v56 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v40, v11, 16, v10
	ds_load_u8 v9, v56 offset:3008
	ds_load_u8 v10, v56 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:2240
	ds_load_u8 v11, v56 offset:2112
	v_lshl_or_b32 v43, v9, 16, v0
	ds_load_u8 v0, v56 offset:3776
	ds_load_u8 v9, v56 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:2496
	ds_load_u8 v12, v56 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v11, 16, v10
	ds_load_u8 v9, v56 offset:4032
	ds_load_u8 v10, v56 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:3264
	ds_load_u8 v11, v56 offset:3136
	v_lshl_or_b32 v45, v9, 16, v0
	ds_load_u8 v0, v56 offset:4800
	ds_load_u8 v9, v56 offset:4672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:3520
	ds_load_u8 v12, v56 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v11, 16, v10
	ds_load_u8 v9, v56 offset:5056
	ds_load_u8 v10, v56 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:4288
	ds_load_u8 v11, v56 offset:4160
	v_lshl_or_b32 v55, v9, 16, v0
	ds_load_u8 v0, v56 offset:5824
	ds_load_u8 v9, v56 offset:5696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:4544
	ds_load_u8 v12, v56 offset:4416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v11, 16, v10
	ds_load_u8 v9, v56 offset:6080
	ds_load_u8 v10, v56 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:5312
	ds_load_u8 v11, v56 offset:5184
	v_lshl_or_b32 v58, v9, 16, v0
	ds_load_u8 v0, v56 offset:6848
	ds_load_u8 v9, v56 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:5568
	ds_load_u8 v12, v56 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v11, 16, v10
	ds_load_u8 v9, v56 offset:7104
	ds_load_u8 v10, v56 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:6336
	ds_load_u8 v11, v56 offset:6208
	v_lshl_or_b32 v64, v9, 16, v0
	ds_load_u8 v0, v56 offset:7872
	ds_load_u8 v9, v56 offset:7744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:6592
	ds_load_u8 v12, v56 offset:6464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v11, 16, v10
	ds_load_u8 v9, v56 offset:8128
	ds_load_u8 v10, v56 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:7360
	ds_load_u8 v11, v56 offset:7232
	v_lshl_or_b32 v66, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:7616
	ds_load_u8 v12, v56 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[34:35], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[42:43], v[32:33], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[30:31], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[54:55], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	ds_load_u8 v0, v56 offset:8896
	ds_load_u8 v9, v56 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v56 offset:9152
	ds_load_u8 v10, v56 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:8384
	ds_load_u8 v11, v56 offset:8256
	v_lshl_or_b32 v42, v9, 16, v0
	ds_load_u8 v0, v56 offset:9920
	ds_load_u8 v9, v56 offset:9792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:8640
	ds_load_u8 v12, v56 offset:8512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v11, 16, v10
	ds_load_u8 v9, v56 offset:10176
	ds_load_u8 v10, v56 offset:10048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:9408
	ds_load_u8 v11, v56 offset:9280
	v_lshl_or_b32 v44, v9, 16, v0
	ds_load_u8 v0, v56 offset:10944
	ds_load_u8 v9, v56 offset:10816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:9664
	ds_load_u8 v12, v56 offset:9536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	ds_load_u8 v9, v56 offset:11200
	ds_load_u8 v10, v56 offset:11072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:10432
	ds_load_u8 v11, v56 offset:10304
	v_lshl_or_b32 v55, v9, 16, v0
	ds_load_u8 v0, v56 offset:11968
	ds_load_u8 v9, v56 offset:11840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:10688
	ds_load_u8 v12, v56 offset:10560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v11, 16, v10
	ds_load_u8 v9, v56 offset:12224
	ds_load_u8 v10, v56 offset:12096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:11456
	ds_load_u8 v11, v56 offset:11328
	v_lshl_or_b32 v64, v9, 16, v0
	ds_load_u8 v0, v56 offset:12992
	ds_load_u8 v9, v56 offset:12864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:11712
	ds_load_u8 v12, v56 offset:11584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v11, 16, v10
	ds_load_u8 v9, v56 offset:13248
	ds_load_u8 v10, v56 offset:13120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:12480
	ds_load_u8 v11, v56 offset:12352
	v_lshl_or_b32 v66, v9, 16, v0
	ds_load_u8 v0, v56 offset:14016
	ds_load_u8 v9, v56 offset:13888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:12736
	ds_load_u8 v12, v56 offset:12608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v11, 16, v10
	ds_load_u8 v9, v56 offset:14272
	ds_load_u8 v10, v56 offset:14144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:13504
	ds_load_u8 v11, v56 offset:13376
	v_lshl_or_b32 v68, v9, 16, v0
	ds_load_u8 v0, v56 offset:15040
	ds_load_u8 v9, v56 offset:14912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:13760
	ds_load_u8 v12, v56 offset:13632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v11, 16, v10
	ds_load_u8 v9, v56 offset:15296
	ds_load_u8 v10, v56 offset:15168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:14528
	ds_load_u8 v11, v56 offset:14400
	v_lshl_or_b32 v72, v9, 16, v0
	ds_load_u8 v0, v56 offset:16064
	ds_load_u8 v9, v56 offset:15936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:14784
	ds_load_u8 v12, v56 offset:14656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v11, 16, v10
	ds_load_u8 v9, v56 offset:16320
	ds_load_u8 v10, v56 offset:16192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:15552
	ds_load_u8 v11, v56 offset:15424
	v_lshl_or_b32 v74, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:15808
	ds_load_u8 v12, v56 offset:15680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[34:35], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[54:55], v[32:33], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[30:31], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v56 offset:720
	ds_load_u8 v10, v56 offset:592
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:976
	ds_load_u8 v11, v56 offset:848
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:208
	ds_load_u8 v12, v56 offset:80
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:464
	ds_load_u8 v13, v56 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v12, 16, v11
	ds_load_u8 v11, v56 offset:1744
	ds_load_u8 v12, v56 offset:1616
	v_wmma_i32_16x16x16_iu4 v[79:86], v[9:10], v[34:35], v[107:114] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v9, v56 offset:8912
	ds_load_u8 v10, v56 offset:8784
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:2000
	ds_load_u8 v13, v56 offset:1872
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v56 offset:1232
	ds_load_u8 v14, v56 offset:1104
	v_lshl_or_b32 v12, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v56 offset:1488
	ds_load_u8 v15, v56 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v14, 16, v13
	ds_load_u8 v13, v56 offset:2768
	ds_load_u8 v14, v56 offset:2640
	v_wmma_i32_16x16x16_iu4 v[79:86], v[11:12], v[36:37], v[79:86] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v10, v56 offset:9168
	ds_load_u8 v11, v56 offset:9040
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v56 offset:3024
	ds_load_u8 v15, v56 offset:2896
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:8400
	ds_load_u8 v12, v56 offset:8272
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v56 offset:2256
	ds_load_u8 v16, v56 offset:2128
	v_lshl_or_b32 v14, v14, 16, v13
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v56 offset:2512
	ds_load_u8 v41, v56 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v41, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v16, 16, v15
	ds_load_u8 v15, v56 offset:3792
	ds_load_u8 v16, v56 offset:3664
	v_wmma_i32_16x16x16_iu4 v[79:86], v[13:14], v[32:33], v[79:86] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v12, v56 offset:8656
	ds_load_u8 v13, v56 offset:8528
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v56 offset:4048
	ds_load_u8 v41, v56 offset:3920
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v41, v16, 0xc0c0004
	ds_load_u8 v41, v56 offset:3280
	ds_load_u8 v42, v56 offset:3152
	v_lshl_or_b32 v16, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v56 offset:3536
	ds_load_u8 v43, v56 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v42, 16, v41
	ds_load_u8 v41, v56 offset:4816
	ds_load_u8 v42, v56 offset:4688
	v_wmma_i32_16x16x16_iu4 v[79:86], v[15:16], v[30:31], v[79:86] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v56 offset:5072
	ds_load_u8 v43, v56 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v56 offset:4304
	ds_load_u8 v44, v56 offset:4176
	v_lshl_or_b32 v42, v42, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v56 offset:4560
	ds_load_u8 v45, v56 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v44, 16, v43
	ds_load_u8 v43, v56 offset:5840
	ds_load_u8 v44, v56 offset:5712
	v_wmma_i32_16x16x16_iu4 v[79:86], v[41:42], v[28:29], v[79:86] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v42, v10, 16, v9
	ds_load_u8 v9, v56 offset:9936
	ds_load_u8 v10, v56 offset:9808
	v_lshl_or_b32 v41, v12, 16, v11
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v56 offset:6096
	ds_load_u8 v45, v56 offset:5968
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:10192
	ds_load_u8 v11, v56 offset:10064
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v56 offset:5328
	ds_load_u8 v54, v56 offset:5200
	v_lshl_or_b32 v44, v44, 16, v43
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:9424
	ds_load_u8 v12, v56 offset:9296
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v54, v45, 0xc0c0004
	ds_load_u8 v54, v56 offset:5584
	ds_load_u8 v55, v56 offset:5456
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:9680
	ds_load_u8 v13, v56 offset:9552
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v54, 16, v45
	ds_load_u8 v45, v56 offset:6864
	ds_load_u8 v54, v56 offset:6736
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[79:86], v[43:44], v[26:27], v[79:86] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v44, v10, 16, v9
	ds_load_u8 v9, v56 offset:10960
	ds_load_u8 v10, v56 offset:10832
	v_lshl_or_b32 v43, v12, 16, v11
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v54, v45, 0xc0c0004
	ds_load_u8 v54, v56 offset:7120
	ds_load_u8 v55, v56 offset:6992
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:11216
	ds_load_u8 v11, v56 offset:11088
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v56 offset:6352
	ds_load_u8 v71, v56 offset:6224
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:10448
	ds_load_u8 v12, v56 offset:10320
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v71, v55, 0xc0c0004
	ds_load_u8 v55, v56 offset:6608
	ds_load_u8 v72, v56 offset:6480
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:10704
	ds_load_u8 v13, v56 offset:10576
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v72, v55, 0xc0c0004
	v_lshl_or_b32 v55, v54, 16, v45
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v54, v72, 16, v71
	ds_load_u8 v45, v56 offset:7888
	ds_load_u8 v71, v56 offset:7760
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[79:86], v[54:55], v[24:25], v[79:86] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v55, v10, 16, v9
	ds_load_u8 v9, v56 offset:11984
	ds_load_u8 v10, v56 offset:11856
	v_lshl_or_b32 v54, v12, 16, v11
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v71, v45, 0xc0c0004
	ds_load_u8 v71, v56 offset:8144
	ds_load_u8 v72, v56 offset:8016
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:12240
	ds_load_u8 v11, v56 offset:12112
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v56 offset:7376
	ds_load_u8 v73, v56 offset:7248
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:11472
	ds_load_u8 v12, v56 offset:11344
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	ds_load_u8 v72, v56 offset:7632
	ds_load_u8 v74, v56 offset:7504
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:11728
	ds_load_u8 v13, v56 offset:11600
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v74, v72, 0xc0c0004
	v_lshl_or_b32 v72, v71, 16, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v71, v74, 16, v73
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[79:86], v[71:72], v[22:23], v[79:86] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v79
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v80
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v80, v12, 16, v11
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v81
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v81, v10, 16, v9
	ds_load_u8 v9, v56 offset:13008
	ds_load_u8 v10, v56 offset:12880
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v82
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v83
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v84
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:13264
	ds_load_u8 v11, v56 offset:13136
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v85
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v86
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:12496
	ds_load_u8 v12, v56 offset:12368
	v_lshl_or_b32 v83, v10, 16, v9
	ds_load_u8 v9, v56 offset:14032
	ds_load_u8 v10, v56 offset:13904
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:12752
	ds_load_u8 v13, v56 offset:12624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v12, 16, v11
	ds_load_u8 v10, v56 offset:14288
	ds_load_u8 v11, v56 offset:14160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:13520
	ds_load_u8 v12, v56 offset:13392
	v_lshl_or_b32 v85, v10, 16, v9
	ds_load_u8 v9, v56 offset:15056
	ds_load_u8 v10, v56 offset:14928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:13776
	ds_load_u8 v13, v56 offset:13648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v12, 16, v11
	ds_load_u8 v10, v56 offset:15312
	ds_load_u8 v11, v56 offset:15184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:14544
	ds_load_u8 v12, v56 offset:14416
	v_lshl_or_b32 v87, v10, 16, v9
	ds_load_u8 v9, v56 offset:16080
	ds_load_u8 v10, v56 offset:15952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:14800
	ds_load_u8 v13, v56 offset:14672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v12, 16, v11
	ds_load_u8 v10, v56 offset:16336
	ds_load_u8 v11, v56 offset:16208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:15568
	ds_load_u8 v12, v56 offset:15440
	v_lshl_or_b32 v89, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:15824
	ds_load_u8 v13, v56 offset:15696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v88, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[34:35], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[54:55], v[32:33], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[80:81], v[30:31], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[82:83], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[84:85], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[86:87], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[88:89], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v56 offset:736
	ds_load_u8 v10, v56 offset:608
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:992
	ds_load_u8 v11, v56 offset:864
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:224
	ds_load_u8 v12, v56 offset:96
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:480
	ds_load_u8 v13, v56 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v12, 16, v11
	ds_load_u8 v11, v56 offset:1760
	ds_load_u8 v12, v56 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:2016
	ds_load_u8 v13, v56 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v56 offset:1248
	ds_load_u8 v14, v56 offset:1120
	v_lshl_or_b32 v12, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v56 offset:1504
	ds_load_u8 v15, v56 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v14, 16, v13
	ds_load_u8 v13, v56 offset:2784
	ds_load_u8 v14, v56 offset:2656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v56 offset:3040
	ds_load_u8 v15, v56 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v56 offset:2272
	ds_load_u8 v16, v56 offset:2144
	v_lshl_or_b32 v14, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v56 offset:2528
	ds_load_u8 v80, v56 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v80, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v16, 16, v15
	ds_load_u8 v15, v56 offset:3808
	ds_load_u8 v16, v56 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v56 offset:4064
	ds_load_u8 v80, v56 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v80, v16, 0xc0c0004
	ds_load_u8 v80, v56 offset:3296
	ds_load_u8 v81, v56 offset:3168
	v_lshl_or_b32 v16, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v56 offset:3552
	ds_load_u8 v82, v56 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v81, 16, v80
	ds_load_u8 v80, v56 offset:4832
	ds_load_u8 v81, v56 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v56 offset:5088
	ds_load_u8 v82, v56 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v56 offset:4320
	ds_load_u8 v83, v56 offset:4192
	v_lshl_or_b32 v81, v81, 16, v80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v56 offset:4576
	ds_load_u8 v84, v56 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v83, 16, v82
	ds_load_u8 v82, v56 offset:5856
	ds_load_u8 v83, v56 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v56 offset:6112
	ds_load_u8 v84, v56 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v56 offset:5344
	ds_load_u8 v85, v56 offset:5216
	v_lshl_or_b32 v83, v83, 16, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v56 offset:5600
	ds_load_u8 v86, v56 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v85, 16, v84
	ds_load_u8 v84, v56 offset:6880
	ds_load_u8 v85, v56 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v56 offset:7136
	ds_load_u8 v86, v56 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v56 offset:6368
	ds_load_u8 v87, v56 offset:6240
	v_lshl_or_b32 v85, v85, 16, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v56 offset:6624
	ds_load_u8 v88, v56 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v87, 16, v86
	ds_load_u8 v86, v56 offset:7904
	ds_load_u8 v87, v56 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v56 offset:8160
	ds_load_u8 v88, v56 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v56 offset:7392
	ds_load_u8 v89, v56 offset:7264
	v_lshl_or_b32 v87, v87, 16, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v56 offset:7648
	ds_load_u8 v90, v56 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v86, v89, 16, v88
	v_wmma_i32_16x16x16_iu4 v[89:96], v[9:10], v[34:35], v[107:114] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v9, v56 offset:8928
	ds_load_u8 v10, v56 offset:8800
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[89:96], v[11:12], v[36:37], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[13:14], v[32:33], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[15:16], v[30:31], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[80:81], v[28:29], v[89:96] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:9184
	ds_load_u8 v11, v56 offset:9056
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[89:96], v[82:83], v[26:27], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[84:85], v[24:25], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[86:87], v[22:23], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v89
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:8416
	ds_load_u8 v12, v56 offset:8288
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:572 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v90
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v81, v10, 16, v9
	ds_load_u8 v9, v56 offset:9952
	ds_load_u8 v10, v56 offset:9824
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:568 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v91
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v92
	scratch_store_b32 off, v0, off offset:560 ; 4-byte Folded Spill
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:8672
	ds_load_u8 v13, v56 offset:8544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v93
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v94
	scratch_store_b32 off, v0, off offset:552 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v95
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v96
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_lshl_or_b32 v80, v12, 16, v11
	ds_load_u8 v10, v56 offset:10208
	ds_load_u8 v11, v56 offset:10080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:9440
	ds_load_u8 v12, v56 offset:9312
	v_lshl_or_b32 v91, v10, 16, v9
	ds_load_u8 v9, v56 offset:10976
	ds_load_u8 v10, v56 offset:10848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:9696
	ds_load_u8 v13, v56 offset:9568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v12, 16, v11
	ds_load_u8 v10, v56 offset:11232
	ds_load_u8 v11, v56 offset:11104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:10464
	ds_load_u8 v12, v56 offset:10336
	v_lshl_or_b32 v93, v10, 16, v9
	ds_load_u8 v9, v56 offset:12000
	ds_load_u8 v10, v56 offset:11872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:10720
	ds_load_u8 v13, v56 offset:10592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v12, 16, v11
	ds_load_u8 v10, v56 offset:12256
	ds_load_u8 v11, v56 offset:12128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:11488
	ds_load_u8 v12, v56 offset:11360
	v_lshl_or_b32 v95, v10, 16, v9
	ds_load_u8 v9, v56 offset:13024
	ds_load_u8 v10, v56 offset:12896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:11744
	ds_load_u8 v13, v56 offset:11616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v12, 16, v11
	ds_load_u8 v10, v56 offset:13280
	ds_load_u8 v11, v56 offset:13152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:12512
	ds_load_u8 v12, v56 offset:12384
	v_lshl_or_b32 v97, v10, 16, v9
	ds_load_u8 v9, v56 offset:14048
	ds_load_u8 v10, v56 offset:13920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:12768
	ds_load_u8 v13, v56 offset:12640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v12, 16, v11
	ds_load_u8 v10, v56 offset:14304
	ds_load_u8 v11, v56 offset:14176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:13536
	ds_load_u8 v12, v56 offset:13408
	v_lshl_or_b32 v99, v10, 16, v9
	ds_load_u8 v9, v56 offset:15072
	ds_load_u8 v10, v56 offset:14944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:13792
	ds_load_u8 v13, v56 offset:13664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v12, 16, v11
	ds_load_u8 v10, v56 offset:15328
	ds_load_u8 v11, v56 offset:15200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:14560
	ds_load_u8 v12, v56 offset:14432
	v_lshl_or_b32 v101, v10, 16, v9
	ds_load_u8 v9, v56 offset:16096
	ds_load_u8 v10, v56 offset:15968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:14816
	ds_load_u8 v13, v56 offset:14688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v12, 16, v11
	ds_load_u8 v10, v56 offset:16352
	ds_load_u8 v11, v56 offset:16224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:15584
	ds_load_u8 v12, v56 offset:15456
	v_lshl_or_b32 v103, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:15840
	ds_load_u8 v13, v56 offset:15712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v102, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[80:81], v[34:35], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[92:93], v[32:33], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[94:95], v[30:31], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[96:97], v[28:29], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[26:27], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[102:103], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v56 offset:240
	ds_load_u8 v10, v56 offset:112
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:536 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:532 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:496
	ds_load_u8 v11, v56 offset:368
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:644 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:752
	ds_load_u8 v12, v56 offset:624
	v_lshl_or_b32 v9, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v12, v0
	ds_load_u8 v13, v56 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v11
	ds_load_u8 v11, v56 offset:1264
	ds_load_u8 v12, v56 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:1520
	ds_load_u8 v13, v56 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v56 offset:1776
	ds_load_u8 v14, v56 offset:1648
	v_lshl_or_b32 v11, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v5
	ds_load_u8 v15, v56 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v13
	ds_load_u8 v13, v56 offset:2288
	ds_load_u8 v14, v56 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v56 offset:2544
	ds_load_u8 v15, v56 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v56 offset:2800
	ds_load_u8 v16, v56 offset:2672
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v6
	ds_load_u8 v90, v56 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v90, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	ds_load_u8 v15, v56 offset:3312
	ds_load_u8 v16, v56 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v56 offset:3568
	ds_load_u8 v90, v56 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v90, v16, 0xc0c0004
	ds_load_u8 v90, v56 offset:3824
	ds_load_u8 v91, v56 offset:3696
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v7
	ds_load_u8 v92, v56 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v16, v91, 16, v90
	ds_load_u8 v90, v56 offset:4336
	ds_load_u8 v91, v56 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v56 offset:4592
	ds_load_u8 v92, v56 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v56 offset:4848
	ds_load_u8 v93, v56 offset:4720
	v_lshl_or_b32 v90, v91, 16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v8
	ds_load_u8 v94, v56 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v93, 16, v92
	ds_load_u8 v92, v56 offset:5360
	ds_load_u8 v93, v56 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v56 offset:5616
	ds_load_u8 v94, v56 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v56 offset:5872
	ds_load_u8 v95, v56 offset:5744
	v_lshl_or_b32 v92, v93, 16, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v17
	ds_load_u8 v96, v56 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v95, 16, v94
	ds_load_u8 v94, v56 offset:6384
	ds_load_u8 v95, v56 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v56 offset:6640
	ds_load_u8 v96, v56 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v56 offset:6896
	ds_load_u8 v97, v56 offset:6768
	v_lshl_or_b32 v94, v95, 16, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v18
	ds_load_u8 v98, v56 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v97, 16, v96
	ds_load_u8 v96, v56 offset:7408
	ds_load_u8 v97, v56 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v56 offset:7664
	ds_load_u8 v98, v56 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v56 offset:7920
	ds_load_u8 v99, v56 offset:7792
	v_lshl_or_b32 v105, v97, 16, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v19
	ds_load_u8 v100, v56 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v106, v99, 16, v98
	v_wmma_i32_16x16x16_iu4 v[97:104], v[9:10], v[34:35], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[11:12], v[36:37], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[13:14], v[32:33], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[15:16], v[30:31], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[90:91], v[28:29], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[92:93], v[26:27], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[94:95], v[24:25], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[105:106], v[22:23], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v101
	v_cvt_f32_i32_e32 v96, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v95, v99
	v_cvt_f32_i32_e32 v128, v100
	v_cvt_f32_i32_e32 v97, v97
	scratch_store_b32 off, v9, off offset:588 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v102
	scratch_store_b32 off, v9, off offset:584 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v103
	scratch_store_b32 off, v9, off offset:580 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v104
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v9, off offset:576 ; 4-byte Folded Spill
	ds_load_u8 v9, v56 offset:8432
	ds_load_u8 v10, v56 offset:8304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:8688
	ds_load_u8 v11, v56 offset:8560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:8944
	ds_load_u8 v12, v56 offset:8816
	v_lshl_or_b32 v98, v10, 16, v9
	ds_load_u8 v9, v56 offset:9456
	ds_load_u8 v10, v56 offset:9328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v0 offset:8192
	ds_load_u8 v13, v56 offset:9072
	scratch_load_b32 v0, off, off offset:632 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v12, 16, v11
	ds_load_u8 v10, v56 offset:9712
	ds_load_u8 v11, v56 offset:9584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v56 offset:9968
	ds_load_u8 v12, v56 offset:9840
	v_lshl_or_b32 v100, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v5 offset:8192
	ds_load_u8 v13, v56 offset:10096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[34:35], v[107:114] neg_lo:[1,1,0]
	ds_load_u8 v34, v56 offset:10480
	ds_load_u8 v35, v56 offset:10352
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v56 offset:10736
	ds_load_u8 v36, v56 offset:10608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v56 offset:10992
	ds_load_u8 v37, v56 offset:10864
	v_lshl_or_b32 v34, v35, 16, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v6 offset:8192
	ds_load_u8 v98, v56 offset:11120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v98, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v37, 16, v36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[34:35], v[32:33], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v32, v56 offset:11504
	ds_load_u8 v33, v56 offset:11376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v56 offset:11760
	ds_load_u8 v34, v56 offset:11632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v56 offset:12016
	ds_load_u8 v35, v56 offset:11888
	v_lshl_or_b32 v32, v33, 16, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v7 offset:8192
	ds_load_u8 v36, v56 offset:12144
	v_dual_mov_b32 v7, v4 :: v_dual_mov_b32 v4, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v34
	v_wmma_i32_16x16x16_iu4 v[9:16], v[32:33], v[30:31], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v30, v56 offset:12528
	ds_load_u8 v31, v56 offset:12400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v56 offset:12784
	ds_load_u8 v32, v56 offset:12656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v56 offset:13040
	ds_load_u8 v33, v56 offset:12912
	v_lshl_or_b32 v30, v31, 16, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v8 offset:8192
	ds_load_u8 v34, v56 offset:13168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v33, 16, v32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[28:29], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v28, v56 offset:13552
	ds_load_u8 v29, v56 offset:13424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v56 offset:13808
	ds_load_u8 v30, v56 offset:13680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v56 offset:14064
	ds_load_u8 v31, v56 offset:13936
	v_lshl_or_b32 v28, v29, 16, v28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v17 offset:8192
	ds_load_u8 v32, v56 offset:14192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v31, 16, v30
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[26:27], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v26, v56 offset:14576
	ds_load_u8 v27, v56 offset:14448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v56 offset:14832
	ds_load_u8 v28, v56 offset:14704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v56 offset:15088
	ds_load_u8 v29, v56 offset:14960
	v_lshl_or_b32 v26, v27, 16, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v18 offset:8192
	ds_load_u8 v30, v56 offset:15216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v29, 16, v28
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[24:25], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v24, v56 offset:15600
	ds_load_u8 v25, v56 offset:15472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v56 offset:15856
	ds_load_u8 v26, v56 offset:15728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v56 offset:16112
	ds_load_u8 v27, v56 offset:15984
	v_lshl_or_b32 v24, v25, 16, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v19 offset:8192
	ds_load_u8 v28, v56 offset:16240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v26
	v_wmma_i32_16x16x16_iu4 v[9:16], v[24:25], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v89, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s7, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v88, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v16, s3, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v93, v13
	v_cvt_f32_i32_e32 v94, v14
	v_cvt_f32_i32_e32 v87, v15
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1f
	buffer_load_u16 v5, v9, s[40:43], 0 offen
	buffer_load_u16 v6, v9, s[40:43], 0 offen offset:4
	buffer_load_u16 v8, v9, s[40:43], 0 offen offset:8
	buffer_load_u16 v13, v9, s[40:43], 0 offen offset:12
	buffer_load_u16 v14, v9, s[40:43], 0 offen offset:16
	buffer_load_u16 v15, v9, s[40:43], 0 offen offset:20
	buffer_load_u16 v17, v9, s[40:43], 0 offen offset:24
	buffer_load_u16 v18, v9, s[40:43], 0 offen offset:28
	buffer_load_u16 v70, v9, s[40:43], 0 offen offset:32
	buffer_load_u16 v69, v9, s[40:43], 0 offen offset:36
	buffer_load_u16 v19, v9, s[40:43], 0 offen offset:40
	buffer_load_u16 v255, v9, s[40:43], 0 offen offset:44
	buffer_load_u16 v254, v9, s[40:43], 0 offen offset:48
	buffer_load_u16 v253, v9, s[40:43], 0 offen offset:52
	buffer_load_u16 v252, v9, s[40:43], 0 offen offset:56
	buffer_load_u16 v251, v9, s[40:43], 0 offen offset:60
	buffer_load_u16 v250, v9, s[40:43], 0 offen offset:64
	buffer_load_u16 v249, v9, s[40:43], 0 offen offset:68
	buffer_load_u16 v248, v9, s[40:43], 0 offen offset:72
	buffer_load_u16 v20, v9, s[40:43], 0 offen offset:76
	buffer_load_u16 v21, v9, s[40:43], 0 offen offset:80
	buffer_load_u16 v22, v9, s[40:43], 0 offen offset:84
	buffer_load_u16 v23, v9, s[40:43], 0 offen offset:88
	buffer_load_u16 v24, v9, s[40:43], 0 offen offset:92
	buffer_load_u16 v25, v9, s[40:43], 0 offen offset:96
	buffer_load_u16 v26, v9, s[40:43], 0 offen offset:100
	buffer_load_u16 v27, v9, s[40:43], 0 offen offset:104
	buffer_load_u16 v28, v9, s[40:43], 0 offen offset:108
	buffer_load_u16 v29, v9, s[40:43], 0 offen offset:112
	buffer_load_u16 v30, v9, s[40:43], 0 offen offset:116
	buffer_load_u16 v31, v9, s[40:43], 0 offen offset:120
	buffer_load_u16 v32, v9, s[40:43], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v33, v9, s[40:43], 0 offen offset:128
	buffer_load_u16 v34, v9, s[40:43], 0 offen offset:132
	buffer_load_u16 v229, v9, s[40:43], 0 offen offset:136
	buffer_load_u16 v35, v9, s[40:43], 0 offen offset:140
	buffer_load_u16 v36, v9, s[40:43], 0 offen offset:144
	buffer_load_u16 v37, v9, s[40:43], 0 offen offset:148
	buffer_load_u16 v38, v9, s[40:43], 0 offen offset:152
	buffer_load_u16 v39, v9, s[40:43], 0 offen offset:156
	buffer_load_u16 v40, v9, s[40:43], 0 offen offset:160
	buffer_load_u16 v41, v9, s[40:43], 0 offen offset:164
	buffer_load_u16 v42, v9, s[40:43], 0 offen offset:168
	buffer_load_u16 v43, v9, s[40:43], 0 offen offset:172
	buffer_load_u16 v44, v9, s[40:43], 0 offen offset:176
	buffer_load_u16 v45, v9, s[40:43], 0 offen offset:180
	buffer_load_u16 v46, v9, s[40:43], 0 offen offset:184
	buffer_load_u16 v47, v9, s[40:43], 0 offen offset:188
	buffer_load_u16 v48, v9, s[40:43], 0 offen offset:192
	buffer_load_u16 v49, v9, s[40:43], 0 offen offset:196
	buffer_load_u16 v50, v9, s[40:43], 0 offen offset:200
	buffer_load_u16 v51, v9, s[40:43], 0 offen offset:204
	buffer_load_u16 v52, v9, s[40:43], 0 offen offset:208
	buffer_load_u16 v53, v9, s[40:43], 0 offen offset:212
	buffer_load_u16 v54, v9, s[40:43], 0 offen offset:216
	buffer_load_u16 v55, v9, s[40:43], 0 offen offset:220
	buffer_load_u16 v57, v9, s[40:43], 0 offen offset:224
	buffer_load_u16 v58, v9, s[40:43], 0 offen offset:228
	buffer_load_u16 v63, v9, s[40:43], 0 offen offset:232
	buffer_load_u16 v64, v9, s[40:43], 0 offen offset:236
	buffer_load_u16 v65, v9, s[40:43], 0 offen offset:240
	buffer_load_u16 v215, v9, s[40:43], 0 offen offset:244
	buffer_load_u16 v68, v9, s[40:43], 0 offen offset:248
	buffer_load_u16 v71, v9, s[40:43], 0 offen offset:252
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v9, 0x80000000, v76, vcc_lo
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v90, v10
	v_cvt_f32_i32_e32 v91, v11
	v_cvt_f32_i32_e32 v92, v12
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v1, v75, s[36:39], 0 offen
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1f
	buffer_load_u16 v66, v16, s[40:43], 0 offen
	buffer_load_u16 v67, v16, s[40:43], 0 offen offset:4
	buffer_load_u16 v149, v16, s[40:43], 0 offen offset:8
	buffer_load_u16 v147, v16, s[40:43], 0 offen offset:12
	buffer_load_u16 v146, v16, s[40:43], 0 offen offset:16
	buffer_load_u16 v145, v16, s[40:43], 0 offen offset:20
	buffer_load_u16 v144, v16, s[40:43], 0 offen offset:24
	buffer_load_u16 v143, v16, s[40:43], 0 offen offset:28
	buffer_load_u16 v142, v16, s[40:43], 0 offen offset:32
	buffer_load_u16 v141, v16, s[40:43], 0 offen offset:36
	buffer_load_u16 v140, v16, s[40:43], 0 offen offset:40
	buffer_load_u16 v139, v16, s[40:43], 0 offen offset:44
	buffer_load_u16 v138, v16, s[40:43], 0 offen offset:48
	buffer_load_u16 v137, v16, s[40:43], 0 offen offset:52
	buffer_load_u16 v136, v16, s[40:43], 0 offen offset:56
	buffer_load_u16 v135, v16, s[40:43], 0 offen offset:60
	buffer_load_u16 v134, v16, s[40:43], 0 offen offset:64
	buffer_load_u16 v133, v16, s[40:43], 0 offen offset:68
	buffer_load_u16 v132, v16, s[40:43], 0 offen offset:72
	buffer_load_u16 v131, v16, s[40:43], 0 offen offset:76
	buffer_load_u16 v130, v16, s[40:43], 0 offen offset:80
	buffer_load_u16 v129, v16, s[40:43], 0 offen offset:84
	buffer_load_u16 v127, v16, s[40:43], 0 offen offset:88
	buffer_load_u16 v126, v16, s[40:43], 0 offen offset:92
	buffer_load_u16 v125, v16, s[40:43], 0 offen offset:96
	buffer_load_u16 v124, v16, s[40:43], 0 offen offset:100
	buffer_load_u16 v72, v16, s[40:43], 0 offen offset:104
	buffer_load_u16 v122, v16, s[40:43], 0 offen offset:108
	buffer_load_u16 v73, v16, s[40:43], 0 offen offset:112
	buffer_load_u16 v120, v16, s[40:43], 0 offen offset:116
	buffer_load_u16 v119, v16, s[40:43], 0 offen offset:120
	buffer_load_u16 v118, v16, s[40:43], 0 offen offset:124
	s_clause 0x1d
	buffer_load_u16 v117, v16, s[40:43], 0 offen offset:128
	buffer_load_u16 v116, v16, s[40:43], 0 offen offset:132
	buffer_load_u16 v115, v16, s[40:43], 0 offen offset:136
	buffer_load_u16 v114, v16, s[40:43], 0 offen offset:140
	buffer_load_u16 v113, v16, s[40:43], 0 offen offset:144
	buffer_load_u16 v112, v16, s[40:43], 0 offen offset:148
	buffer_load_u16 v111, v16, s[40:43], 0 offen offset:152
	buffer_load_u16 v110, v16, s[40:43], 0 offen offset:156
	buffer_load_u16 v109, v16, s[40:43], 0 offen offset:160
	buffer_load_u16 v108, v16, s[40:43], 0 offen offset:164
	buffer_load_u16 v107, v16, s[40:43], 0 offen offset:168
	buffer_load_u16 v106, v16, s[40:43], 0 offen offset:172
	buffer_load_u16 v105, v16, s[40:43], 0 offen offset:176
	buffer_load_u16 v104, v16, s[40:43], 0 offen offset:180
	buffer_load_u16 v103, v16, s[40:43], 0 offen offset:184
	buffer_load_u16 v102, v16, s[40:43], 0 offen offset:188
	buffer_load_u16 v101, v16, s[40:43], 0 offen offset:192
	buffer_load_u16 v100, v16, s[40:43], 0 offen offset:196
	buffer_load_u16 v99, v16, s[40:43], 0 offen offset:200
	buffer_load_u16 v98, v16, s[40:43], 0 offen offset:204
	buffer_load_u16 v74, v16, s[40:43], 0 offen offset:208
	buffer_load_u16 v77, v16, s[40:43], 0 offen offset:212
	buffer_load_u16 v78, v16, s[40:43], 0 offen offset:216
	buffer_load_u16 v79, v16, s[40:43], 0 offen offset:220
	buffer_load_u16 v80, v16, s[40:43], 0 offen offset:224
	buffer_load_u16 v81, v16, s[40:43], 0 offen offset:228
	buffer_load_u16 v82, v16, s[40:43], 0 offen offset:232
	buffer_load_u16 v83, v16, s[40:43], 0 offen offset:236
	buffer_load_u16 v84, v16, s[40:43], 0 offen offset:240
	buffer_load_u16 v86, v16, s[40:43], 0 offen offset:244
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1
	buffer_load_u16 v85, v16, s[40:43], 0 offen offset:248
	buffer_load_u16 v16, v16, s[40:43], 0 offen offset:252
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:708
	scratch_load_b128 v[211:214], off, off offset:304
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[211:214]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	ds_store_b128 v0, v[9:12] offset:8192
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v5
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:24
	scratch_load_b32 v0, off, off offset:172
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v9, 16, v1
	v_mov_b32_e32 v1, v4
	scratch_load_b32 v12, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v76, s44, v76
	s_add_i32 s3, s3, s6
	s_add_i32 s7, s7, s6
	s_cmp_lg_u32 s0, 0
	v_add_nc_u32_e32 v75, 2, v75
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	v_mov_b32_e32 v4, v7
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v2, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v6
	scratch_load_b32 v6, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:20
	scratch_load_b32 v0, off, off offset:164
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v4, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v8
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:8
	scratch_load_b32 v0, off, off offset:160
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v13
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v0, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v14
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:104
	scratch_load_b32 v0, off, off offset:152
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v1, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v15
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v13, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off
	scratch_load_b32 v0, off, off offset:144
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v200, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v18
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v70
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v198, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v69
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:4
	scratch_load_b32 v0, off, off offset:228
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v199, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v196, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v255
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v197, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v254
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v5, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v253
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v195, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v252
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v6, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v251
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v7, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v250
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v8, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v249
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v12, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v248
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:612
	scratch_load_b32 v0, off, off offset:288
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v17, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v18, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v21
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v193, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v22
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v194, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v23
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v191, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v192, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v25
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v189, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v26
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v190, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v27
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v188, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v187, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v29
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v186, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v30
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v185, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v31
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:592
	scratch_load_b32 v0, off, off offset:352
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v184, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:608
	scratch_load_b32 v0, off, off offset:444
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v183, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v33
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:616
	scratch_load_b32 v0, off, off offset:440
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v182, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v34
	scratch_load_b32 v0, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v181, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:48
	scratch_load_b32 v0, off, off offset:432
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v180, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v35
	scratch_load_b32 v0, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v179, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v36
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:620
	scratch_load_b32 v0, off, off offset:424
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v178, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v37
	scratch_load_b32 v0, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v177, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v38
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v176, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v39
	scratch_load_b32 v0, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v175, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v40
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v174, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v41
	scratch_load_b32 v0, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v173, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v42
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v172, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v43
	scratch_load_b32 v0, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v171, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v44
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v170, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v45
	scratch_load_b32 v0, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v169, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v46
	scratch_load_b32 v0, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v168, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v47
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:88
	scratch_load_b32 v0, off, off offset:572
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v167, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v48
	scratch_load_b32 v48, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v44, off, off offset:596
	scratch_load_b32 v41, off, off offset:84
	scratch_load_b32 v0, off, off offset:568
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v166, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:600
	scratch_load_b32 v0, off, off offset:564
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v165, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v50
	scratch_load_b32 v50, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v46, off, off offset:604
	scratch_load_b32 v0, off, off offset:560
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v164, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v51
	scratch_load_b32 v51, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v163, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v52
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v162, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v53
	scratch_load_b32 v0, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v161, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v54
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:80
	scratch_load_b32 v0, off, off offset:544
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v160, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v55
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:64
	scratch_load_b32 v0, off, off offset:588
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v159, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v57
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v11, v9, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v158, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v11, v9, v96 :: v_dual_lshlrev_b32 v10, 16, v58
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v157, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v63
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v11, v9, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v156, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v64
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v11, v9, v128
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v155, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v65
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v154, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v215
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v215, off, off offset:60
	scratch_load_b32 v0, off, off offset:584
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v248, off, off offset:92
	scratch_load_b32 v0, off, off offset:580
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v152, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v68
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:36
	scratch_load_b32 v0, off, off offset:576
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v150, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v71
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v54, off, off offset:96
	scratch_load_b32 v53, off, off offset:56
	scratch_load_b32 v0, off, off offset:140
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v148, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v66
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v57, off, off offset:100
	scratch_load_b32 v55, off, off offset:52
	scratch_load_b32 v0, off, off offset:136
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v62, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v67
	scratch_load_b32 v0, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v57, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v149
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v54, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v147
	scratch_load_b32 v0, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v61, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v146
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v58, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v145
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v60, v11, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v144
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:112
	scratch_load_b32 v49, off, off offset:72
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v40, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v143
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v248, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v142
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v47, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v141
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v41, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v140
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v49, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v139
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v48, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v138
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v51, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v137
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v50, v11, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v136
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v215, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v135
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v52, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v134
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v55, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v133
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v53, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v132
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v247, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v131
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v59, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v130
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v245, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v129
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v246, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v127
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v243, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v126
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v244, v11, v10
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v125
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v241, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v124
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v242, v11, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v72
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v239, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v122
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v240, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v73
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v237, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v120
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v238, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v119
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v235, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v118
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v236, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v117
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v233, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v116
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v234, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v115
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v231, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v114
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v232, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v113
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v228, v11, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v112
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v230, v11, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v111
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v9, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v226, v0, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v110
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v227, v10, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v109
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v224, v10, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v108
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v225, v10, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v107
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v222, v10, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v106
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v223, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v105
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v220, v10, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v104
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v221, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v103
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v218, v10, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v102
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v219, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v101
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v216, v10, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v100
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v217, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v99
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v209, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v98
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v210, v10, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v74
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v207, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v77
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v208, v10, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v78
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v205, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v79
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v10, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v10
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v206, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v80
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v9, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v203, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v81
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v9, v90
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v204, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v82
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v9, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v201, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v83
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v9, v92
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v202, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v84
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v9, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v151, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v86
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v9, v94
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v153, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v85
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v9, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v121, v10, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v0, v9, v88
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v9, 16, v16
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v123, v0, v9
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v32, v0 offset:16384
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v5, off offset:24
	scratch_store_b32 off, v7, off offset:20
	scratch_store_b32 off, v6, off offset:16
	scratch_store_b32 off, v12, off offset:12
	scratch_store_b32 off, v8, off offset:8
	scratch_store_b32 off, v18, off offset:4
	scratch_store_b32 off, v17, off
	s_clause 0xd                            ; 56-byte Folded Reload
	scratch_load_b32 v7, off, off offset:724
	scratch_load_b32 v8, off, off offset:728
	scratch_load_b32 v9, off, off offset:732
	scratch_load_b32 v10, off, off offset:736
	scratch_load_b32 v12, off, off offset:752
	scratch_load_b32 v114, off, off offset:712
	scratch_load_b32 v134, off, off offset:720
	scratch_load_b32 v107, off, off offset:44
	scratch_load_b32 v3, off, off offset:740
	scratch_load_b32 v5, off, off offset:744
	scratch_load_b32 v6, off, off offset:748
	scratch_load_b32 v115, off, off offset:716
	scratch_load_b32 v110, off, off offset:40
	scratch_load_b32 v135, off, off offset:28
	v_dual_mov_b32 v108, v13 :: v_dual_mov_b32 v137, v4
	v_dual_mov_b32 v109, v1 :: v_dual_mov_b32 v136, v2
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v11, 0x1f70, v115
.LBB0_6:                                ; %._crit_edge
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v1, 0, 1, s2
	v_add_nc_u32_e32 v56, 0, v12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[79:80], v28 offset:16384
	ds_load_b64 v[77:78], v14 offset:16384
	ds_load_b64 v[75:76], v29 offset:16384
	ds_load_b64 v[73:74], v15 offset:16384
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cmp_ne_u32_e64 s0, 1, v1
	v_mov_b32_e32 v1, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[71:72], v27 offset:16384
	ds_load_b64 v[69:70], v44 offset:16384
	ds_load_b64 v[67:68], v45 offset:16384
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_b64 v[65:66], v46 offset:16384
	v_add_nc_u32_e32 v106, 0, v7
	v_dual_mov_b32 v0, 0 :: v_dual_add_nc_u32 v229, 0, v11
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v63, 0, v10
	v_mov_b32_e32 v104, 0
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v64, 0, v9
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v98, 0, v8
	v_mov_b32_e32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v103, 0, v6
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v141, 0, v5
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v142, 0, v3
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v2, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v1, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_mov_b32 s4, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v6, 0xffffe310, v229
	v_add_nc_u32_e32 v7, 0xffffe290, v229
	v_add_nc_u32_e32 v8, 0xffffe410, v229
	v_add_nc_u32_e32 v11, 0xffffe110, v229
	v_add_nc_u32_e32 v12, 0xffffe090, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v6, v6
	ds_load_u8 v7, v7
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xffffe210, v229
	v_add_nc_u32_e32 v10, 0xffffe390, v229
	v_add_nc_u32_e32 v14, 0xffffe190, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v8, v8
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	ds_load_u8 v10, v10
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v22, 0xffffe710, v229
	v_add_nc_u32_e32 v23, 0xffffe690, v229
	v_add_nc_u32_e32 v20, 0xffffe810, v229
	v_add_nc_u32_e32 v29, 0xffffe510, v229
	v_add_nc_u32_e32 v27, 0xffffe610, v229
	v_add_nc_u32_e32 v28, 0xffffe590, v229
	v_add_nc_u32_e32 v21, 0xffffe790, v229
	v_add_nc_u32_e32 v3, 0xffffeb10, v229
	v_add_nc_u32_e32 v4, 0xffffea90, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v7, 0xffffe490, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v20, v20
	ds_load_u8 v29, v29
	ds_load_u8 v7, v7
	ds_load_u8 v27, v27
	ds_load_u8 v30, v21
	ds_load_u8 v28, v28
	s_mov_b32 s11, s4
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v1, 0xffffec10, v229
	v_add_nc_u32_e32 v15, 0xffffe910, v229
	v_add_nc_u32_e32 v2, 0xffffeb90, v229
	v_add_nc_u32_e32 v16, 0xffffe890, v229
	v_add_nc_u32_e32 v5, 0xffffea10, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v10, v8, 0xc0c0004
	ds_load_u8 v31, v3
	ds_load_u8 v32, v4
	ds_load_u8 v33, v1
	ds_load_u8 v34, v15
	ds_load_u8 v35, v16
	ds_load_u8 v36, v5
	ds_load_u8 v37, v2
	v_perm_b32 v1, v12, v11, 0xc0c0004
	v_perm_b32 v2, v14, v13, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xffffe990, v229
	v_add_nc_u32_e32 v18, 0xffffeba0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v21, v8, 16, v6
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffec20, v229
	v_add_nc_u32_e32 v19, 0xffffe820, v229
	v_add_nc_u32_e32 v24, 0xfffff410, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v12, v7, v29, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v25, 0xfffff390, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v30, v20, 0xc0c0004
	v_lshl_or_b32 v20, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_add_nc_u32 v26, 0xfffff310, v229
	v_mov_b32_e32 v5, s8
	v_perm_b32 v10, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v13, v28, v27, 0xc0c0004
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v4, s7
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	ds_load_u8 v27, v9
	v_lshl_or_b32 v23, v11, 16, v10
	v_lshl_or_b32 v22, v13, 16, v12
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v29, 0xfffff010, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[20:21], v[79:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffef10, v229
	v_add_nc_u32_e32 v21, 0xffffee90, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[22:23], v[77:78], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v23, v20
	ds_load_u8 v30, v21
	v_perm_b32 v21, v32, v31, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v31, 0xffffed10, v229
	v_add_nc_u32_e32 v22, 0xffffef90, v229
	v_add_nc_u32_e32 v20, 0xffffee10, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v32, v37, v33, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v33, 0xffffec90, v229
	v_add_nc_u32_e32 v35, 0xffffed90, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v29, v29
	ds_load_u8 v31, v31
	ds_load_u8 v22, v22
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v27, v27, v36, 0xc0c0004
	ds_load_u8 v36, v20
	ds_load_u8 v35, v35
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v28, 0xfffff290, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v21, v32, 16, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v32, 0xfffff110, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v20, v27, 16, v34
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v27, 0xfffff190, v229
	v_add_nc_u32_e32 v37, 0xfffff210, v229
	v_add_nc_u32_e32 v38, 0xfffff710, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v30, v23, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v30, 0xfffff090, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v26, v26
	ds_load_u8 v28, v28
	ds_load_u8 v24, v24
	ds_load_u8 v32, v32
	ds_load_u8 v30, v30
	ds_load_u8 v25, v25
	ds_load_u8 v34, v37
	ds_load_u8 v27, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[20:21], v[75:76], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v37, 0xfffffa90, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v22, v22, v29, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v31, v33, v31, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v29, 0xfffffc10, v229
	v_add_nc_u32_e32 v33, 0xfffffb90, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	v_lshl_or_b32 v21, v22, 16, v23
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v22, 0xfffff690, v229
	v_add_nc_u32_e32 v23, 0xfffff810, v229
	v_add_nc_u32_e32 v36, 0xfffffb10, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v20, v35, 16, v31
	ds_load_u8 v31, v38
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v30, v30, v32, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v25, 0xfffff610, v229
	v_add_nc_u32_e32 v32, 0xfffff510, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[20:21], v[73:74], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffff590, v229
	v_add_nc_u32_e32 v28, 0xfffff790, v229
	v_add_nc_u32_e32 v20, 0xfffff490, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v23, v23
	ds_load_u8 v32, v32
	ds_load_u8 v28, v28
	ds_load_u8 v35, v20
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v27, v34, 0xc0c0004
	ds_load_u8 v25, v25
	ds_load_u8 v27, v21
	v_lshl_or_b32 v21, v24, 16, v26
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v26, 0xfffff910, v229
	v_add_nc_u32_e32 v34, 0xfffffa10, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v20, v20, 16, v30
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v24, 0xfffff990, v229
	v_add_nc_u32_e32 v30, 0xfffff890, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v22, v22, v31, 0xc0c0004
	ds_load_u8 v31, v36
	ds_load_u8 v36, v37
	ds_load_u8 v29, v29
	ds_load_u8 v26, v26
	ds_load_u8 v30, v30
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v24, v24
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v37, 0xfffffe90, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[20:21], v[71:72], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v38, 0xfffffe10, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v23, v28, v23, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v32, v35, v32, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v35, 0xffffff90, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v27, 0xffffff10, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v21, v23, 16, v22
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v23, 0xfffffd10, v229
	v_add_nc_u32_e32 v22, 0xfffffd90, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v20, v25, 16, v32
	ds_load_u8 v27, v27
	ds_load_u8 v32, v37
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v25, v36, v31, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v31, 0xfffffc90, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v33, v29, 0xc0c0004
	ds_load_u8 v33, v35
	ds_load_u8 v35, v229 offset:16
	ds_load_u8 v23, v23
	ds_load_u8 v31, v31
	ds_load_u8 v36, v38
	ds_load_u8 v22, v22
	v_perm_b32 v26, v30, v26, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v24, v24, v34, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[20:21], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v29, 16, v25
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v30, 0xffffe420, v229
	v_add_nc_u32_e32 v29, 0xffffe220, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v20, v24, 16, v26
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v26, 0xffffe0a0, v229
	v_add_nc_u32_e32 v24, 0xffffe320, v229
	v_add_nc_u32_e32 v34, 0xffffe3a0, v229
	v_add_nc_u32_e32 v25, 0xffffe2a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[20:21], v[67:68], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffe1a0, v229
	v_add_nc_u32_e32 v28, 0xffffe7a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v21, v32, v27, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v32, 0xffffe120, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v23, v31, v23, 0xc0c0004
	ds_load_u8 v30, v30
	ds_load_u8 v31, v32
	ds_load_u8 v29, v29
	ds_load_u8 v32, v34
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v22, v22, v36, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v34, 0xffffe720, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v27, v26
	v_perm_b32 v26, v33, v35, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v35, 0xffffe6a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v24, v24
	ds_load_u8 v33, v25
	v_lshl_or_b32 v25, v22, 16, v23
	ds_load_u8 v22, v34
	ds_load_u8 v23, v35
	ds_load_u8 v19, v19
	ds_load_u8 v28, v28
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v34, 0xffffe520, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v26, v26, 16, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xffffe620, v229
	v_add_nc_u32_e32 v35, 0xffffe5a0, v229
	v_add_nc_u32_e32 v36, 0xffffe4a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v34, v34
	ds_load_u8 v21, v21
	ds_load_u8 v35, v35
	ds_load_u8 v36, v36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[65:66], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v25, 0xffffe430, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v30, v32, v30, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v32, 0xffffeaa0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v20, v20, v29, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v29, 0xffffe920, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v27, v27, v31, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v31, 0xffffea20, v229
	v_add_nc_u32_e32 v26, 0xffffe3b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v24, v33, v24, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v33, 0xffffeb20, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v33, v33
	ds_load_u8 v32, v32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v28, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v28, 0xffffe8a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v23, 0xffffe9a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v37, v29
	ds_load_u8 v38, v28
	ds_load_u8 v31, v31
	ds_load_u8 v39, v23
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v23, v36, v34, 0xc0c0004
	v_perm_b32 v21, v35, v21, 0xc0c0004
	v_lshl_or_b32 v28, v30, 16, v24
	v_lshl_or_b32 v27, v20, 16, v27
	v_lshl_or_b32 v30, v19, 16, v22
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v36, 0xffffef20, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v29, v21, 16, v23
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v34, 0xfffff020, v229
	v_add_nc_u32_e32 v35, 0xffffefa0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v113, v10
	v_cvt_f32_i32_e32 v140, v11
	v_cvt_f32_i32_e32 v112, v13
	v_cvt_f32_i32_e32 v139, v14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v32, v32, v33, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v33, v18, v17, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[79:80], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v39, v31, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v37, 0xffffeea0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[77:78], v[17:24] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v29, 0xffffee20, v229
	v_add_nc_u32_e32 v30, 0xffffeda0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v28, v33, 16, v32
	v_lshl_or_b32 v27, v31, 16, v27
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v31, 0xffffed20, v229
	v_add_nc_u32_e32 v32, 0xffffeca0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v33, v36
	ds_load_u8 v36, v37
	ds_load_u8 v34, v34
	ds_load_u8 v35, v35
	ds_load_u8 v31, v31
	ds_load_u8 v32, v32
	ds_load_u8 v29, v29
	ds_load_u8 v30, v30
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v37, 0xfffff0a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[75:76], v[17:24] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v38, 0xfffff120, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v9, off offset:52 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v12
	v_cvt_f32_i32_e32 v138, v15
	v_cvt_f32_i32_e32 v111, v16
	scratch_store_b32 off, v9, off offset:48 ; 4-byte Folded Spill
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v36, v33, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v36, 0xfffff420, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v35, 0xfffff320, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v32, 0xfffff2a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v30, 0xfffff220, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v28, v34, 16, v33
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v33, 0xfffff1a0, v229
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v27, v29, 16, v31
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v29, 0xfffff3a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v31, v35
	ds_load_u8 v32, v32
	ds_load_u8 v34, v36
	ds_load_u8 v29, v29
	ds_load_u8 v35, v37
	ds_load_u8 v36, v38
	ds_load_u8 v30, v30
	ds_load_u8 v33, v33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[73:74], v[17:24] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v37, 0xfffff620, v229
	v_add_nc_u32_e32 v38, 0xfffff5a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v29, v34, 0xc0c0004
	v_perm_b32 v31, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v36, 0xfffff720, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v33, v30, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v33, 0xfffff6a0, v229
	v_add_nc_u32_e32 v32, 0xfffff820, v229
	v_add_nc_u32_e32 v34, 0xfffff7a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v28, v29, 16, v31
	v_lshl_or_b32 v27, v30, 16, v35
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v29, 0xfffff520, v229
	v_add_nc_u32_e32 v30, 0xfffff4a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v31, v36
	ds_load_u8 v33, v33
	ds_load_u8 v32, v32
	ds_load_u8 v34, v34
	ds_load_u8 v29, v29
	ds_load_u8 v30, v30
	ds_load_u8 v35, v37
	ds_load_u8 v36, v38
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v38, 0xfffff8a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[71:72], v[17:24] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v37, 0xfffffa20, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v31, v33, v31, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v33, 0xfffffc20, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v32, v34, v32, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v34, 0xfffffba0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v30, 0xfffffb20, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v36, 0xfffffaa0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v39, v30
	ds_load_u8 v36, v36
	v_lshl_or_b32 v27, v35, 16, v29
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v29, 0xfffff920, v229
	v_add_nc_u32_e32 v35, 0xfffff9a0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v28, v32, 16, v31
	ds_load_u8 v30, v33
	ds_load_u8 v33, v34
	ds_load_u8 v31, v38
	ds_load_u8 v34, v29
	ds_load_u8 v32, v37
	ds_load_u8 v35, v35
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v38, 0xfffffd20, v229
	v_add_nc_u32_e32 v37, 0xfffffe20, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[69:70], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v29, v36, v39, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v30, v33, v30, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v33, 0xffffffa0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v31, v31, v34, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v34, 0xffffff20, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v35, v32, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v35, 0xfffffea0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v28, v30, 16, v29
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v29, 0xfffffca0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v36, v229 offset:32
	ds_load_u8 v34, v34
	ds_load_u8 v30, v35
	v_lshl_or_b32 v27, v32, 16, v31
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v31, 0xfffffda0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v32, v33
	ds_load_u8 v33, v38
	ds_load_u8 v29, v29
	ds_load_u8 v35, v37
	ds_load_u8 v31, v31
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[67:68], v[17:24] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v27, 0xffffe330, v229
	v_add_nc_u32_e32 v28, 0xffffe2b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v27, v27
	ds_load_u8 v28, v28
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v32, v32, v36, 0xc0c0004
	v_perm_b32 v30, v30, v34, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v34, 0xffffe130, v229
	v_add_nc_u32_e32 v36, 0xffffe0b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v29, v33, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v33, 0xffffe230, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v31, v31, v35, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v35, 0xffffe1b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	ds_load_u8 v34, v34
	ds_load_u8 v36, v36
	ds_load_u8 v33, v33
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v28, 0xffffe830, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v26, v25, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v25, 0xffffe730, v229
	v_add_nc_u32_e32 v26, 0xffffe6b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v36, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v35, 0xffffe7b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	ds_load_u8 v28, v28
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v26, v25, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v25, 0xffffe530, v229
	v_add_nc_u32_e32 v26, 0xffffe4b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v35, v28, 0xc0c0004
	v_lshl_or_b32 v28, v37, 16, v27
	v_lshl_or_b32 v27, v33, 16, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v26, v25, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v25, 0xffffe630, v229
	v_add_nc_u32_e32 v26, 0xffffe5b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v26, v25, 0xc0c0004
	v_lshl_or_b32 v26, v32, 16, v30
	v_lshl_or_b32 v25, v31, 16, v29
	v_lshl_or_b32 v30, v35, 16, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v29, v39, 16, v38
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[65:66], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v18
	v_cvt_f32_i32_e32 v105, v17
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffeb30, v229
	v_add_nc_u32_e32 v18, 0xffffeab0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v104, v20
	scratch_store_b32 off, v9, off offset:40 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffec30, v229
	v_add_nc_u32_e32 v20, 0xffffebb0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v101, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xffffe9b0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v9, off offset:44 ; 4-byte Folded Spill
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[79:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v99, v23
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v100, v24
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[77:78], v[9:16] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v102, v22
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xffffe930, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffe8b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xffffea30, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v18, 0xc0c0004
	v_lshl_or_b32 v18, v19, 16, v17
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffef30, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v21, 16, v20
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffeeb0, v229
	v_add_nc_u32_e32 v21, 0xffffedb0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[75:76], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff030, v229
	v_add_nc_u32_e32 v18, 0xffffefb0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffed30, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xffffecb0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v18, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xffffee30, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff330, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v21, 16, v20
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff2b0, v229
	v_add_nc_u32_e32 v21, 0xfffff1b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[73:74], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff430, v229
	v_add_nc_u32_e32 v18, 0xfffff3b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff130, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff0b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v18, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff230, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff730, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v21, 16, v20
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff6b0, v229
	v_add_nc_u32_e32 v21, 0xfffff5b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[71:72], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff830, v229
	v_add_nc_u32_e32 v18, 0xfffff7b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff530, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff4b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v18, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff630, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffffb30, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v21, 16, v20
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffab0, v229
	v_add_nc_u32_e32 v21, 0xfffff9b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[69:70], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffc30, v229
	v_add_nc_u32_e32 v18, 0xfffffbb0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff930, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff8b0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v18, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffffa30, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffff30, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v21, 16, v20
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffeb0, v229
	v_add_nc_u32_e32 v21, 0xfffffdb0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[67:68], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffffb0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v19
	ds_load_u8 v19, v20
	ds_load_u8 v20, v229 offset:48
	ds_load_u8 v17, v17
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffffd30, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v17, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffcb0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	v_lshl_or_b32 v18, v17, 16, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffe30, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xffffe9c0, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v21, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[65:66], v[9:16] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v118, v9
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xffffe340, v229
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v119, v10
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffe2c0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v146, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe440, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v145, v12
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe3c0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v117, v13
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xffffe1c0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v144, v14
	v_cvt_f32_i32_e32 v116, v15
	v_cvt_f32_i32_e32 v143, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffe140, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe0c0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	ds_load_u8 v12, v12
	v_lshl_or_b32 v18, v11, 16, v9
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xffffe740, v229
	v_add_nc_u32_e32 v11, 0xffffe7c0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe240, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xffffe5c0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v12, 16, v10
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffe6c0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe4c0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffe840, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe540, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v20, v10, 16, v9
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe640, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v19, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[79:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffeb40, v229
	v_add_nc_u32_e32 v18, 0xffffeac0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[77:78], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffebc0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffe8c0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xffffec40, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffe940, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffea40, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xffffedc0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffefc0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffed40, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[75:76], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffef40, v229
	v_add_nc_u32_e32 v18, 0xffffeec0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff040, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffecc0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffee40, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffff1c0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff3c0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff0c0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[73:74], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff340, v229
	v_add_nc_u32_e32 v18, 0xfffff2c0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff440, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff140, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff240, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffff5c0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff7c0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff4c0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[71:72], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff740, v229
	v_add_nc_u32_e32 v18, 0xfffff6c0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff840, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff540, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff640, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffff9c0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffffbc0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff940, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[69:70], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffb40, v229
	v_add_nc_u32_e32 v18, 0xfffffac0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffffc40, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff8c0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffa40, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffffdc0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffcc0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[67:68], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffff40, v229
	v_add_nc_u32_e32 v18, 0xfffffec0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_subrev_nc_u32_e32 v18, 64, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	ds_load_u8 v19, v229 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffffd40, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffe40, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xffffe9d0, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v21, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[65:66], v[9:16] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v23, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v24, v10
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xffffe350, v229
	v_add_nc_u32_e32 v10, 0xffffe2d0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v22, v11
	v_cvt_f32_i32_e32 v213, v13
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe3d0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xffffe1d0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v214, v12
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v11, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe0d0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v149, v14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v147, v15
	v_cvt_f32_i32_e32 v120, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffe450, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe150, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v10, 16, v9
	ds_load_u8 v11, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xffffe750, v229
	v_add_nc_u32_e32 v10, 0xffffe6d0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe250, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffe850, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xffffe5d0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v12, 16, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe7d0, v229
	v_add_nc_u32_e32 v12, 0xffffe4d0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe550, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v20, v10, 16, v9
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe650, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v19, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[79:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffeb50, v229
	v_add_nc_u32_e32 v18, 0xffffead0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[77:78], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffebd0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffe950, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xffffec50, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffe8d0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffea50, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xffffedd0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffefd0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffed50, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[75:76], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffef50, v229
	v_add_nc_u32_e32 v18, 0xffffeed0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff050, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffecd0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffee50, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffff1d0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff3d0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff150, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[73:74], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff350, v229
	v_add_nc_u32_e32 v18, 0xfffff2d0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff450, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff0d0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff250, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffff5d0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff7d0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff4d0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[71:72], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff750, v229
	v_add_nc_u32_e32 v18, 0xfffff6d0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff850, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff550, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff650, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffff9d0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffffbd0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff950, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[69:70], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffb50, v229
	v_add_nc_u32_e32 v18, 0xfffffad0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffffc50, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff8d0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffa50, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffffdd0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffd50, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[67:68], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffff50, v229
	v_add_nc_u32_e32 v18, 0xfffffed0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_subrev_nc_u32_e32 v18, 48, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	ds_load_u8 v19, v229 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffffcd0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffe50, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xffffe9e0, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v21, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[65:66], v[9:16] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v32, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v31, v10
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xffffe360, v229
	v_add_nc_u32_e32 v10, 0xffffe2e0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v30, v11
	v_cvt_f32_i32_e32 v28, v13
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe3e0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xffffe1e0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v29, v12
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v11, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe0e0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v27, v14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v26, v15
	v_cvt_f32_i32_e32 v25, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffe460, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe160, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v10, 16, v9
	ds_load_u8 v11, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xffffe760, v229
	v_add_nc_u32_e32 v10, 0xffffe6e0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe260, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffe860, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xffffe5e0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v12, 16, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe7e0, v229
	v_add_nc_u32_e32 v12, 0xffffe560, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe4e0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v20, v10, 16, v9
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe660, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v19, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[79:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffeb60, v229
	v_add_nc_u32_e32 v18, 0xffffeae0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[77:78], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffebe0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffe8e0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xffffec60, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffe960, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffea60, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xffffede0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffefe0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffed60, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[75:76], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffeee0, v229
	v_add_nc_u32_e32 v18, 0xffffef60, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff060, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffece0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffee60, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffff1e0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff3e0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff160, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[73:74], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff360, v229
	v_add_nc_u32_e32 v18, 0xfffff2e0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff460, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff0e0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff260, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffff5e0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff7e0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff4e0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[71:72], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff760, v229
	v_add_nc_u32_e32 v18, 0xfffff6e0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff860, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff560, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff660, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffff9e0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffffbe0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff960, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[69:70], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffae0, v229
	v_add_nc_u32_e32 v18, 0xfffffb60, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffffc60, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff8e0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffa60, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffffde0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffd60, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[67:68], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffff60, v229
	v_add_nc_u32_e32 v18, 0xfffffee0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_subrev_nc_u32_e32 v18, 32, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	ds_load_u8 v19, v229 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffffce0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffe60, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xffffe9f0, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v21, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[65:66], v[9:16] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v42, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v39, v10
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xffffe370, v229
	v_add_nc_u32_e32 v10, 0xffffe2f0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v38, v11
	v_cvt_f32_i32_e32 v36, v13
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe3f0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xffffe1f0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v37, v12
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v11, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe0f0, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v35, v14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v34, v15
	v_cvt_f32_i32_e32 v33, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffe470, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe170, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v10, 16, v9
	ds_load_u8 v11, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xffffe770, v229
	v_add_nc_u32_e32 v10, 0xffffe6f0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe270, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffe870, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xffffe5f0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v12, 16, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe7f0, v229
	v_add_nc_u32_e32 v12, 0xffffe570, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe4f0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v20, v10, 16, v9
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe670, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v19, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[79:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffeb70, v229
	v_add_nc_u32_e32 v18, 0xffffeaf0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[77:78], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffebf0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffe8f0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xffffec70, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffe970, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffea70, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xffffedf0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffeff0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffed70, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[75:76], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffef70, v229
	v_add_nc_u32_e32 v18, 0xffffeef0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff070, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xffffecf0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xffffee70, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffff1f0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff3f0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff0f0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[73:74], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff370, v229
	v_add_nc_u32_e32 v18, 0xfffff2f0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff470, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff170, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff270, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffff5f0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff7f0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff4f0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[71:72], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffff770, v229
	v_add_nc_u32_e32 v18, 0xfffff6f0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffff870, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff570, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff670, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffff9f0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffffbf0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffff970, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[69:70], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xfffffb70, v229
	v_add_nc_u32_e32 v18, 0xfffffaf0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, 0xfffffc70, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffff8f0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffa70, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0xfffffdf0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v20, 16, v19
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffd70, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[67:68], v[9:16] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0xffffff70, v229
	v_add_nc_u32_e32 v18, 0xfffffef0, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v18, -16, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v18, v18
	ds_load_u8 v19, v229 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v19, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0xfffffcf0, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v20, 0xfffffe70, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[65:66], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v43, v9
	v_cvt_f32_i32_e32 v21, v10
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xffffe380, v229
	v_add_nc_u32_e32 v10, 0xffffe300, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v19, v12
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe100, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v20, v11
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v18, v13
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xffffe200, v229
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v17, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffe400, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	ds_load_u8 v11, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe180, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe280, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xffffe600, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe500, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[79:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xffffe780, v229
	v_add_nc_u32_e32 v10, 0xffffe700, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffe800, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	ds_load_u8 v11, v141
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe580, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe680, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xffffea00, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffe900, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[77:78], v[1:8] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xffffeb80, v229
	v_add_nc_u32_e32 v10, 0xffffeb00, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffec00, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	ds_load_u8 v11, v103
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffe980, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffea80, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xffffee00, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffed00, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[75:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xffffef80, v229
	v_add_nc_u32_e32 v10, 0xffffef00, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xfffff000, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	ds_load_u8 v11, v106
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffed80, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xffffee80, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xfffff200, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xfffff100, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[73:74], v[1:8] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xfffff380, v229
	v_add_nc_u32_e32 v10, 0xfffff300, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xfffff400, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	ds_load_u8 v11, v98
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xfffff180, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xfffff280, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xfffff600, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xfffff580, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[71:72], v[1:8] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xfffff780, v229
	v_add_nc_u32_e32 v10, 0xfffff700, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xfffff800, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	ds_load_u8 v11, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xfffff500, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xfffff680, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xfffffa00, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xfffff900, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[69:70], v[1:8] neg_lo:[1,1,0]
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, 0xfffffb80, v229
	v_add_nc_u32_e32 v10, 0xfffffb00, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xfffffc00, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	ds_load_u8 v11, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xfffff980, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xfffffa80, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0xfffffe00, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xffffff00, v229
	v_add_nc_u32_e32 v12, 0xfffffd00, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v13, v13
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[67:68], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v229
	ds_load_u8 v10, v56
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v10, 0xffffff80, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v11, 0xfffffd80, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v10, v9, 16, v10
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v12, 0xfffffe80, v229
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[65:66], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v11, v1
	v_cvt_f32_i32_e32 v12, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v3
	v_cvt_f32_i32_e32 v10, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v2, v7
	v_cvt_f32_i32_e32 v1, v8
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v12, off offset:192
	scratch_store_b32 off, v11, off offset:188
	scratch_store_b32 off, v10, off offset:184
	scratch_store_b32 off, v9, off offset:180
	scratch_store_b32 off, v43, off offset:176
	scratch_store_b32 off, v21, off offset:172
	scratch_store_b32 off, v20, off offset:168
	scratch_store_b32 off, v19, off offset:164
	scratch_store_b32 off, v18, off offset:160
	scratch_store_b32 off, v17, off offset:156
	scratch_store_b32 off, v15, off offset:152
	scratch_store_b32 off, v14, off offset:148
	scratch_store_b32 off, v42, off offset:144
	scratch_store_b32 off, v39, off offset:140
	scratch_store_b32 off, v38, off offset:136
	scratch_store_b32 off, v37, off offset:132
	scratch_store_b32 off, v36, off offset:128
	scratch_store_b32 off, v35, off offset:124
	scratch_store_b32 off, v34, off offset:120
	scratch_store_b32 off, v4, off offset:116
	scratch_store_b32 off, v33, off offset:112
	scratch_store_b32 off, v3, off offset:108
	scratch_store_b32 off, v2, off offset:104
	scratch_store_b32 off, v1, off offset:100
	scratch_store_b32 off, v32, off offset:96
	scratch_store_b32 off, v31, off offset:92
	scratch_store_b32 off, v30, off offset:88
	scratch_store_b32 off, v29, off offset:84
	scratch_store_b32 off, v28, off offset:80
	scratch_store_b32 off, v27, off offset:76
	scratch_store_b32 off, v26, off offset:72
	scratch_store_b32 off, v25, off offset:68
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v24, off offset:64
	scratch_store_b32 off, v23, off offset:60
	scratch_store_b32 off, v22, off offset:56
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v1, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	ds_load_u8 v0, v229 offset:784
	ds_load_u8 v1, v229 offset:656
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v136, off offset:200
	scratch_store_b32 off, v99, off offset:204
	scratch_store_b32 off, v59, off offset:220
	scratch_store_b32 off, v214, off offset:236
	scratch_store_b32 off, v147, off offset:232
	scratch_store_b32 off, v120, off offset:228
	v_dual_mov_b32 v136, v101 :: v_dual_mov_b32 v99, v51
	v_dual_mov_b32 v122, v41 :: v_dual_mov_b32 v101, v102
	v_mov_b32_e32 v124, v40
	s_waitcnt vmcnt(0)
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v135, off offset:28
	scratch_store_b32 off, v100, off offset:196
	scratch_store_b32 off, v50, off offset:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v229 offset:1040
	ds_load_u8 v2, v229 offset:912
	v_dual_mov_b32 v135, v49 :: v_dual_mov_b32 v102, v48
	v_mov_b32_e32 v100, v47
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v140, off offset:208
	scratch_store_b32 off, v105, off offset:212
	scratch_store_b32 off, v58, off offset:36
	scratch_store_b32 off, v112, off offset:216
	scratch_store_b32 off, v139, off offset:224
	scratch_store_b32 off, v104, off offset:240
	v_mov_b32_e32 v112, v57
	v_dual_mov_b32 v140, v248 :: v_dual_mov_b32 v139, v109
	v_dual_mov_b32 v248, v55 :: v_dual_mov_b32 v105, v53
	v_dual_mov_b32 v104, v52 :: v_dual_mov_b32 v147, v117
	v_mov_b32_e32 v109, v143
	v_mov_b32_e32 v143, v107
	v_dual_mov_b32 v107, v54 :: v_dual_mov_b32 v84, v56
	v_dual_mov_b32 v214, v149 :: v_dual_mov_b32 v149, v116
	v_dual_mov_b32 v116, v113 :: v_dual_mov_b32 v113, v60
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_mov_b32_e32 v117, v144
	v_mov_b32_e32 v144, v108
	v_mov_b32_e32 v108, v61
	v_mov_b32_e32 v120, v119
	v_lshl_or_b32 v19, v1, 16, v0
	ds_load_u8 v1, v229 offset:272
	ds_load_u8 v2, v229 offset:144
	ds_load_u8 v17, v229 offset:160
	ds_load_u8 v25, v229 offset:176
	ds_load_u8 v0, v229 offset:192
	v_dual_mov_b32 v119, v118 :: v_dual_mov_b32 v118, v145
	v_mov_b32_e32 v85, v63
	v_mov_b32_e32 v145, v146
	v_mov_b32_e32 v146, v110
	v_mov_b32_e32 v110, v62
	v_mov_b32_e32 v86, v64
	ds_load_u8 v51, v229 offset:1488
	ds_load_u8 v59, v229 offset:1504
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v229 offset:528
	ds_load_u8 v3, v229 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[18:19], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v18, v229 offset:1808
	ds_load_u8 v19, v229 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v229 offset:2064
	ds_load_u8 v20, v229 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v19, 16, v18
	ds_load_u8 v18, v229 offset:1296
	ds_load_u8 v20, v229 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	ds_load_u8 v20, v229 offset:1552
	ds_load_u8 v21, v229 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v20, 16, v18
	v_wmma_i32_16x16x16_iu4 v[9:16], v[18:19], v[77:78], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v18, v229 offset:2832
	ds_load_u8 v19, v229 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v229 offset:3088
	ds_load_u8 v20, v229 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v19, 16, v18
	ds_load_u8 v18, v229 offset:2320
	ds_load_u8 v20, v229 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	ds_load_u8 v20, v229 offset:2576
	ds_load_u8 v21, v229 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v20, 16, v18
	v_wmma_i32_16x16x16_iu4 v[9:16], v[18:19], v[75:76], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v18, v229 offset:3856
	ds_load_u8 v19, v229 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v229 offset:4112
	ds_load_u8 v20, v229 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v19, 16, v18
	ds_load_u8 v18, v229 offset:3344
	ds_load_u8 v20, v229 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	ds_load_u8 v20, v229 offset:3600
	ds_load_u8 v21, v229 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v20, 16, v18
	v_wmma_i32_16x16x16_iu4 v[9:16], v[18:19], v[73:74], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v18, v229 offset:4880
	ds_load_u8 v19, v229 offset:4752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v229 offset:5136
	ds_load_u8 v20, v229 offset:5008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v19, 16, v18
	ds_load_u8 v18, v229 offset:4368
	ds_load_u8 v20, v229 offset:4240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	ds_load_u8 v20, v229 offset:4624
	ds_load_u8 v21, v229 offset:4496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v20, 16, v18
	v_wmma_i32_16x16x16_iu4 v[9:16], v[18:19], v[71:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v18, v229 offset:5904
	ds_load_u8 v19, v229 offset:5776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v229 offset:6160
	ds_load_u8 v20, v229 offset:6032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v19, 16, v18
	ds_load_u8 v18, v229 offset:5392
	ds_load_u8 v20, v229 offset:5264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	ds_load_u8 v20, v229 offset:5648
	ds_load_u8 v21, v229 offset:5520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v20, 16, v18
	v_wmma_i32_16x16x16_iu4 v[9:16], v[18:19], v[69:70], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v18, v229 offset:6928
	ds_load_u8 v19, v229 offset:6800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v229 offset:7184
	ds_load_u8 v20, v229 offset:7056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v19, 16, v18
	ds_load_u8 v18, v229 offset:6416
	ds_load_u8 v20, v229 offset:6288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	ds_load_u8 v20, v229 offset:6672
	ds_load_u8 v21, v229 offset:6544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v20, 16, v18
	v_wmma_i32_16x16x16_iu4 v[9:16], v[18:19], v[67:68], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v18, v229 offset:7952
	ds_load_u8 v19, v229 offset:7824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v229 offset:8208
	ds_load_u8 v20, v229 offset:8080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v19, 16, v18
	ds_load_u8 v18, v229 offset:7440
	ds_load_u8 v20, v229 offset:7312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	ds_load_u8 v20, v229 offset:7696
	ds_load_u8 v21, v229 offset:7568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v20, 16, v18
	v_wmma_i32_16x16x16_iu4 v[9:16], v[18:19], v[65:66], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v18, v229 offset:800
	ds_load_u8 v19, v229 offset:672
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v93, v15
	v_cvt_f32_i32_e32 v128, v11
	v_cvt_f32_i32_e32 v211, v12
	v_cvt_f32_i32_e32 v254, v13
	v_cvt_f32_i32_e32 v255, v14
	v_cvt_f32_i32_e32 v97, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v229 offset:1056
	ds_load_u8 v20, v229 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v19, 16, v18
	ds_load_u8 v18, v229 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	ds_load_u8 v18, v229 offset:544
	ds_load_u8 v19, v229 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[26:27], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v229 offset:1824
	ds_load_u8 v27, v229 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v229 offset:2080
	ds_load_u8 v28, v229 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v27, 16, v26
	ds_load_u8 v26, v229 offset:1312
	ds_load_u8 v28, v229 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	ds_load_u8 v28, v229 offset:1568
	ds_load_u8 v29, v229 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v26
	v_wmma_i32_16x16x16_iu4 v[17:24], v[26:27], v[77:78], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v26, v229 offset:2848
	ds_load_u8 v27, v229 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v229 offset:3104
	ds_load_u8 v28, v229 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v27, 16, v26
	ds_load_u8 v26, v229 offset:2336
	ds_load_u8 v28, v229 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	ds_load_u8 v28, v229 offset:2592
	ds_load_u8 v29, v229 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v26
	v_wmma_i32_16x16x16_iu4 v[17:24], v[26:27], v[75:76], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v26, v229 offset:3872
	ds_load_u8 v27, v229 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v229 offset:4128
	ds_load_u8 v28, v229 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v27, 16, v26
	ds_load_u8 v26, v229 offset:3360
	ds_load_u8 v28, v229 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	ds_load_u8 v28, v229 offset:3616
	ds_load_u8 v29, v229 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v26
	v_wmma_i32_16x16x16_iu4 v[17:24], v[26:27], v[73:74], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v26, v229 offset:4896
	ds_load_u8 v27, v229 offset:4768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v229 offset:5152
	ds_load_u8 v28, v229 offset:5024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v27, 16, v26
	ds_load_u8 v26, v229 offset:4384
	ds_load_u8 v28, v229 offset:4256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	ds_load_u8 v28, v229 offset:4640
	ds_load_u8 v29, v229 offset:4512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v26
	v_wmma_i32_16x16x16_iu4 v[17:24], v[26:27], v[71:72], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v26, v229 offset:5920
	ds_load_u8 v27, v229 offset:5792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v229 offset:6176
	ds_load_u8 v28, v229 offset:6048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v27, 16, v26
	ds_load_u8 v26, v229 offset:5408
	ds_load_u8 v28, v229 offset:5280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	ds_load_u8 v28, v229 offset:5664
	ds_load_u8 v29, v229 offset:5536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v26
	v_wmma_i32_16x16x16_iu4 v[17:24], v[26:27], v[69:70], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v26, v229 offset:6944
	ds_load_u8 v27, v229 offset:6816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v229 offset:7200
	ds_load_u8 v28, v229 offset:7072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v27, 16, v26
	ds_load_u8 v26, v229 offset:6432
	ds_load_u8 v28, v229 offset:6304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	ds_load_u8 v28, v229 offset:6688
	ds_load_u8 v29, v229 offset:6560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v26
	v_wmma_i32_16x16x16_iu4 v[17:24], v[26:27], v[67:68], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v26, v229 offset:7968
	ds_load_u8 v27, v229 offset:7840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v229 offset:8224
	ds_load_u8 v28, v229 offset:8096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v27, 16, v26
	ds_load_u8 v26, v229 offset:7456
	ds_load_u8 v28, v229 offset:7328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v28, v26, 0xc0c0004
	ds_load_u8 v28, v229 offset:7712
	ds_load_u8 v29, v229 offset:7584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v28, 16, v26
	v_wmma_i32_16x16x16_iu4 v[17:24], v[26:27], v[65:66], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v26, v229 offset:816
	ds_load_u8 v27, v229 offset:688
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v253, v24
	v_cvt_f32_i32_e32 v96, v18
	v_cvt_f32_i32_e32 v92, v19
	v_cvt_f32_i32_e32 v95, v17
	v_cvt_f32_i32_e32 v94, v20
	v_cvt_f32_i32_e32 v90, v21
	v_cvt_f32_i32_e32 v91, v22
	v_cvt_f32_i32_e32 v249, v23
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v229 offset:1072
	ds_load_u8 v28, v229 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v27, 16, v26
	ds_load_u8 v26, v229 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v229 offset:560
	ds_load_u8 v27, v229 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v33, v229 offset:1840
	ds_load_u8 v34, v229 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v229 offset:2096
	ds_load_u8 v35, v229 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v229 offset:1328
	ds_load_u8 v35, v229 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v229 offset:1584
	ds_load_u8 v36, v229 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[77:78], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v33, v229 offset:2864
	ds_load_u8 v34, v229 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v229 offset:3120
	ds_load_u8 v35, v229 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v229 offset:2352
	ds_load_u8 v35, v229 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v229 offset:2608
	ds_load_u8 v36, v229 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[75:76], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v33, v229 offset:3888
	ds_load_u8 v34, v229 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v229 offset:4144
	ds_load_u8 v35, v229 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v229 offset:3376
	ds_load_u8 v35, v229 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v229 offset:3632
	ds_load_u8 v36, v229 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[73:74], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v33, v229 offset:4912
	ds_load_u8 v34, v229 offset:4784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v229 offset:5168
	ds_load_u8 v35, v229 offset:5040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v229 offset:4400
	ds_load_u8 v35, v229 offset:4272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v229 offset:4656
	ds_load_u8 v36, v229 offset:4528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[71:72], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v33, v229 offset:5936
	ds_load_u8 v34, v229 offset:5808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v229 offset:6192
	ds_load_u8 v35, v229 offset:6064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v229 offset:5424
	ds_load_u8 v35, v229 offset:5296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v229 offset:5680
	ds_load_u8 v36, v229 offset:5552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[69:70], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v33, v229 offset:6960
	ds_load_u8 v34, v229 offset:6832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v229 offset:7216
	ds_load_u8 v35, v229 offset:7088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v229 offset:6448
	ds_load_u8 v35, v229 offset:6320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v229 offset:6704
	ds_load_u8 v36, v229 offset:6576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[67:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v33, v229 offset:7984
	ds_load_u8 v34, v229 offset:7856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v229 offset:8240
	ds_load_u8 v35, v229 offset:8112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v229 offset:7472
	ds_load_u8 v35, v229 offset:7344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v229 offset:7728
	ds_load_u8 v36, v229 offset:7600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[65:66], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v33, v229 offset:832
	ds_load_u8 v34, v229 offset:704
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v252, v26
	v_cvt_f32_i32_e32 v87, v29
	v_cvt_f32_i32_e32 v251, v25
	v_cvt_f32_i32_e32 v89, v27
	v_cvt_f32_i32_e32 v250, v28
	v_cvt_f32_i32_e32 v88, v30
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v229 offset:1088
	ds_load_u8 v35, v229 offset:960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v34, 16, v33
	ds_load_u8 v33, v229 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v33, 0xc0c0004
	ds_load_u8 v33, v229 offset:576
	ds_load_u8 v34, v229 offset:448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v33, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:1856
	ds_load_u8 v41, v229 offset:1728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:2112
	ds_load_u8 v42, v229 offset:1984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v229 offset:1344
	ds_load_u8 v41, v229 offset:1216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:1600
	ds_load_u8 v43, v229 offset:1472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[77:78], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:2880
	ds_load_u8 v41, v229 offset:2752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:3136
	ds_load_u8 v42, v229 offset:3008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v229 offset:2368
	ds_load_u8 v41, v229 offset:2240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:2624
	ds_load_u8 v43, v229 offset:2496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[75:76], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:3904
	ds_load_u8 v41, v229 offset:3776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:4160
	ds_load_u8 v42, v229 offset:4032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v229 offset:3392
	ds_load_u8 v41, v229 offset:3264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:3648
	ds_load_u8 v43, v229 offset:3520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[73:74], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:4928
	ds_load_u8 v41, v229 offset:4800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:5184
	ds_load_u8 v42, v229 offset:5056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v229 offset:4416
	ds_load_u8 v41, v229 offset:4288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:4672
	ds_load_u8 v43, v229 offset:4544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[71:72], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:5952
	ds_load_u8 v41, v229 offset:5824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:6208
	ds_load_u8 v42, v229 offset:6080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v229 offset:5440
	ds_load_u8 v41, v229 offset:5312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:5696
	ds_load_u8 v43, v229 offset:5568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[69:70], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:6976
	ds_load_u8 v41, v229 offset:6848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:7232
	ds_load_u8 v42, v229 offset:7104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v229 offset:6464
	ds_load_u8 v41, v229 offset:6336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:6720
	ds_load_u8 v43, v229 offset:6592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[67:68], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:8000
	ds_load_u8 v41, v229 offset:7872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:8256
	ds_load_u8 v42, v229 offset:8128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	ds_load_u8 v0, v229 offset:7488
	ds_load_u8 v41, v229 offset:7360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:7744
	ds_load_u8 v43, v229 offset:7616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[65:66], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:848
	ds_load_u8 v41, v229 offset:720
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v132, v37
	v_cvt_f32_i32_e32 v212, v35
	v_cvt_f32_i32_e32 v131, v40
	v_mov_b32_e32 v40, v124
	v_cvt_f32_i32_e32 v133, v38
	v_cvt_f32_i32_e32 v126, v39
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:1104
	ds_load_u8 v42, v229 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v41, 16, v0
	ds_load_u8 v0, v229 offset:336
	ds_load_u8 v41, v229 offset:208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	ds_load_u8 v41, v229 offset:592
	ds_load_u8 v42, v229 offset:464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v41, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:1872
	ds_load_u8 v49, v229 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:2128
	ds_load_u8 v50, v229 offset:2000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v0
	ds_load_u8 v0, v229 offset:1360
	ds_load_u8 v49, v229 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[77:78], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:2896
	ds_load_u8 v49, v229 offset:2768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:3152
	ds_load_u8 v50, v229 offset:3024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v0
	ds_load_u8 v0, v229 offset:2384
	ds_load_u8 v49, v229 offset:2256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:2640
	ds_load_u8 v51, v229 offset:2512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[75:76], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:3920
	ds_load_u8 v49, v229 offset:3792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:4176
	ds_load_u8 v50, v229 offset:4048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v0
	ds_load_u8 v0, v229 offset:3408
	ds_load_u8 v49, v229 offset:3280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:3664
	ds_load_u8 v51, v229 offset:3536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[73:74], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:4944
	ds_load_u8 v49, v229 offset:4816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:5200
	ds_load_u8 v50, v229 offset:5072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v0
	ds_load_u8 v0, v229 offset:4432
	ds_load_u8 v49, v229 offset:4304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:4688
	ds_load_u8 v51, v229 offset:4560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[71:72], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:5968
	ds_load_u8 v49, v229 offset:5840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:6224
	ds_load_u8 v50, v229 offset:6096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v0
	ds_load_u8 v0, v229 offset:5456
	ds_load_u8 v49, v229 offset:5328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:5712
	ds_load_u8 v51, v229 offset:5584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[69:70], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:6992
	ds_load_u8 v49, v229 offset:6864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:7248
	ds_load_u8 v50, v229 offset:7120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v0
	ds_load_u8 v0, v229 offset:6480
	ds_load_u8 v49, v229 offset:6352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:6736
	ds_load_u8 v51, v229 offset:6608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[67:68], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:8016
	ds_load_u8 v49, v229 offset:7888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:8272
	ds_load_u8 v50, v229 offset:8144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v0
	ds_load_u8 v0, v229 offset:7504
	ds_load_u8 v49, v229 offset:7376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:7760
	ds_load_u8 v51, v229 offset:7632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[65:66], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:864
	ds_load_u8 v49, v229 offset:736
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v129, v41
	v_mov_b32_e32 v41, v122
	v_cvt_f32_i32_e32 v130, v42
	v_cvt_f32_i32_e32 v125, v43
	v_cvt_f32_i32_e32 v127, v44
	v_cvt_f32_i32_e32 v122, v45
	v_cvt_f32_i32_e32 v124, v46
	v_cvt_f32_i32_e32 v42, v47
	v_mov_b32_e32 v47, v100
	v_cvt_f32_i32_e32 v46, v48
	v_mov_b32_e32 v48, v102
	v_dual_mov_b32 v102, v101 :: v_dual_mov_b32 v101, v136
	scratch_load_b32 v136, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:1120
	ds_load_u8 v50, v229 offset:992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v49, 16, v0
	ds_load_u8 v0, v229 offset:352
	ds_load_u8 v49, v229 offset:224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v229 offset:608
	ds_load_u8 v50, v229 offset:480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v49, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:1888
	ds_load_u8 v57, v229 offset:1760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:2144
	ds_load_u8 v58, v229 offset:2016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v57, 16, v0
	ds_load_u8 v0, v229 offset:1376
	ds_load_u8 v57, v229 offset:1248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[77:78], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:2912
	ds_load_u8 v57, v229 offset:2784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:3168
	ds_load_u8 v58, v229 offset:3040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v57, 16, v0
	ds_load_u8 v0, v229 offset:2400
	ds_load_u8 v57, v229 offset:2272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:2656
	ds_load_u8 v59, v229 offset:2528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[75:76], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:3936
	ds_load_u8 v57, v229 offset:3808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:4192
	ds_load_u8 v58, v229 offset:4064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v57, 16, v0
	ds_load_u8 v0, v229 offset:3424
	ds_load_u8 v57, v229 offset:3296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:3680
	ds_load_u8 v59, v229 offset:3552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[73:74], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:4960
	ds_load_u8 v57, v229 offset:4832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:5216
	ds_load_u8 v58, v229 offset:5088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v57, 16, v0
	ds_load_u8 v0, v229 offset:4448
	ds_load_u8 v57, v229 offset:4320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:4704
	ds_load_u8 v59, v229 offset:4576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[71:72], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:5984
	ds_load_u8 v57, v229 offset:5856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:6240
	ds_load_u8 v58, v229 offset:6112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v57, 16, v0
	ds_load_u8 v0, v229 offset:5472
	ds_load_u8 v57, v229 offset:5344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:5728
	ds_load_u8 v59, v229 offset:5600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[69:70], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:7008
	ds_load_u8 v57, v229 offset:6880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:7264
	ds_load_u8 v58, v229 offset:7136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v57, 16, v0
	ds_load_u8 v0, v229 offset:6496
	ds_load_u8 v57, v229 offset:6368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:6752
	ds_load_u8 v59, v229 offset:6624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[67:68], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:8032
	ds_load_u8 v57, v229 offset:7904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:8288
	ds_load_u8 v58, v229 offset:8160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v57, 16, v0
	ds_load_u8 v0, v229 offset:7520
	ds_load_u8 v57, v229 offset:7392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:7776
	ds_load_u8 v59, v229 offset:7648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[65:66], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:880
	ds_load_u8 v57, v229 offset:752
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v37, v51
	v_mov_b32_e32 v51, v99
	v_cvt_f32_i32_e32 v44, v49
	v_mov_b32_e32 v49, v135
	v_cvt_f32_i32_e32 v45, v50
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v50, off, off offset:32
	scratch_load_b32 v100, off, off offset:196
	scratch_load_b32 v135, off, off offset:28
	v_cvt_f32_i32_e32 v43, v52
	v_mov_b32_e32 v52, v104
	v_cvt_f32_i32_e32 v35, v54
	v_mov_b32_e32 v54, v107
	v_mov_b32_e32 v107, v143
	v_mov_b32_e32 v143, v109
	v_cvt_f32_i32_e32 v24, v55
	v_mov_b32_e32 v55, v248
	v_dual_mov_b32 v109, v139 :: v_dual_mov_b32 v248, v140
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:1136
	ds_load_u8 v58, v229 offset:1008
	scratch_load_b32 v99, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v57, 16, v0
	ds_load_u8 v0, v229 offset:368
	ds_load_u8 v57, v229 offset:240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	ds_load_u8 v57, v229 offset:624
	ds_load_u8 v58, v229 offset:496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v57, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:1904
	ds_load_u8 v81, v229 offset:1776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:2160
	ds_load_u8 v82, v229 offset:2032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v81, 16, v0
	ds_load_u8 v0, v229 offset:1392
	ds_load_u8 v81, v229 offset:1264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:1648
	ds_load_u8 v83, v229 offset:1520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v81, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[77:78], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:2928
	ds_load_u8 v81, v229 offset:2800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:3184
	ds_load_u8 v82, v229 offset:3056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v81, 16, v0
	ds_load_u8 v0, v229 offset:2416
	ds_load_u8 v81, v229 offset:2288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:2672
	ds_load_u8 v83, v229 offset:2544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v81, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[75:76], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:3952
	ds_load_u8 v81, v229 offset:3824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:4208
	ds_load_u8 v82, v229 offset:4080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v81, 16, v0
	ds_load_u8 v0, v229 offset:3440
	ds_load_u8 v81, v229 offset:3312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:3696
	ds_load_u8 v83, v229 offset:3568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v81, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[73:74], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:4976
	ds_load_u8 v81, v229 offset:4848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:5232
	ds_load_u8 v82, v229 offset:5104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v81, 16, v0
	ds_load_u8 v0, v229 offset:4464
	ds_load_u8 v81, v229 offset:4336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:4720
	ds_load_u8 v83, v229 offset:4592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v81, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[71:72], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:6000
	ds_load_u8 v81, v229 offset:5872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:6256
	ds_load_u8 v82, v229 offset:6128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v81, 16, v0
	ds_load_u8 v0, v229 offset:5488
	ds_load_u8 v81, v229 offset:5360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:5744
	ds_load_u8 v83, v229 offset:5616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v81, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[69:70], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:7024
	ds_load_u8 v81, v229 offset:6896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:7280
	ds_load_u8 v82, v229 offset:7152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v81, 16, v0
	ds_load_u8 v0, v229 offset:6512
	ds_load_u8 v81, v229 offset:6384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:6768
	ds_load_u8 v83, v229 offset:6640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v81, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[67:68], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:8048
	ds_load_u8 v81, v229 offset:7920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:8304
	ds_load_u8 v82, v229 offset:8176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v81, 16, v0
	ds_load_u8 v0, v229 offset:7536
	ds_load_u8 v81, v229 offset:7408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:7792
	ds_load_u8 v83, v229 offset:7664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v81, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[65:66], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:896
	ds_load_u8 v81, v229 offset:768
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v26, v57
	v_mov_b32_e32 v57, v112
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v104, off, off offset:240
	scratch_load_b32 v139, off, off offset:224
	scratch_load_b32 v112, off, off offset:216
	v_cvt_f32_i32_e32 v29, v58
	v_cvt_f32_i32_e32 v19, v59
	scratch_load_b32 v59, off, off offset:220 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v25, v60
	v_dual_mov_b32 v60, v113 :: v_dual_mov_b32 v113, v116
	v_dual_mov_b32 v116, v149 :: v_dual_mov_b32 v149, v214
	scratch_load_b32 v214, off, off offset:236 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v15, v61
	v_mov_b32_e32 v61, v108
	v_mov_b32_e32 v108, v144
	v_mov_b32_e32 v144, v117
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v142 offset:8192
	ds_load_u8 v82, v229 offset:1024
	v_mov_b32_e32 v117, v147
	scratch_load_b32 v147, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v18, v62
	v_mov_b32_e32 v62, v110
	v_mov_b32_e32 v110, v146
	v_dual_mov_b32 v146, v145 :: v_dual_mov_b32 v145, v118
	v_dual_mov_b32 v118, v119 :: v_dual_mov_b32 v119, v120
	scratch_load_b32 v120, off, off offset:228 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v14, v64
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v81, 16, v0
	ds_load_u8 v0, v229 offset:384
	ds_load_u8 v81, v229 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v81, v0, 0xc0c0004
	ds_load_u8 v81, v229 offset:640
	ds_load_u8 v83, v229 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v83, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v81, v81, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:1920
	ds_load_u8 v79, v229 offset:1792
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v82, v31
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v79, v0, 0xc0c0004
	ds_load_u8 v79, v141 offset:8192
	ds_load_u8 v80, v229 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v79, 16, v0
	ds_load_u8 v0, v229 offset:1408
	ds_load_u8 v79, v229 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v79, v0, 0xc0c0004
	ds_load_u8 v79, v229 offset:1664
	ds_load_u8 v81, v229 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v81, v79, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v81, v10
	v_cvt_f32_i32_e32 v10, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v79, v79, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[77:78], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:2944
	ds_load_u8 v77, v229 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v77, v0, 0xc0c0004
	ds_load_u8 v77, v103 offset:8192
	ds_load_u8 v78, v229 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v77, 16, v0
	ds_load_u8 v0, v229 offset:2432
	ds_load_u8 v77, v229 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v77, v0, 0xc0c0004
	ds_load_u8 v77, v229 offset:2688
	ds_load_u8 v79, v229 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v79, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v77, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[77:78], v[75:76], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:3968
	ds_load_u8 v75, v229 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v75, v0, 0xc0c0004
	ds_load_u8 v75, v106 offset:8192
	ds_load_u8 v76, v229 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v75, 16, v0
	ds_load_u8 v0, v229 offset:3456
	ds_load_u8 v75, v229 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v75, v0, 0xc0c0004
	ds_load_u8 v75, v229 offset:3712
	ds_load_u8 v77, v229 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v77, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v75, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[73:74], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:4992
	ds_load_u8 v73, v229 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v98 offset:8192
	ds_load_u8 v74, v229 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v229 offset:4480
	ds_load_u8 v73, v229 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v229 offset:4736
	ds_load_u8 v75, v229 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[71:72], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:6016
	ds_load_u8 v71, v229 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v71, v0, 0xc0c0004
	ds_load_u8 v71, v86 offset:8192
	ds_load_u8 v72, v229 offset:6144
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v86, v32
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v71, 16, v0
	ds_load_u8 v0, v229 offset:5504
	ds_load_u8 v71, v229 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v71, v0, 0xc0c0004
	ds_load_u8 v71, v229 offset:5760
	ds_load_u8 v73, v229 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v73, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v71, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[71:72], v[69:70], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:7040
	ds_load_u8 v69, v229 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v85 offset:8192
	ds_load_u8 v70, v229 offset:7168
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v53
	v_mov_b32_e32 v53, v105
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v58, off, off offset:36
	scratch_load_b32 v105, off, off offset:212
	scratch_load_b32 v140, off, off offset:208
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v229 offset:6528
	ds_load_u8 v69, v229 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v229 offset:6784
	ds_load_u8 v71, v229 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v71, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[67:68], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v229 offset:8064
	ds_load_u8 v67, v229 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v67, v0, 0xc0c0004
	ds_load_u8 v67, v84 offset:8192
	ds_load_u8 v68, v229 offset:8192
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v84, v33
	v_cvt_f32_i32_e32 v33, v56
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v67, 16, v0
	ds_load_u8 v0, v229 offset:7552
	ds_load_u8 v67, v229 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v67, v0, 0xc0c0004
	ds_load_u8 v67, v229 offset:7808
	ds_load_u8 v69, v229 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v69, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v67, v67, 16, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[65:66], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v12, v1
	v_cvt_f32_i32_e32 v13, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v3
	v_cvt_f32_i32_e32 v11, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v4, v8
.LBB0_10:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v2, s35, v115
	s_mul_i32 s0, s33, s35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s5, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s4, s12
	v_add_lshl_u32 v2, s0, v2, 1
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s0, s1, s34
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s27
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s1, s26, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s3, s1, s27
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	v_add_lshl_u32 v3, s3, v134, 1
	scratch_load_b32 v141, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v7, 0x80000000, v3, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v7, v7, s[4:7], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v0, v0, v2 :: v_dual_lshlrev_b32 v7, 16, v7
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v0, v7, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v62, v0, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v7, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v46, v46, v2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v45, v45, v2
	v_mul_f32_e32 v42, v42, v2
	v_mul_f32_e32 v43, v43, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v37, v37, v2
	v_mul_f32_e32 v35, v35, v2
	v_mul_f32_e32 v44, v44, v2
	v_mul_f32_e32 v33, v33, v2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v29, v29, v2
	v_mul_f32_e32 v19, v19, v2
	v_mul_f32_e32 v25, v25, v2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v15, v15, v2
	v_mul_f32_e32 v34, v34, v2
	v_mul_f32_e32 v13, v13, v2
	v_mul_f32_e32 v11, v11, v2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v7, v7
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v9, v9, v2
	v_mul_f32_e32 v5, v5, v2
	v_mul_f32_e32 v24, v24, v2
	v_mul_f32_e32 v26, v26, v2
	v_mul_f32_e32 v18, v18, v2
	v_mul_f32_e32 v14, v14, v2
	v_mul_f32_e32 v10, v10, v2
	v_mul_f32_e32 v12, v12, v2
	v_mul_f32_e32 v6, v6, v2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v7, v7, v8
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v4, v4, v2
	v_mul_f32_e32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v8, null, v7, v7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v8
	v_fma_f32 v17, -v8, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v0, v7, v0
	v_mul_f32_e32 v20, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v8, v20, v17
	v_fmac_f32_e32 v20, v21, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v8, v20, v17
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v17, v81, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v8, v8, v16, v20
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v16, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v0, v8, v7, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v8, v128, v2 :: v_dual_add_nc_u32 v7, 8, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	buffer_load_u16 v7, v7, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v16, v17, v16, v57
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v57, v16, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v7, v8, v7, v54
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v20, null, v17, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v16, v17, v16
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v20, v23, v22
	v_fmac_f32_e32 v23, v27, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v23, v22
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v22, v211, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v21, 12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v21, v22, v21, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v61, v21, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v23
	v_fma_f32 v28, -v23, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v30, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v23, v30, v28
	v_fmac_f32_e32 v30, v31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v30, v28
	v_div_fmas_f32 v23, v23, v27, v30
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v54, v7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v7, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v27
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v7, v7, v8
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v28, 1.0, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v7, null, v28, v28, v27
	v_rcp_f32_e32 v8, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v7, v8, 1.0
	v_fmac_f32_e32 v8, v30, v8
	v_div_scale_f32 v30, vcc_lo, v27, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v30, v8
	v_fma_f32 v32, -v7, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v32, v8
	v_fma_f32 v7, -v7, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v30, v7, v8, v31
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v8, 20, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v20, v17, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v16, v255, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v8, v16, v8, v60
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v60, v8, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v8, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v17
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v8, v8, v16
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v20, 1.0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v8, null, v20, v20, v17
	v_rcp_f32_e32 v16, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v8, v16, 1.0
	v_fmac_f32_e32 v16, v31, v16
	v_div_scale_f32 v31, vcc_lo, v17, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v31, v16
	v_fma_f32 v36, -v8, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v36, v16
	v_fma_f32 v8, -v8, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v31, v8, v16, v32
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v16, 16, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v8, v23, v22, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v254, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v17, v31, v20, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v31, v93, v2 :: v_dual_add_nc_u32 v20, 24, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v16, v21, v16, v58
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v58, v16, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v31, v20, v40
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v40, v20, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v20, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v16, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v16
	v_fma_f32 v32, -v16, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v32, v23
	v_div_scale_f32 v32, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v36, v32, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v16, v36, v32
	v_fmac_f32_e32 v36, v38, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v36, v32
	v_div_fmas_f32 v23, v16, v23, v36
	v_div_fixup_f32 v16, v30, v28, v27
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v28, v97, v2 :: v_dual_add_nc_u32 v27, 28, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v21, v23, v22, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v22, v96, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v27, v28, v27, v248
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v248, v27, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v27
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v30
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v28, v28, v27
	v_rcp_f32_e32 v32, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v30, v32, 1.0
	v_fmac_f32_e32 v32, v36, v32
	v_div_scale_f32 v36, vcc_lo, v27, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v36, v32
	v_fma_f32 v39, -v30, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v32
	v_fma_f32 v30, -v30, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v32, v38
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v32, 1.0, v20
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v20, null, v32, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v20
	v_fma_f32 v38, -v20, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v38, v36
	v_div_scale_f32 v38, vcc_lo, v31, v32, v31
	v_mul_f32_e32 v39, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v20, v39, v38
	v_fmac_f32_e32 v39, v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v39, v38
	v_div_fmas_f32 v36, v20, v36, v39
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v20, 36, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v22, v20, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v41, v20, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v38, 1.0, v20
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v20, null, v38, v38, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v20
	v_fma_f32 v39, -v20, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v39, v22
	v_div_scale_f32 v39, vcc_lo, v23, v38, v23
	v_mul_f32_e32 v40, v39, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v20, v40, v39
	v_fmac_f32_e32 v40, v41, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v40, v39
	v_div_fmas_f32 v39, v20, v22, v40
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v22, 32, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v20, v30, v28, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v95, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v23, v39, v38, v23
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v39, v92, v2 :: v_dual_add_nc_u32 v38, 40, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v22, v27, v22, v47
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v47, v22, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v38, v39, v38, v49
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v49, v38, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, 0xbfb8aa3b, v38
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v28, 1.0, v22
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v28, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v22
	v_fma_f32 v40, -v22, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v40, v30
	v_div_scale_f32 v40, vcc_lo, v27, v28, v27
	v_mul_f32_e32 v41, v40, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v22, v41, v40
	v_fmac_f32_e32 v41, v47, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v41, v40
	v_div_fmas_f32 v30, v22, v30, v41
	v_div_fixup_f32 v22, v36, v32, v31
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v32, v94, v2 :: v_dual_add_nc_u32 v31, 44, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v27, v30, v28, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v28, 52, v3
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v30, v91, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	s_clause 0x1
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v31, v32, v31, v48
	v_fma_f32 v28, v30, v28, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v48, v31, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v32, v32
	v_ldexp_f32 v32, v32, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v36, null, v32, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v41, -v36, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v31, v32, v31
	v_mul_f32_e32 v47, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v36, v47, v41
	v_fmac_f32_e32 v47, v48, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v36, v47, v41
	v_div_fmas_f32 v36, v36, v40, v47
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v38
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v39, v39, v40
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v40, null, v39, v39, v38
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v47, v41
	v_div_scale_f32 v47, vcc_lo, v38, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v47, v41
	v_fma_f32 v49, -v40, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v41
	v_fma_f32 v40, -v40, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v41, v48
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v50, v28, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v47, 1.0, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v47, v47, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v28
	v_fma_f32 v48, -v28, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v48, v30
	v_div_scale_f32 v48, vcc_lo, v41, v47, v41
	v_mul_f32_e32 v49, v48, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v28, v49, v48
	v_fmac_f32_e32 v49, v50, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v49, v48
	v_div_fmas_f32 v48, v28, v30, v49
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v30, 48, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v28, v36, v32, v31
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v31, v90, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v30, v31, v30, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v51, v30, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v30, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v30, v30
	v_ldexp_f32 v30, v30, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v36, 1.0, v30
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v36, v36, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v30
	v_fma_f32 v49, -v30, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v49, v31
	v_div_scale_f32 v49, vcc_lo, v32, v36, v32
	v_mul_f32_e32 v50, v49, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v30, v50, v49
	v_fmac_f32_e32 v50, v51, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v30, v50, v49
	v_div_fmas_f32 v49, v30, v31, v50
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v31, 60, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v30, v40, v39, v38
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v38, v253, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v32, v49, v36, v32
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_add_nc_u32_e32 v36, 56, v3
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v31, v38, v31, v52
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v52, v31, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v38
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v39
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v39, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, null, v39, v39, v38
	v_rcp_f32_e32 v40, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v31, v40, 1.0
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, vcc_lo, v38, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v51, v50, v40
	v_fma_f32 v52, -v31, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v52, v40
	v_fma_f32 v31, -v31, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v31, v40, v51
	v_div_fixup_f32 v31, v48, v47, v41
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v41, v249, v2
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v36, v41, v36, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v215, v36, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v41, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v47, 1.0, v41
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v41, null, v47, v47, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v41
	v_fma_f32 v49, -v41, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v36, v47, v36
	v_mul_f32_e32 v50, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v41, v50, v49
	v_fmac_f32_e32 v50, v51, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v41, v50, v49
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v49, v252, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v48, v41, v48, v50
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v41, 0x44, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v41, v49, v41, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v49, v53, v41, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v41, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v50, 1.0, v41
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v41, null, v50, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v51, v41
	v_fma_f32 v52, -v41, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v49, v50, v49
	v_mul_f32_e32 v53, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v41, v53, v52
	v_fmac_f32_e32 v53, v54, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v41, v53, v52
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v52, v251, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v51, v41, v51, v53
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v41, 64, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v41, v52, v41, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v52, v55, v41, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v41, 0xbfb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v53, 1.0, v41
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v41, null, v53, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v41
	v_fma_f32 v55, -v41, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, vcc_lo, v52, v53, v52
	v_mul_f32_e32 v56, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v41, v56, v55
	v_fmac_f32_e32 v56, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v41, v56, v55
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v55, v250, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v54, v41, v54, v56
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v41, 0x4c, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v41, v55, v41, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v59, v41, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v41, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v56, 1.0, v41
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v41, null, v56, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v57, v41
	v_fma_f32 v58, -v41, v57, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v57
	v_div_scale_f32 v58, vcc_lo, v55, v56, v55
	v_mul_f32_e32 v59, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v41, v59, v58
	v_fmac_f32_e32 v59, v60, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v59, v58
	v_div_fmas_f32 v57, v41, v57, v59
	v_div_fixup_f32 v41, v40, v39, v38
	v_div_fixup_f32 v40, v48, v47, v36
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v48, v89, v2 :: v_dual_add_nc_u32 v47, 0x48, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v38, v51, v50, v49
	v_div_fixup_f32 v39, v54, v53, v52
	v_div_fixup_f32 v36, v57, v56, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v47, v48, v47, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v247, v47, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v48, v48
	v_ldexp_f32 v48, v48, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v49, null, v48, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v50, v49
	v_fma_f32 v51, -v49, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v47, v48, v47
	v_mul_f32_e32 v52, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v49, v52, v51
	v_fmac_f32_e32 v52, v53, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v49, v52, v51
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v51, v88, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v49, v49, v50, v52
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v50, 0x54, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v50, v51, v50, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v50, v246, v50, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v52, 1.0, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v51, null, v52, v52, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v51
	v_fma_f32 v54, -v51, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, vcc_lo, v50, v52, v50
	v_mul_f32_e32 v55, v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v51, v55, v54
	v_fmac_f32_e32 v55, v56, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v51, v55, v54
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v54, v87, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v53, v51, v53, v55
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v51, 0x50, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v51, v54, v51, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v54, v245, v51, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v55, 1.0, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v51, null, v55, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v56, v51
	v_fma_f32 v57, -v51, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v54, v55, v54
	v_mul_f32_e32 v58, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v51, v58, v57
	v_fmac_f32_e32 v58, v59, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v51, v58, v57
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v57, v86, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v56, v51, v56, v58
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v51, 0x5c, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v51, v57, v51, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v57, v244, v51, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v58, 1.0, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v51, null, v58, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v51
	v_fma_f32 v60, -v51, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, vcc_lo, v57, v58, v57
	v_mul_f32_e32 v61, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v51, v61, v60
	v_fmac_f32_e32 v61, v62, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v51, v61, v60
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v60, v82, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v59, v51, v59, v61
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v51, 0x58, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v51, v60, v51, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v60, v243, v51, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v61, 1.0, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v51, null, v61, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v62, v51
	v_fma_f32 v63, -v51, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v63, v62
	v_div_scale_f32 v63, vcc_lo, v60, v61, v60
	v_mul_f32_e32 v64, v63, v62
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v51, v64, v63
	v_fmac_f32_e32 v64, v65, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v51, v64, v63
	v_div_fmas_f32 v62, v51, v62, v64
	v_div_fixup_f32 v51, v49, v48, v47
	v_div_fixup_f32 v49, v53, v52, v50
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v53, v85, v2 :: v_dual_add_nc_u32 v52, 0x64, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v50, v56, v55, v54
	v_div_fixup_f32 v47, v59, v58, v57
	v_div_fixup_f32 v48, v62, v61, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v52, 0x80000000, v52, s2
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v52, v53, v52, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v52, v242, v52, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v53, 0xbfb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v53, v53
	v_ldexp_f32 v53, v53, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v54, null, v53, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v55, v54
	v_fma_f32 v56, -v54, v55, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v56, v55
	v_div_scale_f32 v56, vcc_lo, v52, v53, v52
	v_mul_f32_e32 v57, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v54, v57, v56
	v_fmac_f32_e32 v57, v58, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v54, v57, v56
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v56, v84, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v54, v54, v55, v57
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v55, 0x60, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	buffer_load_u16 v55, v55, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v55, v56, v55, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v241, v55, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v56, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v56, v56
	v_ldexp_f32 v56, v56, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v57, null, v56, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v58, v57
	v_fma_f32 v59, -v57, v58, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v58
	v_div_scale_f32 v59, vcc_lo, v55, v56, v55
	v_mul_f32_e32 v60, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v57, v60, v59
	v_fmac_f32_e32 v60, v61, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v57, -v57, v60, v59
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v59, v83, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v58, v57, v58, v60
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v57, 0x6c, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v56, v58, v56, v55
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	v_add_nc_u32_e32 v58, 0x7c, v3
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	v_cndmask_b32_e64 v58, 0x80000000, v58, s2
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v57, 16, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v57, v59, v57, v240
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v58, 16, v58
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v59, v240, v57, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v59
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v59
	v_exp_f32_e32 v57, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v57, v57, v60
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v60, 1.0, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v57, null, v60, v60, v59
	v_rcp_f32_e32 v61, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v57, v61, 1.0
	v_fmac_f32_e32 v61, v62, v61
	v_div_scale_f32 v62, vcc_lo, v59, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v63, v62, v61
	v_fma_f32 v64, -v57, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v61
	v_fma_f32 v57, -v57, v63, v62
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v62, v212, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v61, v57, v61, v63
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v57, 0x68, v3
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v57, 16, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v57, v62, v57, v239
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v62, v239, v57, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v62
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v62
	v_exp_f32_e32 v57, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v57, v57, v63
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v63, 1.0, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v57, null, v63, v63, v62
	v_rcp_f32_e32 v64, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v57, v64, 1.0
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, vcc_lo, v62, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v65, v64
	v_fma_f32 v67, -v57, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v64
	v_fma_f32 v57, -v57, v66, v65
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v65, v133, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v64, v57, v64, v66
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v57, 0x74, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v55, v64, v63, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v57, v65, v57, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v238, v57, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v57, v57, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v66, 1.0, v57
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v57, null, v66, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v57
	v_fma_f32 v68, -v57, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v65, v66, v65
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v57, v69, v68
	v_fmac_f32_e32 v69, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v57, -v57, v69, v68
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v68, v132, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v67, v57, v67, v69
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v57, 0x70, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v57, v68, v57, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v237, v57, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v57, v57, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v69, 1.0, v57
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v57, null, v69, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v57
	v_fma_f32 v71, -v57, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v68, v69, v68
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v57, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v57, v72, v71
	v_div_fmas_f32 v70, v57, v70, v72
	v_div_fixup_f32 v57, v54, v53, v52
	v_div_fixup_f32 v54, v61, v60, v59
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v59, v131, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v52, v67, v66, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v58, v59, v58, v236
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v58, v236, v58, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v58
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v58
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v59, v59, v60
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v59, 1.0, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v60, null, v59, v59, v58
	v_rcp_f32_e32 v61, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v60, v61, 1.0
	v_fmac_f32_e32 v61, v62, v61
	v_div_scale_f32 v62, vcc_lo, v58, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v63, v62, v61
	v_fma_f32 v64, -v60, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v61
	v_fma_f32 v60, -v60, v63, v62
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v62, v126, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v60, v60, v61, v63
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v61, 0x78, v3
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	buffer_load_u16 v61, v61, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v61, 16, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v61, v62, v61, v235
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v61, v235, v61, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v62, 0xbfb8aa3b, v61
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v61
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v62, v62, v63
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v53, v70, v69, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v63, null, v62, v62, v61
	v_rcp_f32_e32 v64, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v63, v64, 1.0
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, vcc_lo, v61, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v65, v64
	v_fma_f32 v67, -v63, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v64
	v_fma_f32 v63, -v63, v66, v65
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v65, v130, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v63, v63, v64, v66
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v64, 0x84, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v63, v63, v62, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v64, 0x80000000, v64, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v62, v60, v59, v58
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v64, v64, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v64, v65, v64, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v64, v234, v64, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v65, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v66, null, v65, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v64, v65, v64
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v66, v69, v68
	v_fmac_f32_e32 v69, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v66, v69, v68
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v68, v129, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v67, 0x80, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v60, v66, v65, v64
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v65, v124, v2 :: v_dual_add_nc_u32 v64, 0x94, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v67, v67, s[4:7], 0 offen
	v_cndmask_b32_e64 v64, 0x80000000, v64, s2
	buffer_load_u16 v64, v64, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v67, 16, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v67, v68, v67, v233
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v233, v67, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v64, v65, v64, v230
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v68, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v64, v230, v64, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v65, 0xbfb8aa3b, v64
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v69, null, v68, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v69
	v_fma_f32 v71, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v67, v68, v67
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v69, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v69, -v69, v72, v71
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v71, v127, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v69, v69, v70, v72
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v70, 0x8c, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v61, v69, v68, v67
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v70, v71, v70, v232
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v70, v232, v70, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v70
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v70
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v72
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v72, null, v71, v71, v70
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v70, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v72, -v72, v75, v74
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v74, v125, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v72, v72, v73, v75
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v73, 0x88, v3
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	buffer_load_u16 v73, v73, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v73, v74, v73, v231
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v73, v231, v73, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v74, 0xbfb8aa3b, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v74
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v73
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v74, v74, v75
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v74, 1.0, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v75, null, v74, v74, v73
	v_rcp_f32_e32 v76, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v75, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v73, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v78, v77, v76
	v_div_fixup_f32 v58, v72, v71, v70
	v_fma_f32 v79, -v75, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v75, -v75, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v75, v75, v76, v78
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v59, v75, v74, v73
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v66, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v65, null, v66, v66, v64
	v_rcp_f32_e32 v67, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v65, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v64, v66, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v65, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v67
	v_fma_f32 v65, -v65, v69, v68
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v68, v122, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v67, v65, v67, v69
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v65, 0x90, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v64, v67, v66, v64
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	v_add_nc_u32_e32 v66, 0xac, v3
	buffer_load_u16 v65, v65, s[4:7], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v65, 16, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v65, v68, v65, v228
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v228, v65, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v43, v43, v66, v223
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v68, 0xbfb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v223, v43, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v66, 0xbfb8aa3b, v43
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v69, null, v68, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v69
	v_fma_f32 v71, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v65, v68, v65
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v69, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v72, v71
	v_div_fmas_f32 v69, v69, v70, v72
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v70, 0x9c, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v65, v69, v68, v65
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v46, v46, v70, v227
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v70, v227, v46, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v70
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v70
	v_exp_f32_e32 v46, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v46, v46, v71
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v71, 1.0, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v46, null, v71, v71, v70
	v_rcp_f32_e32 v72, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v46, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v70, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v72
	v_fma_f32 v75, -v46, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v72
	v_fma_f32 v46, -v46, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v72, v46, v72, v74
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v46, 0x98, v3
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v46, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v42, v42, v46, v226
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v226, v42, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v42
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v42
	v_exp_f32_e32 v46, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v46, v46, v73
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v46, 1.0, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v73, null, v46, v46, v42
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v73, v74, 1.0
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v42, v46, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v74
	v_fma_f32 v77, -v73, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v74
	v_fma_f32 v73, -v73, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v73, v74, v76
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v74, 0xa4, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v46, v73, v46, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v74
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v45, v45, v74, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v74, v225, v45, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v45, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v75, 1.0, v45
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v45, null, v75, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v45
	v_fma_f32 v77, -v45, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v74, v75, v74
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v45, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v78, v77
	v_div_fmas_f32 v76, v45, v76, v78
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v45, 0xa0, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v42, v76, v75, v74
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v44, v44, v45, v224
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v224, v44, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v45, 0xbfb8aa3b, v44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v44
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v45, v45, v77
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v77, 1.0, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v45, null, v77, v77, v44
	v_rcp_f32_e32 v78, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v45, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v44, v77, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v45, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v45, -v45, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v78, v45, v78, v80
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v45, v72, v71, v70
	v_div_fixup_f32 v44, v78, v77, v44
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v43
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v67
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v67, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v66, null, v67, v67, v43
	v_rcp_f32_e32 v68, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v66, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v43, v67, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v66, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v68
	v_fma_f32 v66, -v66, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v68, v66, v68, v70
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v66, 0xa8, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v43, v68, v67, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v37, v37, v66, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v222, v37, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v66, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v69, null, v66, v66, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v69
	v_fma_f32 v71, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v37, v66, v37
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v69, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v72, v71
	v_div_fmas_f32 v69, v69, v70, v72
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v70, 0xb4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v66, v69, v66, v37
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v35, v35, v70, v221
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v221, v35, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v70, 0xbfb8aa3b, v35
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v35
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v71
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v71, null, v70, v70, v35
	v_rcp_f32_e32 v72, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v71, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v35, v70, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v72
	v_fma_f32 v75, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v72
	v_fma_f32 v71, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v71, v71, v72, v74
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v72, 0xb0, v3
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v72, 16, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v34, v34, v72, v220
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v220, v34, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v72, 0xbfb8aa3b, v34
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v34
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v72, v72, v73
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v72, 1.0, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v73, null, v72, v72, v34
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v73, v74, 1.0
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v34, v72, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v74
	v_fma_f32 v77, -v73, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v74
	v_fma_f32 v73, -v73, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v73, v74, v76
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v74, 0xbc, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v37, v73, v72, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v34, v71, v70, v35
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v74
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v33, v33, v74, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v219, v33, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v74, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v74
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v74, v74
	v_ldexp_f32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v74, 1.0, v74
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v75, null, v74, v74, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v77, -v75, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v33, v74, v33
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v75, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v78, v77
	v_div_fmas_f32 v75, v75, v76, v78
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v76, 0xb8, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v33, v75, v74, v33
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v24, v24, v76, v218
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v218, v24, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v76, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v76
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v24
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v76, v76, v77
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v76, 1.0, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v77, null, v76, v76, v24
	v_rcp_f32_e32 v78, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v77, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v24, v76, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v77, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v77, -v77, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v77, v77, v78, v80
	v_div_fixup_f32 v35, v77, v76, v24
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v24, 0xc4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v24, v29, v24, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v217, v24, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v29, v29
	v_ldexp_f32 v29, v29, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v67, null, v29, v29, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v24, v29, v24
	v_mul_f32_e32 v70, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v67, v70, v69
	v_fmac_f32_e32 v70, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v70, v69
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v68, 0xc0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v26, v68, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v216, v26, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v68, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v69, null, v68, v68, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v69
	v_fma_f32 v71, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v26, v68, v26
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v69, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v72, v71
	v_div_fmas_f32 v69, v69, v70, v72
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v70, 0xcc, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v25, v25, v70, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v210, v25, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v70, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v73, 1.0, v70
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v70, null, v73, v73, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v72, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v25, v73, v25
	v_mul_f32_e32 v74, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v70, v74, v72
	v_fmac_f32_e32 v74, v75, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v74, v72
	v_div_fmas_f32 v74, v70, v71, v74
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v70, 0xc8, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v19, v70, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v209, v19, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v70, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v71, null, v70, v70, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v75, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v75, v72
	v_div_scale_f32 v75, vcc_lo, v19, v70, v19
	v_mul_f32_e32 v76, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v71, v76, v75
	v_fmac_f32_e32 v76, v77, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v76, v75
	v_div_fmas_f32 v75, v71, v72, v76
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v71, 0xd4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v70, v75, v70, v19
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	buffer_load_u16 v71, v71, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v71, 16, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v18, v18, v71, v208
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v208, v18, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v18
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v72
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v76, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v71, null, v76, v76, v18
	v_rcp_f32_e32 v72, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v71, v72, 1.0
	v_fmac_f32_e32 v72, v77, v72
	v_div_scale_f32 v77, vcc_lo, v18, v76, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v72
	v_fma_f32 v79, -v71, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v72
	v_fma_f32 v71, -v71, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v77, v71, v72, v78
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v71, 0xd0, v3
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	buffer_load_u16 v71, v71, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v71, 16, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v15, v15, v71, v207
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v207, v15, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v15
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v72
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v78, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v71, null, v78, v78, v15
	v_rcp_f32_e32 v72, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v71, v72, 1.0
	v_fmac_f32_e32 v72, v79, v72
	v_div_scale_f32 v79, vcc_lo, v15, v78, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v72
	v_fma_f32 v81, -v71, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v72
	v_fma_f32 v71, -v71, v80, v79
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v79, v71, v72, v80
	v_div_fixup_f32 v72, v69, v68, v26
	v_div_fixup_f32 v71, v67, v29, v24
	v_div_fixup_f32 v67, v77, v76, v18
	v_div_fixup_f32 v69, v74, v73, v25
	v_div_fixup_f32 v68, v79, v78, v15
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v15, 0xdc, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v14, v14, v15, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v206, v14, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v18, null, v15, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v18
	v_fma_f32 v24, -v18, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v24, v19
	v_div_scale_f32 v24, vcc_lo, v14, v15, v14
	v_mul_f32_e32 v25, v24, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v18, v25, v24
	v_fmac_f32_e32 v25, v26, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v25, v24
	v_div_fmas_f32 v18, v18, v19, v25
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 0xd8, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v10, v10, v19, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v205, v10, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v24, null, v19, v19, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v24
	v_fma_f32 v26, -v24, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v10, v19, v10
	v_mul_f32_e32 v29, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v24, v29, v26
	v_fmac_f32_e32 v29, v73, v25
	v_div_fixup_f32 v73, v18, v15, v14
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v14, 0xe4, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v24, -v24, v29, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v24, v24, v25, v29
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v14, v14, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v13, v13, v14, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v204, v13, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v14, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v14, v14
	v_ldexp_f32 v14, v14, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v15, null, v14, v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v15
	v_fma_f32 v25, -v15, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v25, v18
	v_div_scale_f32 v25, vcc_lo, v13, v14, v13
	v_mul_f32_e32 v26, v25, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v15, v26, v25
	v_fmac_f32_e32 v26, v29, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v26, v25
	v_div_fmas_f32 v15, v15, v18, v26
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v18, 0xe0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v12, v12, v18, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v203, v12, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, null, v18, v18, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v29, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v29, v26
	v_div_scale_f32 v29, vcc_lo, v12, v18, v12
	v_mul_f32_e32 v74, v29, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v25, v74, v29
	v_fmac_f32_e32 v74, v75, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v74, v29
	v_div_fmas_f32 v25, v25, v26, v74
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v26, 0xec, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v11, v11, v26, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v202, v11, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v29, null, v26, v26, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v74, v29
	v_fma_f32 v75, -v29, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v11, v26, v11
	v_mul_f32_e32 v76, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v29, v76, v75
	v_fmac_f32_e32 v76, v77, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v29, v76, v75
	v_div_fmas_f32 v29, v29, v74, v76
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v74, 0xe8, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v11, v29, v26, v11
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v116, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v9, v9, v74, v201
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v201, v9, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v74, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v74
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v9
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v74, v74, v75
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v77, 1.0, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v74, null, v77, v77, v9
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v74, v75, 1.0
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v9, v77, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v76, v75
	v_fma_f32 v79, -v74, v78, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v75
	v_fma_f32 v74, -v74, v78, v76
	v_div_fixup_f32 v76, v24, v19, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v10, 0xf4, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v78, v74, v75, v78
	v_div_fixup_f32 v74, v25, v18, v12
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v75, v15, v14, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v9, v78, v77, v9
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v6, v6, v10, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v153, v6, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v10, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v10, v10
	v_ldexp_f32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v12, null, v10, v10, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v13, v12
	v_fma_f32 v14, -v12, v13, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v14, v13
	v_div_scale_f32 v14, vcc_lo, v6, v10, v6
	v_mul_f32_e32 v15, v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v12, v15, v14
	v_fmac_f32_e32 v15, v18, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v15, v14
	v_div_fmas_f32 v12, v12, v13, v15
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v13, 0xf0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	buffer_load_u16 v13, v13, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v5, v5, v13, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v151, v5, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v5, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v5, v5, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v14, 1.0, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v5, null, v14, v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v15, v5
	v_fma_f32 v18, -v5, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v18, v15
	v_div_scale_f32 v18, vcc_lo, v13, v14, v13
	v_mul_f32_e32 v19, v18, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v5, v19, v18
	v_fmac_f32_e32 v19, v24, v15
	.loc	1 179 26 is_stmt 1              ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v24, s1, v134, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v5, -v5, v19, v18
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v18, v113, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v15, v5, v15, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v5, 4, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v19, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v19, v19, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v18, v5, v137
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_or_b32_e32 v18, s0, v134
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v137, v5, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v18, v18, s26, 1
	scratch_load_b32 v137, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v5, v7
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.l, v5.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v19, v18, v136
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v140, v2
	scratch_load_b32 v140, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v136, v18, s2
	scratch_load_b32 v136, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v18, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 12, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v18, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v7, v7
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v18, v18, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v18, v0, v135
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, 8, v24
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v19, v0, v110
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.h, 0
	v_mov_b16_e32 v0.l, v7.h
	v_mov_b16_e32 v25.h, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v5, v25, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v135, v18, s2
	v_cndmask_b32_e64 v18, v110, v19, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v19, 1, v0
	scratch_load_b32 v135, off, off         ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v5, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v8, 16, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v19, v7, v19, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v7, v18, v16 :: v_dual_mul_f32 v16, v112, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v18, v139, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v5.h
	v_cmp_o_f32_e64 s1, v5, v5
	v_cmp_o_f32_e64 s3, v7, v7
	scratch_load_b32 v139, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v16, v8, v109
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v16, 20, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v109, v8, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v8, v21
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v21, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v21, v21, v2 :: v_dual_lshlrev_b32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v16, v18, v16, v108
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v18, 1, v0
	v_add3_u32 v18, v5, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v108, v16, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v7.h
	v_mov_b16_e32 v16.h, v0.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v5, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v5.h, 0x7fff, v25.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v16, 1, v16
	v_cndmask_b16 v5.l, 0x7fff, v19.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v111, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_add3_u32 v16, v7, v16, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v18.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v18, v138, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v8, v8
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v25, v99, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v7.l, 0x7fff, v16.h, s3
	v_and_b32_e32 v16, 1, v0
	scratch_load_b32 v138, off, off offset:12 ; 4-byte Folded Reload
	v_add3_u32 v16, v17, v16, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 24, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v18, v17, v200
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v18, 28, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v200, v17, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v17, v22
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v22, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v22, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v19, v18, v107
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v19.l, v8.h
	v_mov_b16_e32 v19.h, v0.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v107, v18, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v8, v19, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v8, 36, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v21, v8, v199
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.l, 0x7fff, v19.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v19, 32, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.h, 0x7fff, v16.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v18, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v105, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v199, v21, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v17, v17
	v_mov_b16_e32 v0.l, v16.h
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v104, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v20, v19, v198
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v20, 1, v0
	v_add3_u32 v20, v16, v20, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v18, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v198, v19, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v19.l, v17.h
	v_mov_b16_e32 v19.h, v0.h
	v_mov_b16_e32 v0.l, v16.h
	v_cmp_o_f32_e64 s1, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v17, v19, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v17, v18, v27 :: v_dual_add_nc_u32 v18, 44, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v146, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v17, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v21, v18, v197
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v21, 1, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v197, v18, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v21, v16, v21, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v16, 40, v24
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v18, v18, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v18.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v16, v22, v16, v196
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v17.h
	v_mov_b16_e32 v22.h, v0.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v196, v16, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v16.h, 0x7fff, v20.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v20, 52, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v22
	v_cndmask_b16 v16.l, 0x7fff, v19.h, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v23, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v22, v17, v22, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v21.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v102, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v17.l, 0x7fff, v22.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v101, v2
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v23, v100, v2 :: v_dual_lshlrev_b32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v21, v20, v195
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 48, v24
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v141
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v0
	v_add3_u32 v22, v18, v22, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v195, v20, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v20, v141, v21, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.l, v19.h
	v_mov_b16_e32 v21.h, v0.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v18, v18, v31
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v31, v214, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v21, 1, v21
	v_mov_b16_e32 v0.l, v18.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v18, v18
	v_add3_u32 v21, v19, v21, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v20, v32
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v20, 60, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v149, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v19, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v23, v20, v140
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 56, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v140, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v20, v20, v41
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v41, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v41, v41, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v25, v23, v139
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v0
	v_mov_b16_e32 v0.l, v20.h
	v_add3_u32 v25, v18, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v139, v23, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.l, v19.h
	v_mov_b16_e32 v23.h, v0.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v26, v18, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 0x44, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v23
	v_cndmask_b16 v18.h, 0x7fff, v22.h, vcc_lo
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v119, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v19, v23, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v25.h, s1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v25, 0x4c, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v26, v26
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.l, 0x7fff, v23.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v23, v118, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v40, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v40, v40, v2 :: v_dual_lshlrev_b32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v138
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 64, v24
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v137
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v0
	v_add3_u32 v23, v20, v23, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v138, v21, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v21, v137, v22, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v26.h
	v_mov_b16_e32 v22.h, v0.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v20, v20, v38 :: v_dual_mul_f32 v21, v21, v39
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:92
	scratch_load_b32 v39, off, off offset:84
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v22
	v_mov_b16_e32 v0.l, v20.h
	v_cmp_o_f32_e64 s1, v20, v20
	v_cmp_o_f32_e64 s3, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v22, v26, v22, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v26, v145, v2
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v26, v25, v136
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0x48, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v136, v25, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v39, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v27, v26, v135
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v27, 1, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v135, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v20, v27, 0x7fff
	v_mov_b16_e32 v20.l, v21.h
	v_mov_b16_e32 v20.h, v0.h
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v28, v21, v20, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v22, v25, v36
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v25, 0x50, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.h, 0x7fff, v23.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v23, v26, v51 :: v_dual_mul_f32 v26, v117, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.h, 0x7fff, v27.h, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v144, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v22.h
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_cmp_o_f32_e64 s0, v23, v23
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.l, 0x7fff, v28.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v143, v2
	v_mul_f32_e32 v36, v120, v2
	scratch_load_b32 v51, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v51, v51, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v26, v25, v193
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0x54, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v193, v25, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v27, v26, v194
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v27, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v27, v22, v27, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v194, v26, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v26.l, v23.h
	v_mov_b16_e32 v26.h, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v22, v22, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.h, v0.h
	v_and_b32_e32 v26, 1, v26
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v38, v38, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v22.h
	v_cmp_o_f32_e64 s1, v22, v22
	v_add3_u32 v26, v23, v26, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v23, v25, v50
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v25, 0x5c, v24
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v50, s27, v115
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_mov_b32 s27, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v23, v23
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v50, s33, s26, v50
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s26, s6
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v28, v25, v192
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v28, 0x58, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v29, v28, v191
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v29, v22, v29, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v192, v25, s2
	v_cndmask_b32_e64 v25, v191, v28, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.l, v23.h
	v_mov_b16_e32 v28.h, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v30, v22, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.h, 0x7fff, v27.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v27, 0x64, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v28
	v_cndmask_b16 v22.l, 0x7fff, v26.h, s0
	v_mov_b16_e32 v0.l, v30.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v25, v48
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v23, v28, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v29.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v29, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v26, 1, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v28.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v28, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_add3_u32 v26, v30, v26, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v30, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v25, v25
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v29, v29, v2
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v28, v28, v2 :: v_dual_lshlrev_b32 v27, 16, v27
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v30, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v27, v28, v27, v190
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v28, 0x60, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v190, v27, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v27, v27, v57
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v27.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v29, v28, v189
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v29.l, v25.h
	v_mov_b16_e32 v29.h, v0.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v189, v28, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v29, v25, v29, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v25, 0x68, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v30, v25, v188
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v30, 0x6c, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v31, v30, v187
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v188, v25, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v25.h, 0x7fff, v26.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v26, v28, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v187, v30, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v30, 1, v0
	v_cndmask_b16 v25.l, 0x7fff, v29.h, s0
	v_cmp_o_f32_e64 s0, v26, v26
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v29, v31, v55
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v31, v213, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v27, v30, 0x7fff
	v_mov_b16_e32 v27.l, v26.h
	v_mov_b16_e32 v27.h, v0.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v28, v28, v54
	v_and_b32_e32 v55, 16, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v27, 1, v27
	v_mov_b16_e32 v0.l, v28.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v27, v26, v27, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0x70, v24
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v31, v26, v186
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v31, 0x74, v24
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v32, v31, v185
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v186, v26, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s0
	v_cndmask_b16 v26.h, 0x7fff, v30.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v185, v31, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v0
	v_cmp_o_f32_e64 s0, v29, v29
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v30, v32, v53
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v147, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v31, v28, v31, 0x7fff
	v_mov_b16_e32 v28.l, v29.h
	v_mov_b16_e32 v28.h, v0.h
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v29, v28, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v29, 0x78, v24
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v32, v29, v184
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v32, 0x7c, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v184, v29, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v29, v29, v63
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v36, v32, v183
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v36, v27, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s0
	v_cmp_o_f32_e64 s0, v30, v30
	v_cndmask_b16 v27.h, 0x7fff, v31.h, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v183, v32, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v32.l, v30.h
	v_mov_b16_e32 v32.h, v0.h
	v_mov_b16_e32 v0.l, v36.h
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v52, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v32, 1, v32
	v_and_b32_e32 v31, 1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v32, v30, v32, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v30, 0x80, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v31, v36, v31, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v36, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v52, v52, v2
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v36, v36, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v36, v30, v182
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v36, 0x84, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v182, v30, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v30, v30, v61
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v38, v36, v181
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v38, v28, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v28.h, 0x7fff, v31.h, vcc_lo
	v_cndmask_b16 v28.l, 0x7fff, v32.h, s0
	v_cmp_o_f32_e64 s0, v29, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v181, v36, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v29.h
	v_mov_b16_e32 v36.h, v0.h
	v_mov_b16_e32 v0.l, v38.h
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v31, v31, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v36, 1, v36
	v_and_b32_e32 v32, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v0.l, v31.h
	v_add3_u32 v36, v29, v36, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v29, 0x88, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v32, v38, v32, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v38, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v38, v38, v2 :: v_dual_lshlrev_b32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v38, v29, v180
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v38, 0x8c, v24
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v39, v38, v179
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v180, v29, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.h, 0x7fff, v32.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_cndmask_b16 v29.l, 0x7fff, v36.h, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v179, v38, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v38, 1, v0
	v_cmp_o_f32_e64 s0, v30, v30
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v36, v39, v59
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v39, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v32, v32, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v38, v31, v38, 0x7fff
	v_mov_b16_e32 v31.l, v30.h
	v_mov_b16_e32 v31.h, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v0.l, v32.h
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v31, v30, v31, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v30, 0x90, v24
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v39, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v39, v30, v178
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v39, 0x94, v24
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v39, v40, v39, v177
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v178, v30, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.l, 0x7fff, v31.h, s0
	v_cndmask_b16 v30.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v177, v39, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v0
	v_cmp_o_f32_e64 s0, v36, v36
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v38, v40, v65
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v40, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v39, v32, v39, 0x7fff
	v_mov_b16_e32 v32.l, v36.h
	v_mov_b16_e32 v32.h, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v36, v32, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v36, 0x98, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v40, v40, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v40, v36, v176
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v40, 0x9c, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v176, v36, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v36, v36, v46
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v40, v40, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v46, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v40, 16, v40
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v40, v41, v40, v175
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v41, v31, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s0
	v_cmp_o_f32_e64 s0, v38, v38
	v_cndmask_b16 v31.h, 0x7fff, v39.h, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v175, v40, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v40.l, v38.h
	v_mov_b16_e32 v40.h, v0.h
	v_mov_b16_e32 v0.l, v41.h
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v45, v32, v45 :: v_dual_and_b32 v40, 1, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v6, v12, v10, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v45.h
	v_add3_u32 v40, v38, v40, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v38, 0xa0, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v39, v41, v39, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v41, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v40.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e64 s0, v36, v36
	v_and_b32_e32 v40, 1, v0
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v45, v40, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v45, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v41, v41, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v15, v14, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v41, v38, v174
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v41, 0xa4, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v174, v38, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v38, v38, v44
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v46, v46, v2 :: v_dual_lshlrev_b32 v41, 16, v41
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v44, v44, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v41, v46, v41, v173
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v46, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v173, v41, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.l, v36.h
	v_mov_b16_e32 v41.h, v0.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v39, v39, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v41, 1, v41
	v_mov_b16_e32 v0.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v36, v41, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v36, 0xa8, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v42, 1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v42, v39, v42, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v46, v46, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v44, v36, v172
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v44, 0xac, v24
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v45, v44, v171
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v172, v36, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_mov_b16_e32 v39.l, v38.h
	v_mov_b16_e32 v39.h, v0.h
	v_cndmask_b16 v36.l, 0x7fff, v41.h, s0
	v_cmp_o_f32_e64 s0, v38, v38
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v171, v44, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v39
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v41, v45, v66
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v45, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v40, v40, v43
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v43, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v39, v38, v39, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v38, 0xb0, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v40.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v44, v44, v2
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v45, v45, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v44, v38, v170
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v44, 0xb4, v24
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v45, v44, v169
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v170, v38, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v38.h, 0x7fff, v42.h, vcc_lo
	v_and_b32_e32 v42, 1, v0
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s0
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v169, v44, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v42, v40, v42, 0x7fff
	v_mov_b16_e32 v40.l, v41.h
	v_mov_b16_e32 v40.h, v0.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:112 ; 4-byte Folded Reload
	v_mul_f32_e32 v43, v43, v2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v39, v39, v34
	v_dual_mul_f32 v37, v45, v37 :: v_dual_and_b32 v40, 1, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v34.h, 0x7fff, v42.h, vcc_lo
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v42, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v39.h
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_add3_u32 v40, v41, v40, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v41, 0xb8, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v45, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v34.l, 0x7fff, v40.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v37, v37
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v44, v44, v2
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v45, v45, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v41, v43, v41, v168
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v43, 0xbc, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v168, v41, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v35, v41, v35
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v41, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v39, v41, 0x7fff
	v_mov_b16_e32 v39.l, v37.h
	v_mov_b16_e32 v39.h, v0.h
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v37, v39, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v37, 0xc0, v24
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v43, 16, v43
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v43, v44, v43, v167
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v167, v43, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v43, off, off offset:172 ; 4-byte Folded Reload
	v_mul_f32_e32 v42, v42, v2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v40, v40, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.h, 0x7fff, v41.h, vcc_lo
	v_cndmask_b16 v33.l, 0x7fff, v39.h, s0
	v_cmp_o_f32_e64 s0, v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v0.l, v40.h
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_and_b32_e32 v41, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v40, v41, 0x7fff
	v_mov_b16_e32 v40.l, v35.h
	v_mov_b16_e32 v40.h, v0.h
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v35, v40, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v35, 0xc8, v24
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v37, v42, v37, v166
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v42, 0xc4, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v166, v37, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v37, v37, v72
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v44, v44, v2
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v43, v43, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v35, 16, v35
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v42, v43, v42, v165
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v43, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v165, v42, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v42, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v39, v39, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v39.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v43, v43, v2
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v42, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v35, v42, v35, v164
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v42, 0xcc, v24
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v42, v43, v42, v163
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v164, v35, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v35.l, 0x7fff, v40.h, s0
	v_cndmask_b16 v35.h, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v163, v42, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v42, 1, v0
	v_cmp_o_f32_e64 s0, v37, v37
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v41, v43, v70
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v43, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v40, v40, v69
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v42, v39, v42, 0x7fff
	v_mov_b16_e32 v39.l, v37.h
	v_mov_b16_e32 v39.h, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v0.l, v40.h
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v37, v39, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v37, 0xd0, v24
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v43, v43, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v37, v43, v37, v162
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v43, 0xd4, v24
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v43, v44, v43, v161
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v162, v37, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v37.l, 0x7fff, v39.h, s0
	v_cndmask_b16 v37.h, 0x7fff, v42.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v161, v43, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v43, 1, v0
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v42, v44, v68
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v43, v40, v43, 0x7fff
	v_mov_b16_e32 v40.l, v41.h
	v_mov_b16_e32 v40.h, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v41, v40, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v41, 0xdc, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v44, v44, v2 :: v_dual_lshlrev_b32 v41, 16, v41
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v41, v44, v41, v159
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v44, 0xd8, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v45, v44, v160
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v45, v39, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v159, v41, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v39.h, 0x7fff, v43.h, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v160, v44, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v45.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v44, 0xe4, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v40, v40, v73 :: v_dual_mul_f32 v41, v41, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v43, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v42, v42
	v_mov_b16_e32 v0.l, v40.h
	v_cmp_o_f32_e64 s1, v40, v40
	v_add3_u32 v43, v45, v43, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v45, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v41, v41
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v45, v45, v2 :: v_dual_lshlrev_b32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v45, v44, v157
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v45, 0xe0, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v157, v44, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v44, v44, v75
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v45, v46, v45, v158
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.l, v42.h
	v_mov_b16_e32 v46.h, v0.h
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v46, v42, v46, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v158, v45, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v45, 1, v0
	v_mov_b16_e32 v0.l, v44.h
	v_add3_u32 v45, v40, v45, 0x7fff
	v_mov_b16_e32 v40.l, v41.h
	v_mov_b16_e32 v40.h, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v47, v41, v40, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v43.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v43, v42, v74 :: v_dual_and_b32 v42, 1, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_cndmask_b16 v41.h, 0x7fff, v45.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v45, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s0
	v_add3_u32 v42, v44, v42, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v44, 0xec, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.l, 0x7fff, v47.h, s3
	v_mov_b16_e32 v49.l, v43.h
	v_cmp_o_f32_e64 s3, v43, v43
	v_cndmask_b16 v42.h, 0x7fff, v42.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v49, 1, v49
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v49, v43, v49, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v49.h, s3
	v_mov_b16_e32 v49.h, v0.h
	v_cmp_eq_u32_e64 s3, 0, v55
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v45, v45, v2 :: v_dual_lshlrev_b32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v46, v45, v44, v155
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v44, 0xe8, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v45, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v45, v45, v2 :: v_dual_lshlrev_b32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v45, v44, v156
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v45, 0xfc, v3
	v_add_nc_u32_e32 v3, 0xf8, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v156, v44, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v44, v9
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.l, v9.h
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v49, v9, v49, 0x7fff
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v47, v4, v45, v123
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v45, v3, s[4:7], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v155, v46, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v46, 0xf4, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v123, v47, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v4, v4, v11 :: v_dual_add_nc_u32 v47, 0xf0, v24
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	s_clause 0x1
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v4.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v14, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v14, v4, v14, 0x7fff
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v1, v1, v45, v121
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v45, 0xf8, v24
	v_add_nc_u32_e32 v24, 0xfc, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v121, v1, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v48, 0xbfb8aa3b, v1 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v46, v51, v46, v152
	v_fma_f32 v47, v52, v47, v154
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v48
	v_cndmask_b32_e64 v48, 0, 0x42800000, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v4, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v46, v152, v46, s2
	v_cndmask_b32_e64 v47, v154, v47, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v6, v46, v6 :: v_dual_mul_f32 v13, v47, v13
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v48, v48
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v6.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v43, v43
	v_ldexp_f32 v11, v48, v11
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v43, v43, v48
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v48, 1, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v10, null, v11, v11, v3
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v43, 1.0, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v44, v10
	v_div_scale_f32 v12, null, v43, v43, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v15, v12
	v_fma_f32 v4, -v10, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v44, v4, v44
	v_div_scale_f32 v4, vcc_lo, v3, v11, v3
	v_fma_f32 v51, -v12, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v52, v4, v44 :: v_dual_fmac_f32 v15, v51, v15
	v_div_scale_f32 v51, s1, v1, v43, v1
	v_fma_f32 v54, -v10, v52, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v53, v51, v15 :: v_dual_fmac_f32 v52, v54, v44
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	scratch_load_b32 v54, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v46, -v12, v53, v51
	v_fma_f32 v4, -v10, v52, v4
	v_fmac_f32_e32 v53, v46, v15
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v46, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v4, v4, v44, v52
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v12, -v12, v53, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v4, v11, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v13.h
	v_mov_b16_e32 v4.h, v0.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v12, v12, v15, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b16_e32 v9.h, v0.h
	v_cndmask_b32_e64 v11, v23, v21, s3
	v_and_b32_e32 v4, 1, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v1, v12, v43, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v12, v21, v23, s3
	v_cndmask_b32_e64 v15, v28, v26, s3
	v_cndmask_b32_e64 v23, v33, v38, s3
	v_add3_u32 v4, v13, v4, 0x7fff
	v_cndmask_b32_e64 v21, v36, v31, s3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v54, v54, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v54, v45, v150
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v2, v46, v2
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v150, v10, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v24, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v24, v38, v33, s3
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v1, v10, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v10.h, 0x7fff, v14.h, s0
	v_cndmask_b16 v10.l, 0x7fff, v49.h, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v148, v2, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v9.l, v1.h
	v_cmp_o_f32_e64 s0, v13, v13
	v_cmp_o_f32_e64 s2, v1, v1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v2, v2, v3 :: v_dual_and_b32 v3, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v9
	v_cndmask_b32_e64 v13, v25, v22, s3
	v_cndmask_b32_e64 v14, v22, v25, s3
	v_mov_b16_e32 v0.l, v2.h
	v_add3_u32 v3, v6, v3, 0x7fff
	v_add3_u32 v6, v1, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v2, v2
	v_cndmask_b16 v1.l, 0x7fff, v4.h, s0
	v_and_b32_e32 v0, 1, v0
	v_cndmask_b16 v1.h, 0x7fff, v3.h, vcc_lo
	v_cndmask_b32_e64 v3, v5, v8, s3
	v_cndmask_b32_e64 v4, v16, v7, s3
	v_cndmask_b32_e64 v25, v35, v34, s3
	v_add3_u32 v0, v2, v0, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v6.h, s2
	v_cndmask_b32_e64 v2, v8, v5, s3
	v_cndmask_b32_e64 v5, v7, v16, s3
	v_cndmask_b32_e64 v16, v26, v28, s3
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s1
	v_cndmask_b32_e64 v26, v34, v35, s3
	v_mov_b32_e32 v33, 0x5410
	v_mov_b32_e32 v34, 0x7632
	v_cndmask_b32_e64 v6, v19, v17, s3
	v_cndmask_b32_e64 v7, v17, v19, s3
	v_cndmask_b32_e64 v8, v20, v18, s3
	v_cndmask_b32_e64 v9, v18, v20, s3
	v_cndmask_b32_e64 v19, v32, v30, s3
	v_cndmask_b32_e64 v20, v30, v32, s3
	v_cndmask_b32_e64 v32, v0, v10, s3
	v_cndmask_b32_e64 v0, v10, v0, s3
	v_cndmask_b32_e64 v10, 0x1054, v33, s3
	v_cndmask_b32_e64 v33, 0x3276, v34, s3
	v_cndmask_b32_e64 v18, v27, v29, s3
	v_cndmask_b32_e64 v22, v31, v36, s3
	v_cndmask_b32_e64 v28, v37, v40, s3
	v_lshl_or_b32 v10, v10, 8, v10
	v_lshl_or_b32 v33, v33, 8, v33
	v_cndmask_b32_e64 v30, v39, v41, s3
	v_cndmask_b32_e64 v31, v1, v42, s3
	v_cndmask_b32_e64 v1, v42, v1, s3
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v33, 0x760076, v33
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e64 v17, v29, v27, s3
	v_cndmask_b32_e64 v27, v40, v37, s3
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v33, v33, 4, v33
	v_and_b32_e32 v37, 0x1e0, v114
	v_cndmask_b32_e64 v29, v41, v39, s3
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v34, 0x5040504, v10
	v_and_b32_e32 v33, 0x7060706, v33
	v_permlanex16_b32 v30, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v1, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v38, v50, v48, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_permlanex16_b32 v36, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v37
	v_perm_b32 v0, v3, v2, v34
	v_perm_b32 v1, v3, v2, v33
	v_perm_b32 v2, v5, v4, v34
	v_perm_b32 v3, v5, v4, v33
	v_perm_b32 v4, v7, v6, v34
	v_perm_b32 v5, v7, v6, v33
	v_perm_b32 v6, v9, v8, v34
	v_perm_b32 v7, v9, v8, v33
	v_perm_b32 v8, v12, v11, v34
	v_perm_b32 v9, v12, v11, v33
	v_perm_b32 v10, v14, v13, v34
	v_perm_b32 v11, v14, v13, v33
	v_perm_b32 v12, v16, v15, v34
	v_perm_b32 v13, v16, v15, v33
	v_perm_b32 v14, v18, v17, v34
	v_perm_b32 v15, v18, v17, v33
	v_perm_b32 v16, v20, v19, v34
	v_perm_b32 v17, v20, v19, v33
	v_perm_b32 v18, v22, v21, v34
	v_perm_b32 v19, v22, v21, v33
	v_perm_b32 v20, v24, v23, v34
	v_perm_b32 v21, v24, v23, v33
	v_perm_b32 v22, v26, v25, v34
	v_perm_b32 v23, v26, v25, v33
	v_perm_b32 v24, v28, v27, v34
	v_perm_b32 v25, v28, v27, v33
	v_perm_b32 v26, v30, v29, v34
	v_perm_b32 v27, v30, v29, v33
	v_perm_b32 v28, v35, v31, v34
	v_perm_b32 v29, v35, v31, v33
	v_add_nc_u32_e32 v31, 32, v38
	v_perm_b32 v30, v36, v32, v34
	v_add_nc_u32_e32 v34, 64, v38
	v_cndmask_b32_e32 v35, 0x80000000, v38, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v37, 0x80000000, v31, vcc_lo
	v_perm_b32 v31, v36, v32, v33
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[0:3], v35, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v37, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v34, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v38
	v_add_nc_u32_e32 v1, 0x80, v38
	v_add_nc_u32_e32 v2, 0xa0, v38
	v_add_nc_u32_e32 v3, 0xc0, v38
	v_add_nc_u32_e32 v4, 0xe0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[24:27], 0 offen
	buffer_store_b128 v[16:19], v1, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v3, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v4, s[24:27], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 760
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 760
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 79280
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 760
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
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
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 760
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 264
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
