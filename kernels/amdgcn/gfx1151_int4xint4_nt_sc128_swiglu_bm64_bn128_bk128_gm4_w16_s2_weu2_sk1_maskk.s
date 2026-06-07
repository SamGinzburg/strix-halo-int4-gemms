	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s14, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v9, 3, v0
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshrrev_b32_e32 v65, 1, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v67, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v66, 0xe0, v0
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr75
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v3, 64, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s16, s13, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s13, s13, s12
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s16
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s13
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s17, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s15, s17
	s_xor_b32 s13, s2, s17
	s_cvt_f32_u32 s18, s15
	s_ashr_i32 s13, s13, 31
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v1, 56, v9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s27, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s15
	s_mul_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s6, s18
	s_abs_i32 s18, s2
	s_add_i32 s12, s6, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_hi_u32 s12, s18, s12
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s26, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s19, s12, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s18, s18, s19
	s_add_i32 s19, s12, 1
	s_sub_i32 s20, s18, s15
	s_cmp_ge_u32 s18, s15
	s_cselect_b32 s12, s19, s12
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s12, 1
	s_cmp_ge_u32 s18, s15
	s_cselect_b32 s15, s19, s12
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s18, s14, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s15, s15, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s19, s14, 0x7f
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s14, s14, s18
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s18, s15, s13
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s12, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s17, s18, s17
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s14, s14, 1
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v7, s12, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s17
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[4:5], null, s14, v2, v[1:2]
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s22, s18, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s18, s19, s3
.Ltmp19:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s18, 7
.Ltmp21:
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	s_add_i32 s18, s22, s23
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 6
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s14, v7
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 64, v7
	.loc	1 164 34 is_stmt 1              ; generate_amdgcn.py:164:34
	s_mul_i32 s17, s22, s14
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s19, 0x7f
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	s_mul_i32 s16, s18, s14
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_add_i32 s17, s17, s12
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s20, s3, vcc_lo
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v7, s17, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s20
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s18, s33, s14
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	s_add_i32 s16, s16, s12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e32 v10, 0x80000000, v7, vcc_lo
	.loc	1 164 34 is_stmt 0              ; generate_amdgcn.py:164:34
	v_mad_u64_u32 v[5:6], null, s14, v3, v[1:2]
	.loc	1 162 34 is_stmt 1              ; generate_amdgcn.py:162:34
	v_add3_u32 v6, s12, s18, v4
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	v_add_nc_u32_e32 v4, s16, v4
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s19, 0xff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v8, s17, v5
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	v_add_nc_u32_e32 v5, s16, v5
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_mov_b32 s16, -1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e32 v11, 0x80000000, v8, vcc_lo
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[7:8], v6, s[4:7], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x3
	buffer_load_b64 v[16:17], v10, s[24:27], 0 offen
	buffer_load_b64 v[18:19], v11, s[24:27], 0 offen
	buffer_load_b64 v[22:23], v4, s[24:27], 0 offen
	buffer_load_b64 v[24:25], v5, s[24:27], 0 offen
	v_lshlrev_b32_e32 v5, 2, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v4, 56, v65
	v_lshlrev_b32_e32 v10, 6, v67
	v_lshlrev_b32_e32 v6, 5, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v11, 56, v5
	v_xor_b32_e32 v9, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_or_b32 v5, 0x438, v5, v10
	v_or3_b32 v4, v6, v11, v10
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v6, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v21, 0, v9
	s_waitcnt vmcnt(4)
	ds_store_b64 v21, v[7:8] offset:16384
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v21, v[16:17], v[18:19] offset1:8
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v21, v[22:23], v[24:25] offset0:16 offset1:24
	v_xor_b32_e32 v9, 8, v4
	v_xor_b32_e32 v10, 16, v4
	v_xor_b32_e32 v11, 24, v4
	v_xor_b32_e32 v12, 32, v4
	v_xor_b32_e32 v13, 40, v4
	v_xor_b32_e32 v14, 48, v4
	v_xor_b32_e32 v15, 56, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v74, 8, v4
	v_xor_b32_e32 v75, 16, v4
	v_xor_b32_e32 v76, 24, v4
	v_xor_b32_e32 v77, 32, v4
	v_xor_b32_e32 v78, 40, v4
	v_xor_b32_e32 v79, 48, v4
	v_xor_b32_e32 v80, 56, v4
	s_mov_b32 s16, 0
.LBB0_2:                                ; %Flow321
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v69, 16, v6
	v_xor_b32_e32 v6, 8, v5
	v_xor_b32_e32 v7, 16, v5
	v_xor_b32_e32 v8, 24, v5
	v_xor_b32_e32 v17, 32, v5
	v_xor_b32_e32 v22, 40, v5
	v_xor_b32_e32 v23, 48, v5
	v_xor_b32_e32 v24, 56, v5
	v_bfe_u32 v68, v0, 4, 1
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v16, 0, v5
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v18, 0, v6
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v19, 0, v7
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v20, 0, v8
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v73, 0, v17
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v17, 0, v22
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v71, 0, v23
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v72, 0, v24
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v70, 0, v4
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v40, 0
	s_lshl_b32 s1, s23, 1
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s35, s34, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v4, s15, 8, v66
	v_add3_u32 v6, s33, v69, v67
	s_lshl_b32 s17, s13, 8
	s_lshl_b32 s15, s15, 7
	s_lshl_b32 s13, s13, 7
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v5, s1, v4
	s_add_i32 s18, s23, s15
	v_subrev_nc_u32_e32 v25, s17, v4
	v_add_nc_u32_e32 v4, s18, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v24, s17, v5
	v_add_nc_u32_e32 v5, 32, v6
	v_mul_lo_u32 v27, s34, v6
	v_or_b32_e32 v6, s15, v2
	v_or_b32_e32 v7, s15, v3
	v_subrev_nc_u32_e32 v4, s13, v4
	v_mul_lo_u32 v26, s34, v5
	v_add_nc_u32_e32 v5, s18, v3
	v_subrev_nc_u32_e32 v6, s13, v6
	v_subrev_nc_u32_e32 v7, s13, v7
	v_add_nc_u32_e32 v2, s33, v2
	v_mad_u64_u32 v[3:4], null, s14, v4, s[12:13]
	v_subrev_nc_u32_e32 v5, s13, v5
	s_max_i32 s16, s35, 1
	s_add_i32 s41, s12, 64
	v_sub_nc_u32_e32 v22, s14, v1
	s_lshl_b32 s40, s16, 6
	v_mad_u64_u32 v[4:5], null, s14, v5, s[12:13]
	v_mad_u64_u32 v[5:6], null, s14, v6, s[12:13]
	v_mad_u64_u32 v[6:7], null, s14, v7, s[12:13]
	v_mad_u64_u32 v[7:8], null, s14, v2, s[12:13]
	s_mov_b32 s12, 0
	v_add3_u32 v28, v3, v1, 64
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v26, 1, v26
	v_add3_u32 v29, v4, v1, 64
	v_add3_u32 v30, v5, v1, 64
	v_add3_u32 v31, v6, v1, 64
	v_add3_u32 v32, v7, v1, 64
	v_mov_b32_e32 v1, s12
	v_dual_mov_b32 v2, s13 :: v_dual_lshlrev_b32 v23, 1, v68
	v_dual_mov_b32 v8, s19 :: v_dual_lshlrev_b32 v27, 1, v27
	v_dual_mov_b32 v7, s18 :: v_dual_add_nc_u32 v74, 0, v13
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v75, 0, v14
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v76, 0, v15
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v33, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_lshl_b32 s0, s23, 2
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_add_i32 s13, s41, s12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v77, s12, v32
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e32 vcc_lo, s13, v22
	v_add_nc_u32_e32 v78, 0, v9
	v_add_nc_u32_e32 v125, 0, v10
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	v_dual_cndmask_b32 v77, 0x80000000, v77 :: v_dual_add_nc_u32 v126, 0, v11
	buffer_load_b64 v[123:124], v77, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[107:110], v16 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[111:114], v70 offset1:16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[115:118], v18 offset0:32 offset1:36
	.loc	1 0 0                           ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[119:122], v78 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[111:112], v[107:108], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[111:112], v[109:110], v[1:8] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[107:108], v[1:8] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[119:120], v[115:116], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[119:120], v[117:118], v[85:92] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v119, v26, s[28:31], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[101:108], v[113:114], v[109:110], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[121:122], v[115:116], v[93:100] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[109:112], v19 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[113:116], v125 offset1:16
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v26, 2, v26
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[101:108], v[121:122], v[117:118], v[101:108] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[113:114], v[111:112], v[85:92] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[93:100], v[115:116], v[109:110], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[109:112], v20 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[113:116], v126 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[113:114], v[111:112], v[85:92] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[93:100], v[115:116], v[109:110], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v119, 16, v119
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v130, s12, v31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v122, 0x80000000, v130 :: v_dual_add_nc_u32 v127, 0, v12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[109:112], v73 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[113:116], v127 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[113:114], v[111:112], v[85:92] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[93:100], v[115:116], v[109:110], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[109:112], v17 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[113:116], v74 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[113:114], v[111:112], v[85:92] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[93:100], v[115:116], v[109:110], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[109:112], v71 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[113:116], v75 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[113:114], v[111:112], v[85:92] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[93:100], v[115:116], v[109:110], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[109:112], v72 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[113:116], v76 offset1:16
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[93:100], v[115:116], v[109:110], v[93:100] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[85:92], v[113:114], v[111:112], v[85:92] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v82, v82
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v128, v23, v25
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v110, v80
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v80, v27, s[28:31], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v111, v128, s[36:39], 0 offen offset:4
	buffer_load_u16 v112, v128, s[36:39], 0 offen offset:8
	buffer_load_u16 v113, v128, s[36:39], 0 offen offset:12
	buffer_load_u16 v114, v128, s[36:39], 0 offen offset:16
	buffer_load_u16 v115, v128, s[36:39], 0 offen offset:20
	buffer_load_u16 v116, v128, s[36:39], 0 offen offset:24
	buffer_load_u16 v120, v128, s[36:39], 0 offen offset:28
	buffer_load_u16 v109, v128, s[36:39], 0 offen
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_add_nc_u32_e32 v118, s12, v29
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v103, v119, v103 :: v_dual_cndmask_b32 v118, 0x80000000, v118
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	v_add_nc_u32_e32 v117, s12, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v85, v119, v85
	v_mul_f32_e32 v90, v119, v90
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v129, s12, v30
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v79, v79
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v102, v119, v102
	v_mul_f32_e32 v106, v119, v106
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v94, v94
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v88, v119, v88
	v_mul_f32_e32 v91, v119, v91
	v_mul_f32_e32 v92, v119, v92
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v104, v119, v104
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v25, s0, v25
	s_add_i32 s12, s12, 64
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s40, s12
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v125, 16, v80
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v80, v119, v86 :: v_dual_cndmask_b32 v117, 0x80000000, v117
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v113, 16, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v77, v125, v77
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v78, v125, v78 :: v_dual_lshlrev_b32 v109, 16, v109
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v49, v88, v113 :: v_dual_lshlrev_b32 v88, 16, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v77, v109
	v_dual_fmac_f32 v52, v85, v109 :: v_dual_lshlrev_b32 v77, 16, v111
	v_fmac_f32_e32 v53, v80, v77
	v_dual_fmac_f32 v64, v78, v77 :: v_dual_lshlrev_b32 v77, 16, v112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v78, v119, v87
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v85, v23, v24
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e32 v121, 0x80000000, v129, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v24, s0, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v48, v78, v77
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1
	buffer_load_u16 v109, v85, s[36:39], 0 offen
	buffer_load_u16 v126, v85, s[36:39], 0 offen offset:4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v78, v125, v79
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x3
	buffer_load_u16 v86, v85, s[36:39], 0 offen offset:8
	buffer_load_u16 v87, v85, s[36:39], 0 offen offset:20
	buffer_load_u16 v111, v85, s[36:39], 0 offen offset:12
	buffer_load_u16 v127, v85, s[36:39], 0 offen offset:16
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[79:80], v122, s[24:27], 0 offen
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v60, v78, v77
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1
	buffer_load_u16 v112, v85, s[36:39], 0 offen offset:24
	buffer_load_u16 v85, v85, s[36:39], 0 offen offset:28
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b64 v[77:78], v121, s[24:27], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v89, v119, v89 :: v_dual_mul_f32 v110, v125, v110
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v101, v119, v101 :: v_dual_mul_f32 v122, v125, v83
	v_dual_mul_f32 v105, v119, v105 :: v_dual_mul_f32 v128, v125, v84
	v_mul_f32_e32 v108, v119, v108
	v_dual_mul_f32 v107, v119, v107 :: v_dual_mul_f32 v94, v125, v94
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v119, v125, v81
	v_mul_f32_e32 v121, v125, v82
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_clause 0x1
	buffer_load_b64 v[81:82], v117, s[24:27], 0 offen
	buffer_load_b64 v[83:84], v118, s[24:27], 0 offen
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v96, v125, v96
	v_mul_f32_e32 v98, v125, v98
	v_mul_f32_e32 v97, v125, v97
	v_dual_mul_f32 v93, v125, v93 :: v_dual_lshlrev_b32 v114, 16, v115
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v61, v110, v113
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v95, v125, v95
	v_mul_f32_e32 v100, v125, v100
	v_mul_f32_e32 v99, v125, v99
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v44, v89, v88 :: v_dual_add_nc_u32 v27, 2, v27
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v56, v119, v88 :: v_dual_fmac_f32 v45, v90, v114
	v_fmac_f32_e32 v57, v121, v114
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b64 v21, v[123:124] offset:16384
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v21, v[77:78], v[79:80] offset1:8
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v21, v[81:82], v[83:84] offset0:16 offset1:24
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v109, 16, v109
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v115, 16, v116
	v_lshlrev_b32_e32 v116, 16, v120
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v111, 16, v111
	v_lshlrev_b32_e32 v118, 16, v127
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v50, v101, v109 :: v_dual_lshlrev_b32 v87, 16, v87
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v112, 16, v112
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v40, v93, v109 :: v_dual_lshlrev_b32 v117, 16, v126
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v34, v91, v115
	v_dual_fmac_f32 v35, v122, v115 :: v_dual_lshlrev_b32 v86, 16, v86
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v85, 16, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v33, v92, v116 :: v_dual_fmac_f32 v62, v94, v117
	v_fmac_f32_e32 v36, v128, v116
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v58, v95, v86 :: v_dual_fmac_f32 v59, v96, v111
	v_dual_fmac_f32 v54, v97, v118 :: v_dual_fmac_f32 v55, v98, v87
	v_dual_fmac_f32 v38, v100, v85 :: v_dual_fmac_f32 v37, v99, v112
	v_dual_fmac_f32 v42, v105, v118 :: v_dual_fmac_f32 v51, v102, v117
	v_dual_fmac_f32 v46, v103, v86 :: v_dual_fmac_f32 v47, v104, v111
	v_fmac_f32_e32 v43, v106, v87
	v_fmac_f32_e32 v39, v107, v112
	v_fmac_f32_e32 v41, v108, v85
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v74, v9 :: v_dual_mov_b32 v75, v10
	v_dual_mov_b32 v76, v11 :: v_dual_mov_b32 v77, v12
	v_dual_mov_b32 v78, v13 :: v_dual_mov_b32 v79, v14
	v_mov_b32_e32 v80, v15
.LBB0_6:                                ; %._crit_edge
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[29:32], v16 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[25:28], v18 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[21:24], v19 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[13:16], v20 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[5:8], v73 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[17:20], v17 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[9:12], v71 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[1:4], v72 offset0:32 offset1:36
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v73, 0, 1, s2
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v104, 0, v79
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v103, 0, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v73
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v105, 0, v78
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v106, 0, v77
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v107, 0, v76
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v108, 0, v75
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v109, 0, v74
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v73, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_mov_b32 s12, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[79:80], v70
	ds_load_b64 v[81:82], v109
	ds_load_b64 v[84:85], v108
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v97, s19 :: v_dual_mov_b32 v96, s18
	v_dual_mov_b32 v95, s17 :: v_dual_mov_b32 v94, s16
	v_dual_mov_b32 v93, s15 :: v_dual_mov_b32 v92, s14
	v_dual_mov_b32 v91, s13 :: v_dual_mov_b32 v90, s12
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[86:87], v107
	ds_load_b64 v[88:89], v106
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[71:78], v[79:80], v[29:30], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[79:80], v[31:32], v[90:97] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[79:80], v105
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[71:78], v[81:82], v[25:26], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[81:82], v[27:28], v[90:97] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[81:82], v104
	ds_load_b64 v[98:99], v103
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[71:78], v[84:85], v[21:22], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[84:85], v[23:24], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[71:78], v[86:87], v[13:14], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[86:87], v[15:16], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[71:78], v[88:89], v[5:6], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[88:89], v[7:8], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[71:78], v[79:80], v[17:18], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[79:80], v[19:20], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[71:78], v[81:82], v[9:10], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[81:82], v[11:12], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[71:78], v[98:99], v[1:2], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[98:99], v[3:4], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v85, v71
	v_cvt_f32_i32_e32 v88, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v87, v73
	v_cvt_f32_i32_e32 v89, v74
	v_cvt_f32_i32_e32 v84, v75
	v_cvt_f32_i32_e32 v86, v76
	v_cvt_f32_i32_e32 v71, v77
	v_cvt_f32_i32_e32 v72, v78
	v_cvt_f32_i32_e32 v78, v90
	v_cvt_f32_i32_e32 v81, v91
	v_cvt_f32_i32_e32 v80, v92
	v_cvt_f32_i32_e32 v82, v93
	v_cvt_f32_i32_e32 v77, v94
	v_cvt_f32_i32_e32 v79, v95
	v_cvt_f32_i32_e32 v73, v96
	v_cvt_f32_i32_e32 v74, v97
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_mov_b32_e32 v96, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_b64 v[75:76], v70 offset:8192
	ds_load_b64 v[98:99], v109 offset:8192
	ds_load_b64 v[100:101], v108 offset:8192
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v115, s19 :: v_dual_mov_b32 v114, s18
	v_dual_mov_b32 v113, s17 :: v_dual_mov_b32 v112, s16
	v_dual_mov_b32 v111, s15 :: v_dual_mov_b32 v110, s14
	v_dual_mov_b32 v109, s13 :: v_dual_mov_b32 v108, s12
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_b64 v[116:117], v107 offset:8192
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[75:76], v[29:30], v[108:115] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_b64 v[29:30], v106 offset:8192
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[108:115], v[75:76], v[31:32], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[98:99], v[25:26], v[90:97] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_b64 v[25:26], v105 offset:8192
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[108:115], v[98:99], v[27:28], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[100:101], v[21:22], v[90:97] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_b64 v[21:22], v104 offset:8192
	ds_load_b64 v[27:28], v103 offset:8192
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[108:115], v[100:101], v[23:24], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[116:117], v[13:14], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[116:117], v[15:16], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[29:30], v[5:6], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[29:30], v[7:8], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[25:26], v[17:18], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[25:26], v[19:20], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[21:22], v[9:10], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[21:22], v[11:12], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[27:28], v[1:2], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[27:28], v[3:4], v[108:115] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v83, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v101, v91
	v_cvt_f32_i32_e32 v100, v92
	v_cvt_f32_i32_e32 v102, v93
	v_cvt_f32_i32_e32 v98, v94
	v_cvt_f32_i32_e32 v99, v95
	v_cvt_f32_i32_e32 v75, v96
	v_cvt_f32_i32_e32 v76, v97
	v_cvt_f32_i32_e32 v91, v108
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v97, v111
	v_cvt_f32_i32_e32 v90, v112
	v_cvt_f32_i32_e32 v92, v113
	v_cvt_f32_i32_e32 v93, v114
	v_cvt_f32_i32_e32 v96, v115
.LBB0_10:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, v69, v67
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v2, 1, v66
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s33, s34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s3, s35, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s13, s9, 0xffff
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v4, 32, v1
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v3, s34, v1
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s3, s1
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s3, s0, s3
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v2, v68, v2
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v5, s34, v4
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	s_mov_b32 s12, s8
	v_add_lshl_u32 v3, s3, v3, 1
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_or_b32_e32 v6, 2, v2
	v_or_b32_e32 v9, 4, v2
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s22, s1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v5, s3, v5, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v10, 6, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v13, s0, v9, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v11, 8, v2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v12, 10, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v14, s0, v10, 1
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s1, s0, s23
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v7, v3, s[12:15], 0 offen
	buffer_load_u16 v8, v5, s[12:15], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v3, s0, v2, 1
	v_add_lshl_u32 v5, s0, v6, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v19, 12, v2
	v_or_b32_e32 v20, 14, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v2, s1, v2, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	v_cndmask_b32_e64 v15, 0x80000000, v14, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v6, s1, v6, 1
	v_add_lshl_u32 v9, s1, v9, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v17, s0, v11, 1
	s_clause 0x3
	buffer_load_u16 v14, v3, s[12:15], 0 offen
	buffer_load_u16 v16, v5, s[12:15], 0 offen
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	v_add_lshl_u32 v5, s0, v12, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v10, s1, v10, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_lshl_u32 v12, s1, v12, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_add_lshl_u32 v11, s1, v11, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_add_lshl_u32 v18, s1, v20, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v3, 0x80000000, v17, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_add_lshl_u32 v17, s1, v19, 1
	s_clause 0x3
	buffer_load_u16 v21, v2, s[12:15], 0 offen
	buffer_load_u16 v22, v6, s[12:15], 0 offen
	buffer_load_u16 v23, v9, s[12:15], 0 offen
	buffer_load_u16 v24, v10, s[12:15], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v12, s2
	v_cndmask_b32_e64 v2, 0x80000000, v11, s2
	v_cndmask_b32_e64 v10, 0x80000000, v18, s2
	v_cndmask_b32_e64 v9, 0x80000000, v17, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x5
	buffer_load_u16 v25, v5, s[12:15], 0 offen
	buffer_load_u16 v26, v3, s[12:15], 0 offen
	buffer_load_u16 v27, v6, s[12:15], 0 offen
	buffer_load_u16 v28, v2, s[12:15], 0 offen
	buffer_load_u16 v18, v10, s[12:15], 0 offen
	buffer_load_u16 v17, v9, s[12:15], 0 offen
	v_add_lshl_u32 v9, s0, v19, 1
	v_add_lshl_u32 v11, s0, v20, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, 0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s23
	v_mul_lo_u32 v2, s23, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_clause 0x1
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.h, v3.h
	v_mov_b16_e32 v12.h, v3.h
	v_mov_b16_e32 v10.h, v3.h
	v_mov_b16_e32 v19.h, v3.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v4, s23, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, s15
	v_and_b32_e32 v0, 16, v0
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v78, v78, v8 :: v_dual_lshlrev_b32 v7, 16, v7
	v_mul_f32_e32 v29, v85, v7
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v70, v99, v7 :: v_dual_mul_f32 v81, v81, v8
	v_mul_f32_e32 v30, v101, v7
	v_mul_f32_e32 v31, v83, v7
	v_mul_f32_e32 v67, v100, v7
	v_mul_f32_e32 v85, v91, v8
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v80, v80, v8 :: v_dual_and_b32 v5, 0x78, v65
	v_mul_f32_e32 v20, v88, v7
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v32, v89, v7 :: v_dual_lshlrev_b32 v13, 16, v13
	v_dual_mul_f32 v65, v87, v7 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v83, v98, v7 :: v_dual_lshlrev_b32 v16, 16, v16
	v_mul_f32_e32 v66, v102, v7
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v65, v65, v13, v60
	v_fma_f32 v13, v80, v13, v48
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v82, v82, v8 :: v_dual_lshlrev_b32 v23, 16, v23
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v31, v31, v21, v40
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v30, v30, v22, v62
	v_fma_f32 v21, v85, v21, v50
	v_fma_f32 v70, v70, v27, v55
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v40, v31, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v87, v94, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v62, v30, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v55, v70, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v88, v92, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v50, v21, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v89, v90, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v48, v13, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v69, v84, v7 :: v_dual_lshlrev_b32 v24, 16, v24
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v27, v88, v27, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v21
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v67, v67, v23, v58
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v68, v86, v7 :: v_dual_lshlrev_b32 v17, 16, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v43, v27, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v43, 0xbfb8aa3b, v30
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v83, v83, v28, v54
	v_fma_f32 v28, v89, v28, v42
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v84, v95, v8 :: v_dual_lshlrev_b32 v15, 16, v15
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v54, v54, v83, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v77, v77, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v42, v28, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v42, 0xbfb8aa3b, v31
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v87, v23, v46
	v_fma_f32 v66, v66, v24, v59
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v69, v69, v26, v56
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v58, v58, v67, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v79, v79, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v46, v23, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v54
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v77, v26, v44
	v_fma_f32 v68, v68, v25, v57
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v22, v84, v22, v51
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v59, v59, v66, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v86, v97, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v44, v26, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v44, 0xbfb8aa3b, v58
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v79, v25, v45
	v_fma_f32 v32, v32, v15, v61
	v_fma_f32 v15, v82, v15, v49
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v51, v22, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v42
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v45, v25, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v45, 0xbfb8aa3b, v59
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v24, v86, v24, v47
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v90, v96, v8
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v29, v14, v63
	v_fma_f32 v20, v20, v16, v64
	v_fma_f32 v14, v78, v14, v52
	v_fma_f32 v16, v81, v16, v53
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v49, v15, s2
	v_cndmask_b32_e64 v24, v47, v24, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v55
	v_mul_f32_e32 v49, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v42, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v91, v93, v8 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v23
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v53, v16, s2
	v_cndmask_b32_e64 v14, v52, v14, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v51, 0xbfb8aa3b, v24 :: v_dual_fmac_f32 v42, 0xbfb8aa3b, v31
	v_dual_mul_f32 v52, 0xbfb8aa3b, v28 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v45
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v47
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v46
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v49
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v48
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0x42800000, s1
	v_cndmask_b32_e64 v44, 0, 0x42800000, s3
	v_cndmask_b32_e64 v47, 0, 0x42800000, s4
	v_cndmask_b32_e64 v46, 0, 0x42800000, s5
	v_cndmask_b32_e64 v49, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v51
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v50
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v53
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v52
	v_exp_f32_e32 v42, v42
	v_cndmask_b32_e64 v48, 0, 0x42800000, s7
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v30
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v61, v32, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v51, 0, 0x42800000, s8
	v_cndmask_b32_e64 v50, 0, 0x42800000, s9
	v_cndmask_b32_e64 v53, 0, 0x42800000, s10
	v_cndmask_b32_e64 v52, 0, 0x42800000, s11
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v59 :: v_dual_fmac_f32 v44, 0xbfb8aa3b, v58
	v_dual_fmac_f32 v47, 0xbfb8aa3b, v55 :: v_dual_fmac_f32 v46, 0xbfb8aa3b, v54
	v_dual_fmac_f32 v49, 0xbfb8aa3b, v22 :: v_dual_fmac_f32 v50, 0xbfb8aa3b, v23
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v21
	v_exp_f32_e32 v43, v43
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v27 :: v_dual_fmac_f32 v52, 0xbfb8aa3b, v28
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v49, v49
	v_ldexp_f32 v42, v42, v61
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v24
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v60, v65, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v77, v90, v18, v41
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v63, v29, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s6
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v52, v52
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v51, v51
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v64, v20, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s7
	v_ldexp_f32 v43, v43, v60
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v57, v57, v68, s2
	v_cndmask_b32_e64 v56, v56, v69, s2
	v_cndmask_b32_e64 v41, v41, v77, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s11
	v_exp_f32_e32 v53, v53
	v_ldexp_f32 v45, v45, v62
	v_ldexp_f32 v44, v44, v63
	v_ldexp_f32 v46, v46, v65
	v_ldexp_f32 v49, v49, v66
	v_ldexp_f32 v47, v47, v64
	v_ldexp_f32 v48, v48, v67
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v43, 1.0, v43 :: v_dual_add_f32 v44, 1.0, v44
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s10
	v_ldexp_f32 v51, v51, v68
	v_ldexp_f32 v50, v50, v69
	v_ldexp_f32 v52, v52, v77
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v45, 1.0, v45 :: v_dual_add_f32 v46, 1.0, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v49, 1.0, v49 :: v_dual_add_f32 v50, 1.0, v50
	v_dual_add_f32 v47, 1.0, v47 :: v_dual_add_f32 v48, 1.0, v48
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v60, null, v43, v43, v30
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v53, v53, v70
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v51, 1.0, v51 :: v_dual_add_f32 v52, 1.0, v52
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v62, null, v42, v42, v31
	v_div_scale_f32 v64, null, v45, v45, v59
	v_div_scale_f32 v66, null, v44, v44, v58
	v_div_scale_f32 v70, null, v46, v46, v54
	v_div_scale_f32 v78, null, v49, v49, v22
	v_div_scale_f32 v80, null, v48, v48, v21
	v_rcp_f32_e32 v90, v60
	v_div_scale_f32 v68, null, v47, v47, v55
	v_div_scale_f32 v88, null, v52, v52, v28
	v_rcp_f32_e32 v92, v62
	v_rcp_f32_e32 v93, v64
	v_rcp_f32_e32 v94, v66
	v_rcp_f32_e32 v96, v70
	v_rcp_f32_e32 v97, v78
	v_div_scale_f32 v82, null, v51, v51, v24
	v_rcp_f32_e32 v98, v80
	v_rcp_f32_e32 v95, v68
	v_rcp_f32_e32 v102, v88
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v99, v82
	v_div_scale_f32 v84, null, v50, v50, v23
	v_fma_f32 v103, -v60, v90, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v104, -v62, v92, 1.0
	v_fma_f32 v105, -v64, v93, 1.0
	v_fma_f32 v106, -v66, v94, 1.0
	v_fma_f32 v108, -v70, v96, 1.0
	v_fma_f32 v109, -v78, v97, 1.0
	v_fma_f32 v110, -v80, v98, 1.0
	v_rcp_f32_e32 v100, v84
	v_fmac_f32_e32 v90, v103, v90
	v_div_scale_f32 v86, null, v53, v53, v27
	v_div_scale_f32 v61, s0, v30, v43, v30
	v_div_scale_f32 v63, s1, v31, v42, v31
	v_div_scale_f32 v65, s3, v59, v45, v59
	v_div_scale_f32 v67, s4, v58, v44, v58
	v_div_scale_f32 v77, s6, v54, v46, v54
	v_div_scale_f32 v79, vcc_lo, v22, v49, v22
	v_fma_f32 v107, -v68, v95, 1.0
	v_fma_f32 v114, -v88, v102, 1.0
	v_dual_fmac_f32 v92, v104, v92 :: v_dual_fmac_f32 v93, v105, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v94, v106, v94 :: v_dual_fmac_f32 v95, v107, v95
	v_dual_fmac_f32 v96, v108, v96 :: v_dual_fmac_f32 v97, v109, v97
	v_div_scale_f32 v81, s7, v21, v48, v21
	v_fma_f32 v111, -v82, v99, 1.0
	v_fmac_f32_e32 v98, v110, v98
	v_rcp_f32_e32 v101, v86
	v_div_scale_f32 v69, s5, v55, v47, v55
	v_dual_fmac_f32 v102, v114, v102 :: v_dual_mul_f32 v105, v65, v93
	v_dual_mul_f32 v103, v61, v90 :: v_dual_mul_f32 v104, v63, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v106, v67, v94 :: v_dual_mul_f32 v107, v69, v95
	v_dual_mul_f32 v108, v77, v96 :: v_dual_mul_f32 v109, v79, v97
	v_div_scale_f32 v83, s8, v24, v51, v24
	v_dual_fmac_f32 v99, v111, v99 :: v_dual_mul_f32 v110, v81, v98
	v_fma_f32 v112, -v84, v100, 1.0
	v_fma_f32 v115, -v60, v103, v61
	v_fma_f32 v116, -v62, v104, v63
	v_fma_f32 v117, -v64, v105, v65
	v_fma_f32 v118, -v66, v106, v67
	v_fma_f32 v120, -v70, v108, v77
	v_fma_f32 v121, -v78, v109, v79
	v_mul_f32_e32 v111, v83, v99
	v_fma_f32 v122, -v80, v110, v81
	v_div_scale_f32 v85, s9, v23, v50, v23
	v_fma_f32 v113, -v86, v101, 1.0
	v_dual_fmac_f32 v100, v112, v100 :: v_dual_fmac_f32 v103, v115, v90
	v_dual_fmac_f32 v104, v116, v92 :: v_dual_fmac_f32 v105, v117, v93
	v_fmac_f32_e32 v106, v118, v94
	v_dual_fmac_f32 v108, v120, v96 :: v_dual_fmac_f32 v109, v121, v97
	v_fma_f32 v123, -v82, v111, v83
	v_fmac_f32_e32 v110, v122, v98
	v_div_scale_f32 v87, s10, v27, v53, v27
	v_div_scale_f32 v89, s11, v28, v52, v28
	v_fmac_f32_e32 v101, v113, v101
	v_mul_f32_e32 v112, v85, v100
	v_fma_f32 v119, -v68, v107, v69
	v_fma_f32 v60, -v60, v103, v61
	v_fma_f32 v61, -v62, v104, v63
	v_fma_f32 v63, -v66, v106, v67
	v_fma_f32 v66, -v78, v109, v79
	v_fmac_f32_e32 v111, v123, v99
	v_fma_f32 v67, -v80, v110, v81
	v_dual_mul_f32 v113, v87, v101 :: v_dual_mul_f32 v114, v89, v102
	v_fmac_f32_e32 v107, v119, v95
	v_fma_f32 v124, -v84, v112, v85
	v_div_fmas_f32 v66, v66, v97, v109
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v125, -v86, v113, v87
	v_div_fmas_f32 v67, v67, v98, v110
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v112, v124, v100
	v_fma_f32 v62, -v64, v105, v65
	v_fma_f32 v64, -v68, v107, v69
	v_fma_f32 v68, -v82, v111, v83
	v_div_fmas_f32 v60, v60, v90, v103
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v66, v49, v22
	v_div_fmas_f32 v49, v61, v92, v104
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v113, v125, v101
	v_fma_f32 v69, -v84, v112, v85
	v_div_fixup_f32 v21, v67, v48, v21
	v_div_fmas_f32 v48, v68, v99, v111
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v126, -v88, v114, v89
	v_div_fixup_f32 v31, v49, v42, v31
	v_div_fixup_f32 v30, v60, v43, v30
	v_div_fixup_f32 v24, v48, v51, v24
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v16, v22
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v69, v100, v112
	v_fmac_f32_e32 v114, v126, v102
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v65, -v70, v108, v77
	v_fma_f32 v70, -v86, v113, v87
	v_div_fixup_f32 v22, v22, v50, v23
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v23, v29, v31 :: v_dual_mul_f32 v14, v14, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v21, v62, v93, v105
	s_mov_b32 vcc_lo, s4
	.loc	1 190 18 is_stmt 1              ; generate_amdgcn.py:190:18
	v_add3_u32 v1, s33, s22, v5
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.h, v3.h
	.loc	1 185 26 is_stmt 1              ; generate_amdgcn.py:185:26
	v_fma_f32 v77, -v88, v114, v89
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v23.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v20, v20, v30
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v30, v63, v94, v106
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v21, v21, v45, v59
	v_div_fmas_f32 v29, v70, v101, v113
	s_mov_b32 vcc_lo, s11
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v15, v15, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v24, v77, v102, v114
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v13, v22
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v14.h
	v_and_b32_e32 v5, 1, v5
	v_mov_b16_e32 v3.l, v20.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v27, v29, v53, v27
	v_div_fmas_f32 v22, v64, v95, v107
	s_mov_b32 vcc_lo, s6
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v21, v32, v21 :: v_dual_and_b32 v6, 1, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v29, v65, v96, v108
	v_div_fixup_f32 v24, v24, v52, v28
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v3
	v_mov_b16_e32 v3.l, v16.h
	v_cmp_o_f32_e64 s1, v14, v14
	v_cmp_o_f32_e64 s3, v20, v20
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v30, v30, v44, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.l, v13.h
	v_add3_u32 v6, v14, v6, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v14, v29, v46, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v20, v20, v28, 0x7fff
	v_and_b32_e32 v28, 1, v3
	v_mov_b16_e32 v3.l, v21.h
	v_add3_u32 v5, v23, v5, 0x7fff
	v_and_b32_e32 v12, 1, v12
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v56, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.h, 0x7fff, v20.h, s3
	v_and_b32_e32 v20, 1, v3
	v_mov_b16_e32 v3.l, v15.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v30, v40, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s5, v13, v13
	v_add3_u32 v12, v13, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v13, 1, v3
	v_mov_b16_e32 v10.l, v30.h
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s0, v16, v16
	v_cmp_o_f32_e64 s4, v23, v23
	v_add3_u32 v13, v15, v13, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v15, v26, v24 :: v_dual_and_b32 v10, 1, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v16, v28, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v22, v22, v47, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.l, 0x7fff, v5.h, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v10, v30, v10, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_cndmask_b16 v5.h, 0x7fff, v16.h, s0
	v_add3_u32 v16, v21, v20, 0x7fff
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v91, v17, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v12.l, 0x7fff, v10.h, s7
	v_cndmask_b16 v10.h, 0x7fff, v13.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v13, 0xbfb8aa3b, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v39, v20, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v23, v75, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v12.h, 0x7fff, v16.h, s6
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v25, v27
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.l, v15.h
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v17, v23, v17, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.h, v3.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s22, s14
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v37, v17, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v25
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v19.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v22, v57, v22 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v25, v15, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v3.l, v22.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v22, v22
	v_add3_u32 v19, v6, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v16, 1, v3
	v_mov_b16_e32 v3.l, v21.h
	v_add3_u32 v16, v22, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s0
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v6, v13
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v13, v76, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v16.l, 0x7fff, v19.h, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v13, v13, v18, v38
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v6, v6, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v38, v13, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v6, 1.0, v6 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v13
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v24, null, v6, v6, v41
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v22, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	v_ldexp_f32 v23, v23, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v20
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v19, v19, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v18, v22
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, vcc_lo, v41, v6, v41
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v19, v19, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v18, v18, v22
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v22, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v37, v30
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v27, null, v18, v18, v20
	v_fma_f32 v29, -v24, v22, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v30, v37, 1.0
	v_div_scale_f32 v38, s1, v20, v18, v20
	v_rcp_f32_e32 v31, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v29, v22
	v_dual_fmac_f32 v37, v42, v37 :: v_dual_and_b32 v26, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v26, v21, v26, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v21, v28, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v27, v31, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v39, -v24, v21, v28
	v_div_scale_f32 v42, s0, v13, v19, v13
	v_fmac_f32_e32 v31, v29, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v39, v22
	v_fma_f32 v24, -v24, v21, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v42, v37
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v40, v38, v31 :: v_dual_lshlrev_b32 v9, 16, v9
	v_fma_f32 v44, -v27, v40, v38
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v43, v74, v8
	v_mul_f32_e32 v8, v73, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v23, v23, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v44, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v9, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v29, v32
	v_fma_f32 v27, -v27, v40, v38
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v38, v72, v7
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v21, v24, v22, v21
	v_fma_f32 v22, -v30, v28, v42
	s_mov_b32 vcc_lo, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v71, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v34, v8, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v6, v21, v6, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v32, v29, 1.0
	v_fmac_f32_e32 v28, v22, v37
	v_div_fmas_f32 v22, v27, v31, v40
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v9, v35
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v29, v39, v29
	v_div_scale_f32 v39, s3, v17, v23, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v44, v39, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v35, v7, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v27, v38, v11, v36
	v_fma_f32 v11, v43, v11, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v24, -v32, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v36, v27, s2
	v_cndmask_b32_e64 v9, v33, v11, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v44, v24, v29
	v_fma_f32 v24, -v30, v28, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v9, v6
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x540054, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v24, v24, v37, v28
	s_mov_b32 vcc_lo, s3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v24, v19, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v11, v27, v13 :: v_dual_and_b32 v0, 0x5040504, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v22, v18, v20
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v11.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v9, 1, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v30, -v32, v44, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v6.h
	v_add3_u32 v9, v11, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v30, v29, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_mov_b16_e32 v15.h, v3.h
	v_and_b32_e32 v3, 1, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v17, v28, v23, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v6, v3, 0x7fff
	v_cndmask_b32_e64 v6, v16, v14, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v7, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s1
	s_mov_b32 s1, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v15.l, v7.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v8, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_and_b32_e32 v13, 1, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v15.l, v8.h
	v_cmp_o_f32_e64 s2, v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v7, v13, 0x7fff
	v_and_b32_e32 v13, 1, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v9.l, 0x7fff, v11.h, vcc_lo
	v_add3_u32 v7, v8, v13, 0x7fff
	v_mov_b32_e32 v13, 0x7632
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v11, v9, v12, s0
	v_cndmask_b16 v3.l, 0x7fff, v7.h, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v8, 0x3276, v13, s0
	v_cndmask_b32_e64 v9, v12, v9, s0
	v_cndmask_b32_e64 v12, v26, v5, s0
	v_cndmask_b32_e64 v5, v5, v26, s0
	v_cndmask_b32_e64 v13, v3, v10, s0
	v_lshl_or_b32 v7, v8, 8, v8
	v_cndmask_b32_e64 v8, v14, v16, s0
	v_cndmask_b32_e64 v3, v10, v3, s0
	v_permlanex16_b32 v9, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x760076, v7
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v7, v7, 4, v7
	v_perm_b32 v5, v8, v6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v14, 0x7060706, v7
	v_perm_b32 v7, v9, v11, v0
	v_perm_b32 v6, v8, v6, v14
	v_perm_b32 v8, v9, v11, v14
	v_perm_b32 v9, v10, v12, v0
	v_perm_b32 v11, v3, v13, v0
	v_add_lshl_u32 v0, v1, v2, 1
	v_perm_b32 v10, v10, v12, v14
	v_perm_b32 v12, v3, v13, v14
	v_add_lshl_u32 v1, v1, v4, 1
	s_clause 0x1
	buffer_store_b128 v[5:8], v0, s[20:23], 0 offen
	buffer_store_b128 v[9:12], v1, s[20:23], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 131
		.amdhsa_next_free_sgpr 42
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 131
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8916
; TotalNumSgprs: 44
; NumVgprs: 131
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 131
; Occupancy: 10
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     131
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
