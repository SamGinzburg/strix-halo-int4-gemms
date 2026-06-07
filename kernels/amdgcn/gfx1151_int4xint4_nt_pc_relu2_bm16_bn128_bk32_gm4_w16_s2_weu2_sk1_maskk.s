	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v4, 2, v0
	v_bfe_u32 v67, v0, 4, 4
	v_and_b32_e32 v65, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v68, 2, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v66, 12, v4
	s_load_b64 s[20:21], s[0:1], 0x20
	v_bfe_i32 v69, v0, 3, 1
	v_dual_mov_b32 v11, v9 :: v_dual_lshlrev_b32 v70, 4, v0
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v23, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s22, 15
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
	s_lshr_b32 s9, s9, 28
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
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s12, s4, 2
	v_mov_b32_e32 v24, v9
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s12
	v_mov_b32_e32 v25, v9
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v26, v9
	v_mov_b32_e32 v27, v9
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v28, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v32, v9
	v_mov_b32_e32 v33, v9
	v_mov_b32_e32 v34, v9
	v_mov_b32_e32 v35, v9
	v_mov_b32_e32 v36, v9
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v37, v9
	v_mov_b32_e32 v38, v9
	v_mov_b32_e32 v39, v9
	v_mov_b32_e32 v40, v9
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v41, v9
	v_mov_b32_e32 v42, v9
	v_mov_b32_e32 v43, v9
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v44, v9
	v_mov_b32_e32 v45, v9
	v_mov_b32_e32 v46, v9
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v47, v9
	s_mul_hi_u32 s8, s5, s8
	v_mov_b32_e32 v48, v9
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_mov_b32_e32 v49, v9
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v50, v9
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v51, v9
	s_cselect_b32 s4, s9, s5
	v_mov_b32_e32 v52, v9
	s_xor_b32 s4, s4, s8
	v_mov_b32_e32 v53, v9
	s_sub_i32 s14, s4, s8
	v_mov_b32_e32 v54, v9
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s15, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s12
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s15
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s16, s4, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	v_mov_b32_e32 v55, v9
	s_cvt_f32_u32 s4, s17
	s_sub_i32 s19, 0, s17
	v_mov_b32_e32 v56, v9
	v_mov_b32_e32 v57, v9
	v_rcp_iflag_f32_e32 v1, s4
	s_load_b256 s[4:11], s[0:1], 0x0
	v_mov_b32_e32 v58, v9
	v_mov_b32_e32 v59, v9
	v_mov_b32_e32 v60, v9
	v_mov_b32_e32 v61, v9
	v_mov_b32_e32 v62, v9
	v_mov_b32_e32 v63, v9
	v_mov_b32_e32 v64, v9
	v_mov_b32_e32 v10, v9
	v_readfirstlane_b32 s18, v1
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s18, s18
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_xor_b32 s7, s2, s16
	s_mul_i32 s19, s19, s18
	s_ashr_i32 s29, s7, 31
	s_mul_hi_u32 s12, s18, s19
	s_mov_b32 s7, 0x31027000
	s_add_i32 s18, s18, s12
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s27, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s6, s14, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s6, s17
	s_sub_i32 s12, s14, s12
	s_add_i32 s14, s6, 1
	s_sub_i32 s18, s12, s17
	s_cmp_ge_u32 s12, s17
	s_cselect_b32 s14, s14, s6
	s_cselect_b32 s6, s18, s12
	s_add_i32 s12, s14, 1
	s_cmp_ge_u32 s6, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s12, s12, s14
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s14, s13, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s33, s12, s29
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s30, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s13, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s12, s33, s29
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s31, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s12, s16
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[1:2], null, s31, v67, v[65:66]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v6, s30, v65
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mad_u64_u32 v[2:3], null, s31, v68, v[66:67]
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s3, s2, s15
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v5, s30, v66
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s28, s3, 4
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s22, s12, 7
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v6
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s12, s28, s31
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s3, s22, s31
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s13, 1
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s31, v5
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v74, s30, s12, v1
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add3_u32 v75, s30, s3, v2
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s3, -1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s3, vcc_lo
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s26, s6
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v1, 0x80000000, v74, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s3, s2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e32 v2, 0x80000000, v75, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v73, v1, s[4:7], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	buffer_load_b32 v76, v2, s[24:27], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v2, v0, 7, 1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_bfe_i32 v3, v0, 5, 1
	v_dual_mov_b32 v12, v9 :: v_dual_and_b32 v5, 0x7f, v0
	v_and_b32_e32 v7, 0x77c, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v13, v9 :: v_dual_and_b32 v6, 0x88, v2
	v_dual_mov_b32 v15, v9 :: v_dual_and_b32 v8, 0x88, v3
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v71, v6, v5
	v_mov_b32_e32 v14, v9
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v8, v8, v7
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v71, 0, v71
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v72, 0, v8
	v_mov_b32_e32 v8, v9
	s_mov_b32 s12, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s13, 34
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v71, v73 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v72, v76
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	v_sub_nc_u32_e32 v73, s31, v65
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s0, s30, 16
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v73
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v1, 16, v74
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e32 v74, s31, v66
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v2, 16, v75
	.loc	1 115 22 is_stmt 0              ; generate_amdgcn.py:115:22
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v74
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s31, 15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 4
.Ltmp13:
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	buffer_load_u8 v101, v1, s[4:7], 0 offen
	v_and_b32_e32 v1, 0x70, v70
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_max_u32 s0, s0, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_or_b32 v1, 0x88, v69, v1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_eq_u32 s0, 2
	v_add_nc_u32_e32 v75, 0, v1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	buffer_load_b32 v102, v2, s[24:27], 0 offen
	v_xor_b32_e32 v1, 8, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[97:98], v75 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[23:26], v75 offset1:32
	ds_load_2addr_b64 v[39:42], v75 offset0:64 offset1:96
	v_add_nc_u32_e32 v76, 0, v1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v1, s12
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[55:58], v75 offset0:128 offset1:160
	ds_load_2addr_b64 v[77:80], v75 offset0:192 offset1:224
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[99:100], v76 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[81:84], v76 offset1:32
	ds_load_2addr_b64 v[85:88], v76 offset0:64 offset1:96
	ds_load_2addr_b64 v[89:92], v76 offset0:128 offset1:160
	ds_load_2addr_b64 v[93:96], v76 offset0:192 offset1:224
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v6, s17
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v7, s18
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v71, v101 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v72, v102
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[39:40], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[77:78], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[99:100], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[99:100], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[99:100], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[87:88], v[99:100], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[89:90], v[99:100], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[91:92], v[99:100], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[93:94], v[99:100], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[95:96], v[99:100], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_lshl_or_b32 v68, s33, 7, v68
	s_lshl_b32 s1, s29, 7
	v_add_nc_u32_e32 v77, s28, v67
	s_add_i32 s2, s0, -2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v68, s1, v68
	s_add_i32 s1, s30, 32
	v_mad_u64_u32 v[66:67], null, s31, v68, v[66:67]
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[67:68], null, s31, v77, v[65:66]
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v68, s1, v67
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s0, s1, v73
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v77, s1, v66
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s1, v74
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s2, s2, -1
	s_add_i32 s1, s1, 16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s2, 0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v68, v68, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	buffer_load_b32 v113, v77, s[24:27], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[109:110], v75 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[77:80], v75 offset1:32
	ds_load_2addr_b64 v[81:84], v75 offset0:64 offset1:96
	ds_load_2addr_b64 v[85:88], v75 offset0:128 offset1:160
	ds_load_2addr_b64 v[89:92], v75 offset0:192 offset1:224
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[111:112], v76 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[93:96], v76 offset1:32
	ds_load_2addr_b64 v[97:100], v76 offset0:64 offset1:96
	ds_load_2addr_b64 v[101:104], v76 offset0:128 offset1:160
	ds_load_2addr_b64 v[105:108], v76 offset0:192 offset1:224
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v71, v68 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v72, v113
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[109:110], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[79:80], v[109:110], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[109:110], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[83:84], v[109:110], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[85:86], v[109:110], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[87:88], v[109:110], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[109:110], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[109:110], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[111:112], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[95:96], v[111:112], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[97:98], v[111:112], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[99:100], v[111:112], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[101:102], v[111:112], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[103:104], v[111:112], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[105:106], v[111:112], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[107:108], v[111:112], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v66, 0x70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v70, 0x88, v69, v66
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v78, 0, v70
	v_xad_u32 v94, v70, 8, 0
	ds_load_2addr_b64 v[66:69], v78 offset1:32
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[98:99], v78 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[70:73], v78 offset0:64 offset1:96
	ds_load_2addr_b64 v[74:77], v78 offset0:128 offset1:160
	ds_load_2addr_b64 v[78:81], v78 offset0:192 offset1:224
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[100:101], v94 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[82:85], v94 offset1:32
	ds_load_2addr_b64 v[86:89], v94 offset0:64 offset1:96
	ds_load_2addr_b64 v[90:93], v94 offset0:128 offset1:160
	ds_load_2addr_b64 v[94:97], v94 offset0:192 offset1:224
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[66:67], v[98:99], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[68:69], v[98:99], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[70:71], v[98:99], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[72:73], v[98:99], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[74:75], v[98:99], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[76:77], v[98:99], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[78:79], v[98:99], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[98:99], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[82:83], v[100:101], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[100:101], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[86:87], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[88:89], v[100:101], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[90:91], v[100:101], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[92:93], v[100:101], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[94:95], v[100:101], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[96:97], v[100:101], v[1:8] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v67, s28, v65
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_and_b32 s1, s9, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s8
	v_lshlrev_b32_e32 v67, 1, v67
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v66, 4, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v131, v1
	v_cvt_f32_i32_e32 v132, v3
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v67, v67, s[0:3], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_and_or_b32 v66, v66, 1, s22
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	s_and_b32 s1, s11, 0xffff
	s_mov_b32 s0, s10
	.loc	1 127 15 is_stmt 1              ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s28, s28, s23
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v67
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_lshlrev_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v68, 4, v66
	v_or_b32_e32 v69, 8, v66
	v_or_b32_e32 v70, 12, v66
	v_or_b32_e32 v71, 16, v66
	v_or_b32_e32 v72, 20, v66
	v_or_b32_e32 v73, 24, v66
	v_or_b32_e32 v99, 28, v66
	s_clause 0x7
	buffer_load_u16 v68, v68, s[0:3], 0 offen
	buffer_load_u16 v69, v69, s[0:3], 0 offen
	buffer_load_u16 v70, v70, s[0:3], 0 offen
	buffer_load_u16 v71, v71, s[0:3], 0 offen
	buffer_load_u16 v72, v72, s[0:3], 0 offen
	buffer_load_u16 v73, v73, s[0:3], 0 offen
	buffer_load_u16 v99, v99, s[0:3], 0 offen
	buffer_load_u16 v100, v66, s[0:3], 0 offen
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v67, 16, v68
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v67, v1, v67 :: v_dual_lshlrev_b32 v68, 16, v69
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v10, v67, v10
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v69, 16, v70
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v70, 16, v71
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v71, 16, v72
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v72, 16, v73
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v68, v1, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v72, v1, v72
	v_mul_f32_e32 v69, v1, v69
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v70, v1, v70 :: v_dual_lshlrev_b32 v3, 16, v100
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v12, v69, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v3, v1, v3
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v90, 0x60, v66
	v_or_b32_e32 v91, 0x64, v66
	v_or_b32_e32 v92, 0x68, v66
	v_or_b32_e32 v93, 0x6c, v66
	v_or_b32_e32 v98, 0x80, v66
	v_or_b32_e32 v94, 0x70, v66
	v_or_b32_e32 v95, 0x74, v66
	v_or_b32_e32 v96, 0x78, v66
	v_or_b32_e32 v97, 0x7c, v66
	v_or_b32_e32 v101, 0x84, v66
	s_clause 0x7
	buffer_load_u16 v90, v90, s[0:3], 0 offen
	buffer_load_u16 v91, v91, s[0:3], 0 offen
	buffer_load_u16 v92, v92, s[0:3], 0 offen
	buffer_load_u16 v93, v93, s[0:3], 0 offen
	buffer_load_u16 v94, v94, s[0:3], 0 offen
	buffer_load_u16 v95, v95, s[0:3], 0 offen
	buffer_load_u16 v96, v96, s[0:3], 0 offen
	buffer_load_u16 v97, v97, s[0:3], 0 offen
	v_or_b32_e32 v102, 0x88, v66
	v_or_b32_e32 v103, 0x8c, v66
	v_or_b32_e32 v104, 0x90, v66
	v_or_b32_e32 v105, 0x94, v66
	v_or_b32_e32 v106, 0x98, v66
	v_or_b32_e32 v107, 0x9c, v66
	s_clause 0x7
	buffer_load_u16 v98, v98, s[0:3], 0 offen
	buffer_load_u16 v101, v101, s[0:3], 0 offen
	buffer_load_u16 v102, v102, s[0:3], 0 offen
	buffer_load_u16 v103, v103, s[0:3], 0 offen
	buffer_load_u16 v104, v104, s[0:3], 0 offen
	buffer_load_u16 v105, v105, s[0:3], 0 offen
	buffer_load_u16 v106, v106, s[0:3], 0 offen
	buffer_load_u16 v107, v107, s[0:3], 0 offen
	v_or_b32_e32 v82, 64, v66
	v_or_b32_e32 v83, 0x44, v66
	v_or_b32_e32 v84, 0x48, v66
	v_or_b32_e32 v85, 0x4c, v66
	v_or_b32_e32 v86, 0x50, v66
	v_or_b32_e32 v87, 0x54, v66
	v_or_b32_e32 v88, 0x58, v66
	v_or_b32_e32 v89, 0x5c, v66
	s_clause 0x7
	buffer_load_u16 v82, v82, s[0:3], 0 offen
	buffer_load_u16 v83, v83, s[0:3], 0 offen
	buffer_load_u16 v84, v84, s[0:3], 0 offen
	buffer_load_u16 v85, v85, s[0:3], 0 offen
	buffer_load_u16 v86, v86, s[0:3], 0 offen
	buffer_load_u16 v87, v87, s[0:3], 0 offen
	buffer_load_u16 v88, v88, s[0:3], 0 offen
	buffer_load_u16 v89, v89, s[0:3], 0 offen
	v_or_b32_e32 v74, 32, v66
	v_or_b32_e32 v75, 36, v66
	v_or_b32_e32 v76, 40, v66
	v_or_b32_e32 v77, 44, v66
	v_or_b32_e32 v78, 48, v66
	v_or_b32_e32 v79, 52, v66
	v_or_b32_e32 v80, 56, v66
	v_or_b32_e32 v81, 60, v66
	s_clause 0x7
	buffer_load_u16 v74, v74, s[0:3], 0 offen
	buffer_load_u16 v75, v75, s[0:3], 0 offen
	buffer_load_u16 v76, v76, s[0:3], 0 offen
	buffer_load_u16 v77, v77, s[0:3], 0 offen
	buffer_load_u16 v78, v78, s[0:3], 0 offen
	buffer_load_u16 v79, v79, s[0:3], 0 offen
	buffer_load_u16 v80, v80, s[0:3], 0 offen
	buffer_load_u16 v81, v81, s[0:3], 0 offen
	v_or_b32_e32 v108, 0xa0, v66
	v_or_b32_e32 v116, 0xc0, v66
	v_or_b32_e32 v124, 0xe0, v66
	v_or_b32_e32 v109, 0xa4, v66
	v_or_b32_e32 v117, 0xc4, v66
	v_or_b32_e32 v125, 0xe4, v66
	v_or_b32_e32 v110, 0xa8, v66
	v_or_b32_e32 v118, 0xc8, v66
	v_or_b32_e32 v126, 0xe8, v66
	v_or_b32_e32 v111, 0xac, v66
	v_or_b32_e32 v119, 0xcc, v66
	v_or_b32_e32 v127, 0xec, v66
	v_or_b32_e32 v112, 0xb0, v66
	v_or_b32_e32 v113, 0xb4, v66
	v_or_b32_e32 v114, 0xb8, v66
	v_or_b32_e32 v115, 0xbc, v66
	v_or_b32_e32 v120, 0xd0, v66
	v_or_b32_e32 v121, 0xd4, v66
	v_or_b32_e32 v122, 0xd8, v66
	v_or_b32_e32 v123, 0xdc, v66
	v_or_b32_e32 v128, 0xf0, v66
	v_or_b32_e32 v129, 0xf4, v66
	v_or_b32_e32 v130, 0xf8, v66
	v_or_b32_e32 v66, 0xfc, v66
	s_clause 0x17
	buffer_load_u16 v108, v108, s[0:3], 0 offen
	buffer_load_u16 v109, v109, s[0:3], 0 offen
	buffer_load_u16 v110, v110, s[0:3], 0 offen
	buffer_load_u16 v111, v111, s[0:3], 0 offen
	buffer_load_u16 v112, v112, s[0:3], 0 offen
	buffer_load_u16 v113, v113, s[0:3], 0 offen
	buffer_load_u16 v114, v114, s[0:3], 0 offen
	buffer_load_u16 v115, v115, s[0:3], 0 offen
	buffer_load_u16 v116, v116, s[0:3], 0 offen
	buffer_load_u16 v117, v117, s[0:3], 0 offen
	buffer_load_u16 v118, v118, s[0:3], 0 offen
	buffer_load_u16 v119, v119, s[0:3], 0 offen
	buffer_load_u16 v120, v120, s[0:3], 0 offen
	buffer_load_u16 v121, v121, s[0:3], 0 offen
	buffer_load_u16 v122, v122, s[0:3], 0 offen
	buffer_load_u16 v123, v123, s[0:3], 0 offen
	buffer_load_u16 v124, v124, s[0:3], 0 offen
	buffer_load_u16 v125, v125, s[0:3], 0 offen
	buffer_load_u16 v126, v126, s[0:3], 0 offen
	buffer_load_u16 v127, v127, s[0:3], 0 offen
	buffer_load_u16 v128, v128, s[0:3], 0 offen
	buffer_load_u16 v129, v129, s[0:3], 0 offen
	buffer_load_u16 v130, v130, s[0:3], 0 offen
	buffer_load_u16 v66, v66, s[0:3], 0 offen
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v9, v3, v9
	s_mov_b32 s0, 0x76543210
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	s_waitcnt vmcnt(45)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v69, 0, v9 :: v_dual_lshlrev_b32 v100, 16, v102
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v95, 16, v95
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v102, 16, v104
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v104, 16, v106
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v100, v1, v100
	v_dual_mul_f32 v95, v1, v95 :: v_dual_lshlrev_b32 v96, 16, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v96, v1, v96 :: v_dual_lshlrev_b32 v91, 16, v91
	v_dual_mul_f32 v91, v1, v91 :: v_dual_lshlrev_b32 v92, 16, v92
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(34)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v38, v95, v38 :: v_dual_lshlrev_b32 v87, 16, v87
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v92, v1, v92
	s_waitcnt vmcnt(33)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v87, v1, v87 :: v_dual_lshlrev_b32 v88, 16, v88
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v34, v91, v34 :: v_dual_lshlrev_b32 v83, 16, v83
	v_dual_mul_f32 v35, v92, v35 :: v_dual_mul_f32 v88, v1, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v83, v1, v83 :: v_dual_lshlrev_b32 v84, 16, v84
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v30, v87, v30 :: v_dual_lshlrev_b32 v79, 16, v79
	v_dual_mul_f32 v31, v88, v31 :: v_dual_mul_f32 v84, v1, v84
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(25)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v79, v1, v79 :: v_dual_lshlrev_b32 v80, 16, v80
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v26, v83, v26 :: v_dual_lshlrev_b32 v75, 16, v75
	v_dual_mul_f32 v27, v84, v27 :: v_dual_mul_f32 v80, v1, v80
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v75, v1, v75 :: v_dual_lshlrev_b32 v76, 16, v76
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v73, 16, v99
	v_lshlrev_b32_e32 v99, 16, v101
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v23, v80, v23 :: v_dual_lshlrev_b32 v106, 16, v108
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v101, 16, v103
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v108, 16, v110
	v_lshlrev_b32_e32 v103, 16, v105
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v110, 16, v112
	v_lshlrev_b32_e32 v105, 16, v107
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v112, 16, v114
	v_lshlrev_b32_e32 v107, 16, v109
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v114, 16, v116
	v_lshlrev_b32_e32 v109, 16, v111
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v116, 16, v118
	v_lshlrev_b32_e32 v111, 16, v113
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v118, 16, v120
	v_lshlrev_b32_e32 v113, 16, v115
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v120, 16, v122
	v_lshlrev_b32_e32 v115, 16, v117
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v122, 16, v124
	v_lshlrev_b32_e32 v117, 16, v119
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v124, 16, v126
	v_lshlrev_b32_e32 v119, 16, v121
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v126, 16, v128
	v_lshlrev_b32_e32 v121, 16, v123
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v128, 16, v130
	v_lshlrev_b32_e32 v123, 16, v125
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v66, 16, v66
	v_lshlrev_b32_e32 v125, 16, v127
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v76, v1, v76 :: v_dual_lshlrev_b32 v127, 16, v129
	v_dual_mul_f32 v73, v1, v73 :: v_dual_lshlrev_b32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v66, v1, v66
	v_mul_f32_e32 v125, v1, v125
	v_mul_f32_e32 v126, v1, v126
	v_mul_f32_e32 v121, v1, v121
	v_mul_f32_e32 v122, v1, v122
	v_mul_f32_e32 v117, v1, v117
	v_mul_f32_e32 v118, v1, v118
	v_mul_f32_e32 v113, v1, v113
	v_mul_f32_e32 v114, v1, v114
	v_mul_f32_e32 v109, v1, v109
	v_mul_f32_e32 v110, v1, v110
	v_mul_f32_e32 v105, v1, v105
	v_mul_f32_e32 v106, v1, v106
	v_mul_f32_e32 v101, v1, v101
	v_dual_mul_f32 v102, v1, v102 :: v_dual_lshlrev_b32 v97, 16, v97
	v_dual_mul_f32 v127, v1, v127 :: v_dual_lshlrev_b32 v98, 16, v98
	v_mul_f32_e32 v128, v1, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v97, v1, v97
	v_dual_mul_f32 v98, v1, v98 :: v_dual_lshlrev_b32 v93, 16, v93
	v_dual_mul_f32 v123, v1, v123 :: v_dual_lshlrev_b32 v94, 16, v94
	v_mul_f32_e32 v124, v1, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v93, v1, v93
	v_dual_mul_f32 v94, v1, v94 :: v_dual_lshlrev_b32 v89, 16, v89
	v_dual_mul_f32 v119, v1, v119 :: v_dual_lshlrev_b32 v90, 16, v90
	v_mul_f32_e32 v120, v1, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v89, v1, v89
	v_dual_mul_f32 v90, v1, v90 :: v_dual_lshlrev_b32 v85, 16, v85
	v_dual_mul_f32 v115, v1, v115 :: v_dual_lshlrev_b32 v86, 16, v86
	v_mul_f32_e32 v116, v1, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v1, v85
	v_dual_mul_f32 v86, v1, v86 :: v_dual_lshlrev_b32 v81, 16, v81
	v_dual_mul_f32 v111, v1, v111 :: v_dual_lshlrev_b32 v82, 16, v82
	v_mul_f32_e32 v112, v1, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v1, v81
	v_dual_mul_f32 v82, v1, v82 :: v_dual_lshlrev_b32 v77, 16, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v55, v112, v55 :: v_dual_lshlrev_b32 v78, 16, v78
	v_mul_f32_e32 v60, v117, v60
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v77, v1, v77
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v57, v114, v57 :: v_dual_mul_f32 v62, v119, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v78, v1, v78
	v_mul_f32_e32 v71, v1, v71
	v_dual_mul_f32 v74, v1, v74 :: v_dual_mul_f32 v13, v70, v13
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v16, v73, v16 :: v_dual_mul_f32 v15, v72, v15
	v_dual_mul_f32 v18, v75, v18 :: v_dual_mul_f32 v21, v78, v21
	v_dual_mul_f32 v24, v81, v24 :: v_dual_mul_f32 v29, v86, v29
	v_dual_mul_f32 v32, v89, v32 :: v_dual_mul_f32 v63, v120, v63
	v_dual_mul_f32 v4, v125, v4 :: v_dual_mul_f32 v67, v122, v131
	v_dual_mul_f32 v5, v126, v5 :: v_dual_mul_f32 v6, v127, v6
	v_dual_mul_f32 v7, v128, v7 :: v_dual_mul_f32 v66, v66, v8
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_max_f32_e32 v70, 0, v10
	v_dual_max_f32 v81, 0, v26 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v55, 0, v55 :: v_dual_max_f32 v26, 0, v57
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v57, v69, v69
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v11, v68, v11 :: v_dual_mul_f32 v14, v71, v14
	v_dual_mul_f32 v17, v74, v17 :: v_dual_mul_f32 v20, v77, v20
	v_dual_mul_f32 v19, v76, v19 :: v_dual_mul_f32 v22, v79, v22
	v_dual_mul_f32 v53, v110, v53 :: v_dual_mul_f32 v58, v115, v58
	v_mul_f32_e32 v68, v124, v132
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v71, 0, v12 :: v_dual_max_f32 v74, 0, v17
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v73, 0, v15 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v15, 0, v67 :: v_dual_max_f32 v12, 0, v4
	v_dual_max_f32 v8, 0, v5 :: v_dual_max_f32 v9, 0, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v6, 0, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v57.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v72, 0, v14
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v25, v82, v25 :: v_dual_mul_f32 v28, v85, v28
	v_dual_mul_f32 v61, v118, v61 :: v_dual_mul_f32 v2, v123, v2
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v5, v70, v70
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v75, 0, v18 :: v_dual_max_f32 v76, 0, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v79, 0, v24 :: v_dual_max_f32 v80, 0, v25
	v_dual_max_f32 v53, 0, v53 :: v_dual_max_f32 v24, 0, v60
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v13, v13, v13 :: v_dual_and_b32 v60, 1, v4
	v_mul_f32_e32 v11, v11, v11
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v25, 0, v58
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v58, s23, v65
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v59, v116, v59 :: v_dual_mul_f32 v64, v121, v64
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v17, 0, v63 :: v_dual_max_f32 v14, 0, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v2.h, v4.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v77, 0, v20 :: v_dual_max_f32 v78, 0, v23
	v_max_f32_e32 v20, 0, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v57, v60, 0x7fff
	v_mov_b16_e32 v60.l, v13.h
	v_mov_b16_e32 v60.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v61, v71, v71
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v19, 0, v62 :: v_dual_max_f32 v10, 0, v68
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v62.l, v11.h
	v_mov_b16_e32 v62.h, v4.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v23, 0, v59 :: v_dual_max_f32 v18, 0, v64
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v16, v16, v16 :: v_dual_and_b32 v59, 1, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v60, 1, v60
	v_mov_b16_e32 v4.l, v61.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v7, 0, v7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v2, s28, s22, v58
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v58, 1, v62
	v_add3_u32 v5, v5, v59, 0x7fff
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v28, 0, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v57.h
	v_and_b32_e32 v57, 1, v4
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v59, v72, v72 :: v_dual_mul_f32 v62, v73, v73
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v58, v11, v58, 0x7fff
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v30, 0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v61, v57, 0x7fff
	v_mov_b16_e32 v61.l, v62.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v11.l, v58.h
	v_add3_u32 v58, v13, v60, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v60, v74, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v59.h
	v_mov_b16_e32 v61.h, v4.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v34, 0, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v30, v30, v30 :: v_dual_and_b32 v57, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v16.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v107, v1, v107
	v_mul_f32_e32 v108, v1, v108
	v_mul_f32_e32 v103, v1, v103
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v13, v59, v57, 0x7fff
	v_and_b32_e32 v57, 1, v61
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v34, v34, v34 :: v_dual_and_b32 v59, 1, v4
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v104, v1, v104
	v_mul_f32_e32 v99, v1, v99
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v58.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v58, v75, v75
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v62, v57, 0x7fff
	v_add3_u32 v16, v16, v59, 0x7fff
	v_mov_b16_e32 v59.l, v60.h
	v_mov_b16_e32 v59.h, v4.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v37, v94, v37 :: v_dual_mul_f32 v40, v97, v40
	v_dual_mul_f32 v39, v96, v39 :: v_dual_mul_f32 v42, v99, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v58.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v61, v77, v77 :: v_dual_mul_f32 v62, v76, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v57.h
	v_and_b32_e32 v57, 1, v59
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v42, 0, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v59, 1, v4
	v_mov_b16_e32 v4.l, v61.h
	v_mov_b16_e32 v63.l, v62.h
	v_mov_b16_e32 v63.h, v4.h
	v_add3_u32 v57, v60, v57, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v60, v21, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v21, v58, v59, 0x7fff
	v_and_b32_e32 v58, 1, v4
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v28, v28, v28 :: v_dual_and_b32 v59, 1, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v64.l, v60.h
	v_mov_b16_e32 v64.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v63, v22, v22
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v33, v90, v33 :: v_dual_mul_f32 v36, v93, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.l, v57.h
	v_add3_u32 v57, v62, v59, 0x7fff
	v_add3_u32 v22, v61, v58, 0x7fff
	v_and_b32_e32 v58, 1, v64
	v_mov_b16_e32 v4.l, v63.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v38, 0, v38
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v59, v79, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v57.h
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v57, 1, v4
	v_add3_u32 v58, v60, v58, 0x7fff
	v_mov_b16_e32 v60.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v61, v78, v78
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v59.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v62, v80, v80
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v63, v57, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v63, v81, v81
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.l, v61.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v41, v98, v41 :: v_dual_mul_f32 v44, v101, v44
	v_dual_mul_f32 v43, v100, v43 :: v_dual_mul_f32 v46, v103, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v64, 1, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v60, 1, v60
	v_mov_b16_e32 v65.l, v62.h
	v_mov_b16_e32 v65.h, v4.h
	v_mov_b16_e32 v4.l, v63.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v41, 0, v41 :: v_dual_max_f32 v46, 0, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.l, v58.h
	v_add3_u32 v58, v61, v60, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v27, v27, v27 :: v_dual_and_b32 v60, 1, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v4
	v_add3_u32 v59, v59, v64, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v45, v102, v45 :: v_dual_mul_f32 v48, v105, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v59.l, v58.h
	v_add3_u32 v58, v62, v60, 0x7fff
	v_add3_u32 v60, v63, v61, 0x7fff
	v_mov_b16_e32 v61.l, v27.h
	v_mov_b16_e32 v61.h, v4.h
	v_mov_b16_e32 v4.l, v28.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v29, v29, v29 :: v_dual_mul_f32 v32, v32, v32
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v43, 0, v43 :: v_dual_max_f32 v48, 0, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.l, v58.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v31, v31, v31 :: v_dual_and_b32 v58, 1, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v4
	v_mov_b16_e32 v62.l, v29.h
	v_mov_b16_e32 v62.h, v4.h
	v_mov_b16_e32 v4.l, v30.h
	v_add3_u32 v27, v27, v58, 0x7fff
	v_add3_u32 v28, v28, v61, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v50, v107, v50 :: v_dual_and_b32 v3, 16, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v62
	v_and_b32_e32 v58, 1, v4
	v_mov_b16_e32 v62.l, v31.h
	v_mov_b16_e32 v28.l, v27.h
	v_mov_b16_e32 v4.l, v32.h
	v_add3_u32 v27, v29, v61, 0x7fff
	v_add3_u32 v29, v30, v58, 0x7fff
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v40, 0, v40
	v_dual_max_f32 v45, 0, v45 :: v_dual_max_f32 v50, 0, v50
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v33, v33, v33 :: v_dual_and_b32 v30, 1, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v29.l, v27.h
	v_and_b32_e32 v27, 1, v4
	v_mov_b16_e32 v4.l, v34.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v30, v31, v30, 0x7fff
	v_mov_b16_e32 v31.l, v33.h
	v_mov_b16_e32 v31.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v35, v35, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v32, v27, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v32, v36, v36 :: v_dual_mul_f32 v49, v106, v49
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v54, v111, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v36, 1, v4
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v58.l, v35.h
	v_mov_b16_e32 v58.h, v4.h
	v_mov_b16_e32 v4.l, v32.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v39, 0, v39 :: v_dual_max_f32 v44, 0, v44
	v_dual_max_f32 v49, 0, v49 :: v_dual_max_f32 v54, 0, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.l, v30.h
	v_add3_u32 v30, v33, v31, 0x7fff
	v_add3_u32 v31, v34, v36, 0x7fff
	v_and_b32_e32 v33, 1, v58
	v_and_b32_e32 v34, 1, v4
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v36, v37, v37 :: v_dual_mul_f32 v47, v104, v47
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v52, v109, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.l, v30.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v30, v38, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v35, v33, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v37, v39, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v32, v32, v34, 0x7fff
	v_mov_b16_e32 v34.l, v36.h
	v_mov_b16_e32 v34.h, v4.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v47, 0, v47 :: v_dual_max_f32 v52, 0, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v30.h
	v_mov_b16_e32 v32.l, v33.h
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v34
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e32 v38.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v35, v40, v40
	v_dual_mul_f32 v39, v42, v42 :: v_dual_and_b32 v34, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v36, v33, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v36, v41, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v38, 1, v38
	v_mov_b16_e32 v4.l, v35.h
	v_add3_u32 v30, v30, v34, 0x7fff
	v_mov_b16_e32 v40.h, v4.h
	v_mov_b16_e32 v40.l, v36.h
	v_mov_b16_e32 v30.l, v33.h
	v_and_b32_e32 v34, 1, v4
	v_add3_u32 v33, v37, v38, 0x7fff
	v_mov_b16_e32 v4.l, v39.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v38, v43, v43
	v_mul_f32_e32 v26, v26, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v34, v35, v34, 0x7fff
	v_and_b32_e32 v35, 1, v40
	v_mov_b16_e32 v34.l, v33.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v40, v45, v45 :: v_dual_and_b32 v33, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v45.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v37, v44, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v35, v36, v35, 0x7fff
	v_mov_b16_e32 v36.l, v38.h
	v_mov_b16_e32 v36.h, v4.h
	v_add3_u32 v33, v39, v33, 0x7fff
	v_mov_b16_e32 v4.l, v37.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v39, v46, v46
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v51, v108, v51 :: v_dual_mul_f32 v56, v113, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v18, v18, v18 :: v_dual_and_b32 v41, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v42.l, v40.h
	v_mov_b16_e32 v42.h, v4.h
	v_mov_b16_e32 v4.l, v39.h
	v_mov_b16_e32 v33.l, v35.h
	v_add3_u32 v35, v38, v36, 0x7fff
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v51, 0, v51 :: v_dual_max_f32 v56, 0, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v36, v37, v41, 0x7fff
	v_and_b32_e32 v37, 1, v42
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v41, v47, v47 :: v_dual_and_b32 v38, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e32 v47.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v35, v48, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v40, v37, 0x7fff
	v_add3_u32 v38, v39, v38, 0x7fff
	v_mov_b16_e32 v39.l, v41.h
	v_mov_b16_e32 v39.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v42, v49, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v35.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v40, v50, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v37.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v24, v24, v24 :: v_dual_and_b32 v37, 1, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v43.l, v42.h
	v_mov_b16_e32 v43.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v39, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v40.h
	v_add3_u32 v37, v41, v37, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v41, v51, v51
	v_dual_mul_f32 v20, v20, v20 :: v_dual_and_b32 v43, 1, v43
	v_mul_f32_e32 v44, v52, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v35, v35, v39, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v39, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v45.l, v41.h
	v_mov_b16_e32 v35.l, v37.h
	v_add3_u32 v37, v42, v43, 0x7fff
	v_mov_b16_e32 v4.l, v44.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v42, v54, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v39, v40, v39, 0x7fff
	v_and_b32_e32 v40, 1, v45
	v_mov_b16_e32 v39.l, v37.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v6, v6, v6 :: v_dual_and_b32 v37, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v42.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v43, v53, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v41, v40, 0x7fff
	v_mov_b16_e32 v41.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v45, v55, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v44, v37, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v44, v56, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v46, 1, v4
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v47.l, v45.h
	v_mov_b16_e32 v37.l, v40.h
	v_mov_b16_e32 v4.l, v44.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v12, v12, v12 :: v_dual_and_b32 v41, 1, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v15, v15, v15 :: v_dual_mul_f32 v8, v8, v8
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v43, v41, 0x7fff
	v_add3_u32 v41, v42, v46, 0x7fff
	v_and_b32_e32 v42, 1, v47
	v_and_b32_e32 v43, 1, v4
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.l, v40.h
	v_and_b32_e32 v0, 0x1e0, v0
	v_add3_u32 v40, v45, v42, 0x7fff
	v_add3_u32 v42, v44, v43, 0x7fff
	v_mov_b16_e32 v43.l, v26.h
	v_mov_b16_e32 v43.h, v4.h
	.loc	1 138 19 is_stmt 1              ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v25, v25, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v42.l, v40.h
	v_mov_b16_e32 v44.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v23, v23, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v40, 1, v43
	v_mov_b16_e32 v4.l, v25.h
	v_add_nc_u32_e32 v2, 64, v1
	s_mov_b32 s22, s2
	v_mov_b16_e32 v44.l, v23.h
	v_add3_u32 v26, v26, v40, 0x7fff
	v_and_b32_e32 v43, 1, v4
	v_mov_b16_e32 v4.l, v24.h
	s_mov_b32 s23, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v25, v25, v43, 0x7fff
	v_and_b32_e32 v40, 1, v4
	v_and_b32_e32 v43, 1, v44
	v_mov_b16_e32 v44.l, v20.h
	v_mov_b16_e32 v25.l, v26.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v24, v24, v40, 0x7fff
	v_mov_b16_e32 v40.l, v15.h
	v_and_b32_e32 v26, 1, v44
	v_mov_b16_e32 v40.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v17, v17, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v23, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v20, v20, v26, 0x7fff
	v_mov_b16_e32 v26.h, v4.h
	v_mov_b16_e32 v26.l, v17.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v19, v19, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v23.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v26, 1, v26
	v_mov_b16_e32 v4.l, v19.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v23, 1, v4
	v_mov_b16_e32 v4.l, v18.h
	v_add3_u32 v19, v19, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v23, 1, v4
	v_mov_b16_e32 v4.l, v14.h
	v_mov_b16_e32 v19.l, v20.h
	v_and_b32_e32 v20, 1, v40
	v_add3_u32 v17, v17, v26, 0x7fff
	v_add3_u32 v18, v18, v23, 0x7fff
	v_dual_cndmask_b32 v26, v32, v34 :: v_dual_and_b32 v23, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v15, v15, v20, 0x7fff
	v_mov_b16_e32 v18.l, v17.h
	v_mov_b16_e32 v4.l, v12.h
	v_mov_b16_e32 v17.l, v10.h
	v_mov_b16_e32 v17.h, v4.h
	v_mov_b16_e32 v20.l, v8.h
	v_mov_b16_e32 v20.h, v4.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v9, v9, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v14, v14, v23, 0x7fff
	v_mov_b16_e32 v14.l, v15.h
	v_and_b32_e32 v15, 1, v4
	v_and_b32_e32 v17, 1, v17
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v4.l, v9.h
	v_mov_b16_e32 v23.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v10, v10, v17, 0x7fff
	v_add3_u32 v8, v8, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v17, 1, v4
	v_mov_b16_e32 v4.l, v6.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v7, v7, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v20, v28, v27, vcc_lo
	v_add3_u32 v3, v9, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 1, v4
	v_mov_b16_e32 v23.l, v7.h
	v_mov_b16_e32 v3.l, v8.h
	v_dual_cndmask_b32 v17, v27, v28 :: v_dual_cndmask_b32 v28, v33, v38
	v_add3_u32 v12, v12, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v4, v6, v4, 0x7fff
	v_mov_b16_e32 v12.l, v10.h
	v_cndmask_b32_e32 v6, v13, v5, vcc_lo
	v_cndmask_b32_e32 v5, v5, v13, vcc_lo
	v_add3_u32 v7, v7, v23, 0x7fff
	v_dual_cndmask_b32 v8, v11, v16 :: v_dual_cndmask_b32 v9, v57, v21
	v_dual_cndmask_b32 v10, v21, v57 :: v_dual_cndmask_b32 v13, v22, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v4.l, v7.h
	v_cndmask_b32_e32 v7, v16, v11, vcc_lo
	v_cndmask_b32_e32 v11, v59, v22, vcc_lo
	v_dual_cndmask_b32 v15, v29, v60 :: v_dual_cndmask_b32 v16, v60, v29
	v_dual_cndmask_b32 v21, v30, v31 :: v_dual_cndmask_b32 v22, v31, v30
	v_cndmask_b32_e32 v23, v34, v32, vcc_lo
	v_dual_cndmask_b32 v29, v35, v36 :: v_dual_cndmask_b32 v30, v36, v35
	v_dual_cndmask_b32 v34, v37, v42 :: v_dual_cndmask_b32 v35, v19, v25
	v_dual_cndmask_b32 v19, v25, v19 :: v_dual_cndmask_b32 v36, v18, v24
	v_cndmask_b32_e32 v18, v24, v18, vcc_lo
	v_dual_mov_b32 v24, 0x7632 :: v_dual_cndmask_b32 v27, v38, v33
	v_cndmask_b32_e32 v33, v42, v37, vcc_lo
	v_cndmask_b32_e32 v37, v3, v14, vcc_lo
	v_dual_cndmask_b32 v3, v14, v3 :: v_dual_mov_b32 v14, 0x5410
	v_cndmask_b32_e32 v38, v4, v12, vcc_lo
	v_cndmask_b32_e32 v4, v12, v4, vcc_lo
	v_cndmask_b32_e32 v32, v39, v41, vcc_lo
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v12, 0x1054, v14, vcc_lo
	v_cndmask_b32_e32 v14, 0x3276, v24, vcc_lo
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v12, v12, 8, v12
	v_lshl_or_b32 v14, v14, 8, v14
	v_cndmask_b32_e32 v31, v41, v39, vcc_lo
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x540054, v12
	v_and_b32_e32 v14, 0x760076, v14
	v_permlanex16_b32 v25, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v12, v12, 4, v12
	v_lshl_or_b32 v14, v14, 4, v14
	v_permlanex16_b32 v30, v34, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v34, 0x5040504, v12
	v_and_b32_e32 v39, 0x7060706, v14
	v_add_nc_u32_e32 v0, 32, v1
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v5, v6, v39
	v_perm_b32 v14, v20, v17, v39
	v_perm_b32 v18, v24, v23, v39
	v_perm_b32 v19, v25, v27, v34
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_permlanex16_b32 v41, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v5, v6, v34
	v_perm_b32 v5, v8, v7, v34
	v_perm_b32 v6, v8, v7, v39
	v_perm_b32 v7, v10, v9, v34
	v_perm_b32 v8, v10, v9, v39
	v_perm_b32 v9, v13, v11, v34
	v_perm_b32 v10, v13, v11, v39
	v_perm_b32 v13, v20, v17, v34
	v_perm_b32 v17, v24, v23, v34
	v_perm_b32 v20, v25, v27, v39
	v_perm_b32 v23, v28, v31, v34
	v_perm_b32 v24, v28, v31, v39
	v_perm_b32 v27, v32, v35, v34
	v_perm_b32 v28, v32, v35, v39
	v_dual_cndmask_b32 v35, 0x80000000, v1 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_perm_b32 v11, v16, v15, v34
	v_perm_b32 v12, v16, v15, v39
	v_permlanex16_b32 v22, v22, s0, 0xfedcba98 op_sel:[1,0]
	s_clause 0x2
	buffer_store_b128 v[3:6], v35, s[20:23], 0 offen
	buffer_store_b128 v[7:10], v0, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v2, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v1
	v_add_nc_u32_e32 v2, 0x80, v1
	v_add_nc_u32_e32 v3, 0xa0, v1
	v_add_nc_u32_e32 v4, 0xc0, v1
	v_add_nc_u32_e32 v1, 0xe0, v1
	v_perm_b32 v15, v22, v21, v34
	v_perm_b32 v16, v22, v21, v39
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v21, v26, v29, v34
	v_perm_b32 v22, v26, v29, v39
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_perm_b32 v25, v30, v33, v34
	v_perm_b32 v26, v30, v33, v39
	v_perm_b32 v29, v40, v36, v34
	v_perm_b32 v30, v40, v36, v39
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_perm_b32 v31, v41, v37, v34
	v_perm_b32 v32, v41, v37, v39
	v_perm_b32 v33, v42, v38, v34
	v_perm_b32 v34, v42, v38, v39
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[20:23], 0 offen
	buffer_store_b128 v[19:22], v2, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v3, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v4, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v1, s[20:23], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 133
		.amdhsa_next_free_sgpr 34
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
		.amdhsa_inst_pref_size 58
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 133
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7372
; TotalNumSgprs: 36
; NumVgprs: 133
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 36
; NumVGPRsForWavesPerEU: 133
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x3e DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     133
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
