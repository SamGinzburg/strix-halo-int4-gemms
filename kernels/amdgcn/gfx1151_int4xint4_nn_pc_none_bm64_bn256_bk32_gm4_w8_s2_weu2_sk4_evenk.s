	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x30
	s_load_b32 s18, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v67, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v73, 2, v0
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	v_lshrrev_b32_e32 v74, 4, v0
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_lshlrev_b32_e32 v49, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v65, 2, v67
	v_bfe_i32 v50, v0, 5, 1
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_bfe_i32 v71, v0, 3, 1
	v_mov_b32_e32 v16, v8
	v_dual_mov_b32 v15, v8 :: v_dual_and_b32 v50, 0x88, v50
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s16, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s12, s4, 2
	v_mov_b32_e32 v11, v8
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s4, s12
	v_mov_b32_e32 v10, v8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v40, v8
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v37, v8
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v36, v8
	s_mul_hi_u32 s8, s5, s8
	v_mov_b32_e32 v35, v8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_mov_b32_e32 v34, v8
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v33, v8
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v48, v8
	s_cselect_b32 s4, s9, s5
	v_mov_b32_e32 v47, v8
	s_xor_b32 s4, s4, s8
	v_mov_b32_e32 v46, v8
	s_sub_i32 s13, s4, s8
	v_mov_b32_e32 v45, v8
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s14, s13, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s13, s13, s12
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s4, s7, s14
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s13
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s15, s4, 4
	v_mov_b32_e32 v44, v8
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s16, s15
	v_mov_b32_e32 v43, v8
	s_cvt_f32_u32 s4, s16
	s_sub_i32 s20, 0, s16
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
	v_rcp_iflag_f32_e32 v1, s4
	s_clause 0x1
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b64 s[0:1], s[0:1], 0x20
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_readfirstlane_b32 s19, v1
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v54, v8
	s_mul_f32 s19, s19, 0x4f7ffffe
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	s_cvt_u32_f32 s19, s19
	v_dual_mov_b32 v7, v8 :: v_dual_lshlrev_b32 v68, 4, v0
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_and_b32_e32 v49, 0x37c, v49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_i32 s20, s20, s19
	s_mul_hi_u32 s12, s19, s20
	s_abs_i32 s20, s2
	s_add_i32 s19, s19, s12
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_mul_hi_u32 s6, s20, s19
	s_xor_b32 s7, s2, s15
	s_mul_i32 s21, s6, s16
	s_ashr_i32 s19, s7, 31
	s_sub_i32 s20, s20, s21
	s_add_i32 s21, s6, 1
	s_sub_i32 s22, s20, s16
	s_cmp_ge_u32 s20, s16
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s21, s21, s6
	s_cselect_b32 s6, s22, s20
	s_add_i32 s20, s21, 1
	s_cmp_ge_u32 s6, s16
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s16, s20, s21
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s20, s18, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s21, s16, s19
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s16, s18, s20
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s22, s21, s19
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s20, s16, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s15, s22, s15
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s16, s22, 8
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s15
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	v_add_nc_u32_e32 v72, 0, v68
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s14, s2, s14
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	s_lshl_b32 s2, s3, 4
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s14, 6
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmp_gt_i32 s18, 1
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	s_mul_i32 s15, s3, s20
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v69, 15, v0
	.loc	1 131 30                        ; generate_amdgcn.py:131:30
	s_mul_i32 s14, s17, s2
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmpk_lt_i32 s18, 0x82
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshlrev_b32_e32 v66, 4, v69
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_xor_b32_e32 v49, v50, v49
	v_mov_b32_e32 v50, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 127 30 is_stmt 0              ; generate_amdgcn.py:127:30
	v_mad_u64_u32 v[1:2], null, s20, v73, v[65:66]
	.loc	1 131 30 is_stmt 1              ; generate_amdgcn.py:131:30
	v_mad_u64_u32 v[2:3], null, s17, v74, v[66:67]
	v_dual_mov_b32 v3, v8 :: v_dual_add_nc_u32 v70, 0, v49
	v_mov_b32_e32 v49, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 127 30                        ; generate_amdgcn.py:127:30
	v_add3_u32 v1, s2, s15, v1
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_mov_b32 s15, s7
	.loc	1 131 30 is_stmt 0              ; generate_amdgcn.py:131:30
	v_add3_u32 v2, s14, s16, v2
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_mov_b32 s14, s6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 127 22 is_stmt 1              ; generate_amdgcn.py:127:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	buffer_load_b32 v79, v1, s[4:7], 0 offen
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	buffer_load_b128 v[75:78], v2, s[12:15], 0 offen
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v70, v79 offset:4096
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v72, v[75:78]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_add3_u32 v1, s2, v74, 64
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v2, 0x70, v68
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:106:32 ]
	s_add_i32 s14, s20, 63
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:106:32 ]
	s_lshr_b32 s14, s14, 6
.Ltmp13:
	.loc	1 106 9 is_stmt 1               ; generate_amdgcn.py:106:9
	v_mul_lo_u32 v1, s17, v1
	v_sub_nc_u32_e64 v4, s14, 2 clamp
	v_and_or_b32 v5, 0x88, v71, v2
	v_dual_mov_b32 v51, v49 :: v_dual_add_nc_u32 v2, s3, v73
	s_lshl_b32 s14, s21, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readfirstlane_b32 s15, v4
	v_xor_b32_e32 v4, 8, v5
	v_add3_u32 v7, v1, s14, v66
	v_mad_u64_u32 v[1:2], null, s20, v2, s[2:3]
	v_dual_mov_b32 v50, v49 :: v_dual_add_nc_u32 v3, 0, v69
	v_dual_mov_b32 v53, v49 :: v_dual_and_b32 v2, 0x70, v6
	v_dual_mov_b32 v52, v49 :: v_dual_add_nc_u32 v5, 0, v5
	v_dual_mov_b32 v55, v49 :: v_dual_add_nc_u32 v4, 0, v4
	s_lshl_b32 s14, s19, 8
	v_add3_u32 v65, v1, v65, 64
	v_subrev_nc_u32_e32 v66, s14, v7
	v_dual_mov_b32 v54, v49 :: v_dual_add_nc_u32 v73, v3, v2
	v_dual_mov_b32 v57, v49 :: v_dual_add_nc_u32 v74, 0x1000, v5
	v_dual_mov_b32 v56, v49 :: v_dual_add_nc_u32 v75, 0x1000, v4
	v_mov_b32_e32 v58, v49
	v_mov_b32_e32 v59, v49
	v_mov_b32_e32 v60, v49
	v_mov_b32_e32 v61, v49
	v_mov_b32_e32 v62, v49
	v_mov_b32_e32 v63, v49
	v_mov_b32_e32 v64, v49
	v_mov_b32_e32 v41, v49
	v_mov_b32_e32 v42, v49
	v_mov_b32_e32 v43, v49
	v_mov_b32_e32 v44, v49
	v_mov_b32_e32 v45, v49
	v_mov_b32_e32 v46, v49
	v_mov_b32_e32 v47, v49
	v_mov_b32_e32 v48, v49
	v_mov_b32_e32 v33, v49
	v_mov_b32_e32 v34, v49
	v_mov_b32_e32 v35, v49
	v_mov_b32_e32 v36, v49
	v_mov_b32_e32 v37, v49
	v_mov_b32_e32 v38, v49
	v_mov_b32_e32 v39, v49
	v_mov_b32_e32 v40, v49
	v_mov_b32_e32 v25, v49
	v_mov_b32_e32 v26, v49
	v_mov_b32_e32 v27, v49
	v_mov_b32_e32 v28, v49
	v_mov_b32_e32 v29, v49
	v_mov_b32_e32 v30, v49
	v_mov_b32_e32 v31, v49
	v_mov_b32_e32 v32, v49
	v_mov_b32_e32 v17, v49
	v_mov_b32_e32 v18, v49
	v_mov_b32_e32 v19, v49
	v_mov_b32_e32 v20, v49
	v_mov_b32_e32 v21, v49
	v_mov_b32_e32 v22, v49
	v_mov_b32_e32 v23, v49
	v_mov_b32_e32 v24, v49
	v_mov_b32_e32 v9, v49
	v_mov_b32_e32 v10, v49
	v_mov_b32_e32 v11, v49
	v_mov_b32_e32 v12, v49
	v_mov_b32_e32 v13, v49
	v_mov_b32_e32 v14, v49
	v_mov_b32_e32 v15, v49
	v_mov_b32_e32 v16, v49
	v_mov_b32_e32 v1, v49
	v_mov_b32_e32 v2, v49
	v_mov_b32_e32 v3, v49
	v_mov_b32_e32 v4, v49
	v_mov_b32_e32 v5, v49
	v_mov_b32_e32 v6, v49
	v_mov_b32_e32 v7, v49
	v_mov_b32_e32 v8, v49
	s_add_i32 s2, s15, 1
	s_lshl_b32 s18, s17, 6
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	buffer_load_b32 v104, v65, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	buffer_load_b128 v[76:79], v66, s[12:15], 0 offen
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[80:83], v74 offset1:32
	ds_load_2addr_b64 v[84:87], v74 offset0:64 offset1:96
	ds_load_2addr_b64 v[88:91], v75 offset1:32
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	ds_load_u8 v96, v73 offset:3328
	ds_load_u8 v97, v73 offset:3072
	ds_load_u8 v98, v73 offset:3840
	ds_load_u8 v99, v73 offset:3584
	ds_load_u8 v100, v73 offset:2304
	ds_load_u8 v101, v73 offset:2048
	ds_load_u8 v102, v73 offset:2816
	ds_load_u8 v103, v73 offset:2560
	ds_load_u8 v105, v73 offset:1280
	ds_load_u8 v106, v73 offset:1024
	ds_load_u8 v107, v73 offset:1792
	ds_load_u8 v108, v73 offset:1536
	ds_load_u8 v109, v73 offset:1920
	ds_load_u8 v110, v73 offset:1664
	ds_load_u8 v111, v73 offset:1408
	ds_load_u8 v112, v73 offset:1152
	ds_load_u8 v113, v73 offset:256
	ds_load_u8 v114, v73
	ds_load_u8 v115, v73 offset:768
	ds_load_u8 v116, v73 offset:512
	ds_load_u8 v117, v73 offset:896
	ds_load_u8 v118, v73 offset:640
	ds_load_u8 v119, v73 offset:384
	ds_load_u8 v120, v73 offset:128
	ds_load_u8 v121, v73 offset:3968
	ds_load_u8 v122, v73 offset:3712
	ds_load_u8 v123, v73 offset:3456
	ds_load_u8 v124, v73 offset:3200
	ds_load_u8 v125, v73 offset:2944
	ds_load_u8 v126, v73 offset:2688
	ds_load_u8 v127, v73 offset:2432
	ds_load_u8 v128, v73 offset:2176
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[92:95], v75 offset0:64 offset1:96
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v106, v108, v107, 0xc0c0004
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v107, v114, v113, 0xc0c0004
	v_perm_b32 v114, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v108, v116, v115, 0xc0c0004
	v_perm_b32 v100, v112, v111, 0xc0c0004
	v_perm_b32 v101, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v109, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v103, v120, v119, 0xc0c0004
	v_perm_b32 v113, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v111, v122, v121, 0xc0c0004
	v_lshl_or_b32 v97, v106, 16, v105
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v110, v124, v123, 0xc0c0004
	v_lshl_or_b32 v96, v108, 16, v107
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v115, v126, v125, 0xc0c0004
	v_lshl_or_b32 v101, v101, 16, v100
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v112, v128, v127, 0xc0c0004
	v_lshl_or_b32 v100, v109, 16, v103
	v_lshl_or_b32 v99, v98, 16, v113
	v_lshl_or_b32 v98, v102, 16, v114
	v_lshl_or_b32 v103, v111, 16, v110
	v_lshl_or_b32 v102, v115, 16, v112
	v_wmma_i32_16x16x16_iu4 v[49:56], v[96:97], v[80:81], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[80:81], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[96:97], v[82:83], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[100:101], v[82:83], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[96:97], v[84:85], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[100:101], v[84:85], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[96:97], v[86:87], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[100:101], v[86:87], v[1:8] neg_lo:[1,1,0]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	v_add_nc_u32_e32 v66, s18, v66
	v_add_nc_u32_e32 v65, 64, v65
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[88:89], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[102:103], v[88:89], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[90:91], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[90:91], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[92:93], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[92:93], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[94:95], v[1:8] neg_lo:[1,1,0]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_add_i32 s2, s2, -1
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt lgkmcnt(0)
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cmp_lg_u32 s2, 0
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v70, v104 offset:4096
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v72, v[76:79]
	.loc	1 106 9                         ; generate_amdgcn.py:106:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow149
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_and_b32_e32 v72, 0xf0, v0
	v_and_b32_e32 v66, 32, v0
	.loc	1 127 22 is_stmt 1              ; generate_amdgcn.py:127:22
	v_and_b32_e32 v65, 7, v0
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	v_and_b32_e32 v70, 0xe0, v0
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	v_lshrrev_b32_e32 v73, 1, v70
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_lshlrev_b32_e32 v74, 4, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 131 22                        ; generate_amdgcn.py:131:22
	v_add3_u32 v77, 0, v73, v69
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_and_or_b32 v71, 0x88, v71, v74
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	ds_load_u8 v78, v77 offset:1280
	ds_load_u8 v79, v77 offset:1024
	ds_load_u8 v80, v77 offset:1792
	ds_load_u8 v81, v77 offset:1536
	ds_load_u8 v82, v77 offset:256
	ds_load_u8 v83, v77
	ds_load_u8 v84, v77 offset:768
	ds_load_u8 v85, v77 offset:512
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_xad_u32 v73, v71, 8, 0
	v_add_nc_u32_e32 v71, 0, v71
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	ds_load_u8 v91, v77 offset:3328
	ds_load_u8 v92, v77 offset:3072
	ds_load_u8 v93, v77 offset:1920
	ds_load_u8 v94, v77 offset:1664
	ds_load_u8 v95, v77 offset:1408
	ds_load_u8 v96, v77 offset:1152
	ds_load_u8 v97, v77 offset:896
	ds_load_u8 v98, v77 offset:640
	ds_load_u8 v99, v77 offset:384
	ds_load_u8 v100, v77 offset:128
	ds_load_u8 v101, v77 offset:2304
	ds_load_u8 v102, v77 offset:2048
	ds_load_u8 v103, v77 offset:2816
	ds_load_u8 v104, v77 offset:2560
	ds_load_u8 v105, v77 offset:3840
	ds_load_u8 v106, v77 offset:3584
	ds_load_u8 v107, v77 offset:3968
	ds_load_u8 v108, v77 offset:3712
	ds_load_u8 v109, v77 offset:3456
	ds_load_u8 v110, v77 offset:3200
	ds_load_u8 v111, v77 offset:2944
	ds_load_u8 v112, v77 offset:2688
	ds_load_u8 v113, v77 offset:2432
	ds_load_u8 v114, v77 offset:2176
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	v_add_nc_u32_e32 v86, 0x1000, v73
	v_add_nc_u32_e32 v71, 0x1000, v71
	ds_load_2addr_b64 v[73:76], v71 offset1:32
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v79, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v80, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v81, v85, v84, 0xc0c0004
	v_lshl_or_b32 v90, v79, 16, v78
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v89, v81, 16, v80
	.loc	1 127 22                        ; generate_amdgcn.py:127:22
	ds_load_2addr_b64 v[77:80], v86 offset0:64 offset1:96
	ds_load_2addr_b64 v[81:84], v86 offset1:32
	ds_load_2addr_b64 v[85:88], v71 offset0:64 offset1:96
	.loc	1 132 23                        ; generate_amdgcn.py:132:23
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v71, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v91, v96, v95, 0xc0c0004
	v_perm_b32 v92, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v93, v100, v99, 0xc0c0004
	v_perm_b32 v94, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v95, v106, v105, 0xc0c0004
	v_perm_b32 v96, v102, v101, 0xc0c0004
	v_perm_b32 v97, v104, v103, 0xc0c0004
	v_lshl_or_b32 v92, v92, 16, v91
	v_lshl_or_b32 v91, v94, 16, v93
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v98, v110, v109, 0xc0c0004
	v_perm_b32 v99, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v114, v113, 0xc0c0004
	v_perm_b32 v101, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[89:90], v[73:74], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v94, v95, 16, v71
	v_lshl_or_b32 v93, v97, 16, v96
	v_wmma_i32_16x16x16_iu4 v[57:64], v[91:92], v[73:74], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v99, 16, v98
	v_lshl_or_b32 v73, v101, 16, v100
	v_wmma_i32_16x16x16_iu4 v[41:48], v[89:90], v[75:76], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[91:92], v[75:76], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[93:94], v[81:82], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[81:82], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[93:94], v[83:84], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[93:94], v[77:78], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[79:80], v[1:8] neg_lo:[1,1,0]
.LBB0_5:                                ; %._crit_edge._crit_edge
	.loc	1 142 22                        ; generate_amdgcn.py:142:22
	v_or_b32_e32 v71, s3, v69
	.loc	1 142 14 is_stmt 0              ; generate_amdgcn.py:142:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	.loc	1 142 22                        ; generate_amdgcn.py:142:22
	v_lshlrev_b32_e32 v71, 1, v71
	.loc	1 100 14 is_stmt 1              ; generate_amdgcn.py:100:14
	v_or_b32_e32 v69, s16, v0
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_lshl_add_u32 v78, v72, 1, 0
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	v_or_b32_e32 v73, 32, v71
	v_or_b32_e32 v74, 64, v71
	v_or_b32_e32 v75, 0x60, v71
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 142 14                        ; generate_amdgcn.py:142:14
	s_clause 0x3
	buffer_load_u16 v82, v71, s[4:7], 0 offen
	buffer_load_u16 v83, v73, s[4:7], 0 offen
	buffer_load_u16 v84, v74, s[4:7], 0 offen
	buffer_load_u16 v85, v75, s[4:7], 0 offen
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_lshl_add_u32 v75, v72, 2, 0
	.loc	1 141 15                        ; generate_amdgcn.py:141:15
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s15, s17, 13
	s_mul_i32 s16, s17, 14
	s_mul_i32 s69, s17, 17
	s_mul_i32 s70, s17, 18
	s_mul_i32 s2, s17, 27
	s_mul_i32 s8, s17, 5
	s_mul_i32 s9, s17, 6
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s10, s17, 7
	s_mul_i32 s11, s17, 9
	s_mul_i32 s12, s17, 10
	s_mul_i32 s13, s17, 11
	s_mul_i32 s14, s17, 12
	s_mul_i32 s18, s17, 15
	s_mul_i32 s71, s17, 19
	s_mul_i32 s72, s17, 20
	s_mul_i32 s73, s17, 21
	s_mul_i32 s74, s17, 22
	s_mul_i32 s75, s17, 23
	s_mul_i32 s76, s17, 24
	s_mul_i32 s77, s17, 25
	s_mul_i32 s78, s17, 26
	s_mul_i32 s35, s17, 29
	s_mul_i32 s36, s17, 30
	s_mul_i32 s37, s17, 31
	s_lshl_b32 s38, s17, 5
	s_mul_i32 s39, s17, 33
	s_mul_i32 s40, s17, 34
	s_mul_i32 s41, s17, 35
	s_mul_i32 s42, s17, 36
	s_mul_i32 s43, s17, 37
	s_mul_i32 s44, s17, 38
	s_mul_i32 s45, s17, 39
	s_mul_i32 s46, s17, 40
	s_mul_i32 s47, s17, 41
	s_mul_i32 s48, s17, 42
	s_mul_i32 s49, s17, 43
	s_mul_i32 s50, s17, 44
	s_mul_i32 s51, s17, 45
	s_mul_i32 s52, s17, 46
	s_mul_i32 s53, s17, 47
	s_mul_i32 s54, s17, 48
	s_mul_i32 s55, s17, 49
	s_mul_i32 s56, s17, 50
	s_mul_i32 s57, s17, 51
	s_mul_i32 s58, s17, 52
	s_mul_i32 s59, s17, 53
	s_mul_i32 s60, s17, 54
	s_mul_i32 s61, s17, 55
	s_mul_i32 s62, s17, 56
	s_mul_i32 s63, s17, 57
	s_mul_i32 s64, s17, 58
	s_mul_i32 s65, s17, 59
	s_mul_i32 s66, s17, 60
	s_mul_i32 s67, s17, 61
	s_mul_i32 s68, s17, 62
	s_mul_i32 s30, s17, 63
	.loc	1 142 14 is_stmt 1              ; generate_amdgcn.py:142:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v83, 16, v83
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 143 14                        ; generate_amdgcn.py:143:14
	v_lshlrev_b32_e32 v76, 1, v69
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_lshlrev_b32_e32 v73, 1, v0
	v_lshlrev_b32_e32 v74, 5, v0
	.loc	1 144 9 is_stmt 0               ; generate_amdgcn.py:144:9
	v_and_b32_e32 v72, 16, v0
	v_and_b32_e32 v68, 0xcf0, v68
	.loc	1 143 14 is_stmt 1              ; generate_amdgcn.py:143:14
	buffer_load_u16 v71, v76, s[4:7], 0 offen
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshlrev_b32_e32 v0, 6, v0
	v_lshlrev_b32_e32 v70, 5, v70
	v_lshl_or_b32 v66, v66, 1, v72
	.loc	1 144 16 is_stmt 0              ; generate_amdgcn.py:144:16
	v_and_b32_e32 v73, 28, v73
	v_and_b32_e32 v74, 32, v74
	s_waitcnt lgkmcnt(0)
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_and_or_b32 v0, 0x300, v0, v70
	v_xor_b32_e32 v66, v66, v68
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	s_barrier
	v_add3_u32 v68, v75, v74, v73
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshlrev_b32_e32 v67, 4, v67
	.loc	1 218 23 is_stmt 1              ; generate_amdgcn.py:218:23
	s_mul_i32 s4, s3, s17
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_lshl_or_b32 v86, v65, 13, v66
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s5, s17, 3
	s_add_i32 s34, s4, s17
	s_lshl1_add_u32 s33, s17, s4
	s_mul_i32 s3, s17, 28
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_xad_u32 v122, v86, 32, 0
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_add_i32 s31, s4, s5
	s_lshl2_add_u32 s29, s17, s4
	s_add_i32 s20, s4, s15
	s_add_i32 s19, s4, s16
	s_add_i32 s16, s4, s69
	s_add_i32 s15, s4, s70
	s_add_i32 s69, s4, s2
	s_add_i32 s70, s4, s3
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_mov_b32 s2, s6
	s_mov_b32 s3, s7
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_add_i32 s28, s4, s8
	s_add_i32 s27, s4, s9
	s_add_i32 s26, s4, s10
	s_lshl3_add_u32 s25, s17, s4
	s_add_i32 s24, s4, s11
	s_add_i32 s23, s4, s12
	s_add_i32 s22, s4, s13
	s_add_i32 s21, s4, s14
	s_add_i32 s18, s4, s18
	s_lshl4_add_u32 s17, s17, s4
	s_add_i32 s14, s4, s71
	s_add_i32 s13, s4, s72
	s_add_i32 s12, s4, s73
	s_add_i32 s11, s4, s74
	s_add_i32 s10, s4, s75
	s_add_i32 s8, s4, s76
	s_add_i32 s5, s4, s77
	s_add_i32 s9, s4, s78
	s_add_i32 s35, s4, s35
	s_add_i32 s36, s4, s36
	s_add_i32 s37, s4, s37
	s_add_i32 s38, s4, s38
	s_add_i32 s39, s4, s39
	s_add_i32 s40, s4, s40
	s_add_i32 s41, s4, s41
	s_add_i32 s42, s4, s42
	s_add_i32 s43, s4, s43
	s_add_i32 s44, s4, s44
	s_add_i32 s45, s4, s45
	s_add_i32 s46, s4, s46
	s_add_i32 s47, s4, s47
	s_add_i32 s48, s4, s48
	s_add_i32 s49, s4, s49
	s_add_i32 s50, s4, s50
	s_add_i32 s51, s4, s51
	s_add_i32 s52, s4, s52
	s_add_i32 s53, s4, s53
	s_add_i32 s54, s4, s54
	s_add_i32 s55, s4, s55
	s_add_i32 s56, s4, s56
	s_add_i32 s57, s4, s57
	s_add_i32 s58, s4, s58
	s_add_i32 s59, s4, s59
	s_add_i32 s60, s4, s60
	s_add_i32 s61, s4, s61
	s_add_i32 s62, s4, s62
	s_add_i32 s63, s4, s63
	s_add_i32 s64, s4, s64
	s_add_i32 s65, s4, s65
	s_add_i32 s66, s4, s66
	s_add_i32 s67, s4, s67
	s_add_i32 s68, s4, s68
	.loc	1 143 14 is_stmt 1              ; generate_amdgcn.py:143:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v71
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	ds_store_b32 v68, v70
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v78 offset:512
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v97, v77, v82 :: v_dual_lshlrev_b32 v72, 2, v72
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 144 9 is_stmt 0               ; generate_amdgcn.py:144:9
	v_or3_b32 v0, v0, v67, v72
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	ds_load_b128 v[65:68], v78
	ds_load_b128 v[70:73], v78 offset:16
	ds_load_b128 v[78:81], v78 offset:528
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	s_waitcnt lgkmcnt(0)
	v_xad_u32 v115, 0x2010, v0, 0
	v_xad_u32 v116, 0x4020, v0, 0
	v_xad_u32 v117, 0x6030, v0, 0
	v_xad_u32 v118, 0x8040, v0, 0
	v_xad_u32 v119, 0xa050, v0, 0
	v_xad_u32 v120, 0xc060, v0, 0
	v_xad_u32 v121, 0xe070, v0, 0
	s_barrier
	.loc	1 144 16                        ; generate_amdgcn.py:144:16
	v_dual_mul_f32 v111, v71, v83 :: v_dual_lshlrev_b32 v84, 16, v84
	v_mul_f32_e32 v103, v81, v82
	v_dual_mul_f32 v96, v76, v82 :: v_dual_lshlrev_b32 v85, 16, v85
	v_dual_mul_f32 v101, v80, v82 :: v_dual_add_nc_u32 v114, 0, v0
	v_mul_f32_e32 v87, v66, v82
	v_mul_f32_e32 v88, v67, v82
	v_mul_f32_e32 v89, v68, v82
	v_mul_f32_e32 v93, v73, v82
	v_mul_f32_e32 v94, v74, v82
	v_dual_mul_f32 v109, v70, v83 :: v_dual_add_nc_u32 v0, 0, v86
	v_mul_f32_e32 v86, v65, v82
	v_dual_mul_f32 v104, v65, v83 :: v_dual_mul_f32 v133, v67, v84
	v_dual_mul_f32 v108, v68, v83 :: v_dual_mul_f32 v131, v65, v84
	v_dual_mul_f32 v140, v75, v84 :: v_dual_mul_f32 v147, v65, v85
	v_mul_f32_e32 v90, v70, v82
	v_mul_f32_e32 v95, v75, v82
	v_mul_f32_e32 v107, v67, v83
	v_dual_mul_f32 v123, v74, v83 :: v_dual_mul_f32 v134, v68, v84
	v_dual_mul_f32 v142, v77, v84 :: v_dual_mul_f32 v149, v67, v85
	v_mul_f32_e32 v91, v71, v82
	v_mul_f32_e32 v92, v72, v82
	v_dual_mul_f32 v112, v72, v83 :: v_dual_mul_f32 v135, v70, v84
	v_dual_mul_f32 v144, v79, v84 :: v_dual_mul_f32 v151, v70, v85
	v_dual_mul_f32 v124, v75, v83 :: v_dual_mul_f32 v137, v72, v84
	v_dual_mul_f32 v146, v81, v84 :: v_dual_mul_f32 v153, v72, v85
	v_mul_f32_e32 v99, v78, v82
	v_dual_mul_f32 v100, v79, v82 :: v_dual_mul_f32 v113, v73, v83
	v_dual_mul_f32 v126, v77, v83 :: v_dual_mul_f32 v139, v74, v84
	v_dual_mul_f32 v127, v78, v83 :: v_dual_mul_f32 v136, v71, v84
	v_dual_mul_f32 v130, v81, v83 :: v_dual_mul_f32 v143, v78, v84
	v_dual_mul_f32 v155, v74, v85 :: v_dual_mul_f32 v70, v88, v51
	v_mul_f32_e32 v105, v66, v83
	v_dual_mul_f32 v125, v76, v83 :: v_dual_mul_f32 v132, v66, v84
	v_dual_mul_f32 v128, v79, v83 :: v_dual_mul_f32 v141, v76, v84
	v_dual_mul_f32 v129, v80, v83 :: v_dual_mul_f32 v138, v73, v84
	v_dual_mul_f32 v145, v80, v84 :: v_dual_mul_f32 v148, v66, v85
	v_dual_mul_f32 v150, v68, v85 :: v_dual_mul_f32 v65, v87, v50
	v_mul_f32_e32 v152, v71, v85
	v_dual_mul_f32 v154, v73, v85 :: v_dual_mul_f32 v71, v107, v43
	v_dual_mul_f32 v156, v75, v85 :: v_dual_mul_f32 v83, v112, v47
	v_dual_mul_f32 v157, v76, v85 :: v_dual_mul_f32 v74, v89, v52
	v_mul_f32_e32 v158, v77, v85
	v_dual_mul_f32 v159, v78, v85 :: v_dual_mul_f32 v78, v91, v54
	v_dual_mul_f32 v160, v79, v85 :: v_dual_mul_f32 v87, v113, v48
	v_mul_f32_e32 v161, v80, v85
	v_dual_mul_f32 v162, v81, v85 :: v_dual_mul_f32 v91, v124, v34
	.loc	1 144 9                         ; generate_amdgcn.py:144:9
	v_dual_mul_f32 v49, v86, v49 :: v_dual_mul_f32 v82, v92, v55
	v_mul_f32_e32 v86, v93, v56
	v_dual_mul_f32 v50, v104, v41 :: v_dual_mul_f32 v107, v129, v39
	v_dual_mul_f32 v51, v131, v25 :: v_dual_mul_f32 v72, v133, v27
	v_mul_f32_e32 v52, v147, v9
	v_dual_mul_f32 v53, v90, v53 :: v_dual_mul_f32 v90, v95, v58
	v_dual_mul_f32 v58, v123, v33 :: v_dual_mul_f32 v73, v149, v11
	v_dual_mul_f32 v54, v109, v45 :: v_dual_mul_f32 v67, v132, v26
	v_dual_mul_f32 v76, v134, v28 :: v_dual_mul_f32 v55, v135, v29
	v_mul_f32_e32 v56, v151, v13
	v_mul_f32_e32 v84, v137, v31
	v_dual_mul_f32 v92, v140, v18 :: v_dual_mul_f32 v85, v153, v15
	v_dual_mul_f32 v57, v94, v57 :: v_dual_mul_f32 v94, v96, v59
	v_dual_mul_f32 v98, v97, v60 :: v_dual_mul_f32 v61, v99, v61
	v_dual_mul_f32 v102, v100, v62 :: v_dual_mul_f32 v95, v125, v35
	v_dual_mul_f32 v106, v101, v63 :: v_dual_mul_f32 v99, v126, v36
	v_dual_mul_f32 v62, v127, v37 :: v_dual_mul_f32 v77, v150, v12
	v_dual_mul_f32 v80, v136, v30 :: v_dual_mul_f32 v59, v139, v17
	v_mul_f32_e32 v63, v143, v21
	v_mul_f32_e32 v60, v155, v1
	v_dual_mul_f32 v110, v103, v64 :: v_dual_mul_f32 v103, v128, v38
	v_dual_mul_f32 v66, v105, v42 :: v_dual_mul_f32 v75, v108, v44
	v_mul_f32_e32 v79, v111, v46
	v_mul_f32_e32 v111, v130, v40
	v_dual_mul_f32 v88, v138, v32 :: v_dual_mul_f32 v81, v152, v14
	v_dual_mul_f32 v96, v141, v19 :: v_dual_mul_f32 v89, v154, v16
	v_dual_mul_f32 v100, v142, v20 :: v_dual_mul_f32 v93, v156, v2
	v_dual_mul_f32 v104, v144, v22 :: v_dual_mul_f32 v97, v157, v3
	v_dual_mul_f32 v108, v145, v23 :: v_dual_mul_f32 v101, v158, v4
	v_dual_mul_f32 v112, v146, v24 :: v_dual_mul_f32 v105, v160, v6
	v_dual_mul_f32 v68, v148, v10 :: v_dual_mul_f32 v113, v162, v8
	v_dual_mul_f32 v64, v159, v5 :: v_dual_mul_f32 v109, v161, v7
	ds_store_b128 v0, v[49:52]
	ds_store_b128 v0, v[70:73] offset:256
	ds_store_b128 v0, v[53:56] offset:512
	ds_store_b128 v0, v[82:85] offset:768
	ds_store_b128 v0, v[57:60] offset:4096
	ds_store_b128 v0, v[94:97] offset:4352
	ds_store_b128 v0, v[61:64] offset:4608
	ds_store_b128 v0, v[106:109] offset:4864
	ds_store_b128 v122, v[65:68]
	ds_store_b128 v122, v[74:77] offset:256
	ds_store_b128 v122, v[78:81] offset:512
	ds_store_b128 v122, v[86:89] offset:768
	ds_store_b128 v122, v[90:93] offset:4096
	ds_store_b128 v122, v[98:101] offset:4352
	ds_store_b128 v122, v[102:105] offset:4608
	ds_store_b128 v122, v[110:113] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v114
	ds_load_b128 v[4:7], v114 offset:128
	ds_load_b128 v[8:11], v115
	ds_load_b128 v[12:15], v115 offset:128
	ds_load_b128 v[16:19], v116
	ds_load_b128 v[20:23], v116 offset:128
	ds_load_b128 v[24:27], v117
	ds_load_b128 v[28:31], v117 offset:128
	ds_load_b128 v[32:35], v118
	ds_load_b128 v[36:39], v118 offset:128
	ds_load_b128 v[40:43], v119
	ds_load_b128 v[44:47], v119 offset:128
	ds_load_b128 v[48:51], v120
	ds_load_b128 v[52:55], v120 offset:128
	ds_load_b128 v[56:59], v121
	ds_load_b128 v[60:63], v121 offset:128
	.loc	1 218 9 is_stmt 1               ; generate_amdgcn.py:218:9
	v_add_lshl_u32 v64, s4, v69, 2
	v_add_lshl_u32 v65, s34, v69, 2
	v_add_lshl_u32 v66, s33, v69, 2
	v_add_lshl_u32 v67, s31, v69, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v64, s[0:3], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v65, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v16, v66, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v24, v67, s[0:3], 0 offen
	v_add_lshl_u32 v0, s29, v69, 2
	v_add_lshl_u32 v8, s28, v69, 2
	v_add_lshl_u32 v16, s27, v69, 2
	v_add_lshl_u32 v24, s26, v69, 2
	v_add_lshl_u32 v64, s25, v69, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v32, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v40, v8, s[0:3], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v48, v16, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v56, v24, s[0:3], 0 offen
	buffer_atomic_add_f32 v4, v64, s[0:3], 0 offen
	v_add_lshl_u32 v0, s24, v69, 2
	v_add_lshl_u32 v4, s23, v69, 2
	v_add_lshl_u32 v8, s22, v69, 2
	v_add_lshl_u32 v16, s21, v69, 2
	v_add_lshl_u32 v24, s20, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v12, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v20, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v28, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v36, v16, s[0:3], 0 offen
	buffer_atomic_add_f32 v44, v24, s[0:3], 0 offen
	v_add_lshl_u32 v0, s19, v69, 2
	v_add_lshl_u32 v4, s18, v69, 2
	v_add_lshl_u32 v8, s17, v69, 2
	v_add_lshl_u32 v12, s16, v69, 2
	v_add_lshl_u32 v16, s15, v69, 2
	buffer_atomic_add_f32 v52, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v60, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v12, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v16, s[0:3], 0 offen
	v_add_lshl_u32 v0, s14, v69, 2
	v_add_lshl_u32 v1, s13, v69, 2
	v_add_lshl_u32 v4, s12, v69, 2
	v_add_lshl_u32 v8, s11, v69, 2
	v_add_lshl_u32 v9, s10, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v33, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v41, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v49, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v57, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s8, v69, 2
	v_add_lshl_u32 v1, s5, v69, 2
	v_add_lshl_u32 v4, s9, v69, 2
	v_add_lshl_u32 v8, s69, v69, 2
	v_add_lshl_u32 v9, s70, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v21, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v8, s[0:3], 0 offen
	buffer_atomic_add_f32 v37, v9, s[0:3], 0 offen
	v_add_lshl_u32 v0, s35, v69, 2
	v_add_lshl_u32 v1, s36, v69, 2
	v_add_lshl_u32 v4, s37, v69, 2
	v_add_lshl_u32 v5, s38, v69, 2
	v_add_lshl_u32 v8, s39, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v45, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v53, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v61, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v2, v5, s[0:3], 0 offen
	buffer_atomic_add_f32 v10, v8, s[0:3], 0 offen
	v_add_lshl_u32 v0, s40, v69, 2
	v_add_lshl_u32 v1, s41, v69, 2
	v_add_lshl_u32 v2, s42, v69, 2
	v_add_lshl_u32 v4, s43, v69, 2
	v_add_lshl_u32 v5, s44, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v34, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v42, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v50, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s45, v69, 2
	v_add_lshl_u32 v1, s46, v69, 2
	v_add_lshl_u32 v2, s47, v69, 2
	v_add_lshl_u32 v4, s48, v69, 2
	v_add_lshl_u32 v5, s49, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v58, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v14, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s50, v69, 2
	v_add_lshl_u32 v1, s51, v69, 2
	v_add_lshl_u32 v2, s52, v69, 2
	v_add_lshl_u32 v4, s53, v69, 2
	v_add_lshl_u32 v5, s54, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v38, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v46, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v54, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v62, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s55, v69, 2
	v_add_lshl_u32 v1, s56, v69, 2
	v_add_lshl_u32 v2, s57, v69, 2
	v_add_lshl_u32 v3, s58, v69, 2
	v_add_lshl_u32 v4, s59, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v19, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v27, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v35, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v43, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s60, v69, 2
	v_add_lshl_u32 v1, s61, v69, 2
	v_add_lshl_u32 v2, s62, v69, 2
	v_add_lshl_u32 v3, s63, v69, 2
	v_add_lshl_u32 v4, s64, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v51, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v59, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v15, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s65, v69, 2
	v_add_lshl_u32 v1, s66, v69, 2
	.loc	1 218 23 is_stmt 0              ; generate_amdgcn.py:218:23
	s_add_i32 s4, s4, s30
	.loc	1 218 9                         ; generate_amdgcn.py:218:9
	v_add_lshl_u32 v2, s67, v69, 2
	v_add_lshl_u32 v3, s68, v69, 2
	v_add_lshl_u32 v4, s4, v69, 2
	s_clause 0x4
	buffer_atomic_add_f32 v31, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v39, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v47, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v55, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v63, v4, s[0:3], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
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
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 79
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
		.amdhsa_inst_pref_size 47
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.num_vgpr, 163
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.numbered_sgpr, 79
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5988
; TotalNumSgprs: 81
; NumVgprs: 163
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 81
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
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
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	106                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     81
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm64_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     163
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
