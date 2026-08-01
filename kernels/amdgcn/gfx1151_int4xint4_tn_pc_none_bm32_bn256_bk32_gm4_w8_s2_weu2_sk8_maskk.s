	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x30
	s_load_b32 s19, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v35, 15, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshrrev_b32_e32 v41, 4, v0
	v_lshrrev_b32_e32 v37, 1, v0
	v_mov_b32_e32 v8, 0
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_lshlrev_b32_e32 v36, 1, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v33, 1, v35
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v34, 4, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v39, 4, v0
	v_mov_b32_e32 v7, v8
	v_dual_mov_b32 v5, v8 :: v_dual_add_nc_u32 v38, 0, v36
	v_dual_mov_b32 v4, v8 :: v_dual_add_nc_u32 v39, 0, v39
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s16, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s14, s4, 2
	v_mov_b32_e32 v21, v8
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s14
	v_mov_b32_e32 v20, v8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v9, v8
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s14
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	s_sub_i32 s15, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s18, s15, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s15, s15, s14
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s18
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s15
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s23, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s21, s23
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s12, s21
	s_load_b64 s[0:1], s[0:1], 0x20
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s12
	v_readfirstlane_b32 s12, v1
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	v_mad_u64_u32 v[1:2], null, s16, v41, v[33:34]
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_mad_u64_u32 v[2:3], null, s17, v41, v[34:35]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s20, s12, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_sub_i32 s7, 0, s21
	s_cvt_u32_f32 s6, s20
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s15, s14, s6
	s_xor_b32 s6, s2, s23
	s_mul_i32 s22, s15, s21
	s_ashr_i32 s20, s6, 31
	s_sub_i32 s14, s14, s22
	s_add_i32 s22, s15, 1
	s_sub_i32 s24, s14, s21
	s_cmp_ge_u32 s14, s21
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s15, s22, s15
	s_cselect_b32 s14, s24, s14
	s_add_i32 s22, s15, 1
	s_cmp_ge_u32 s14, s21
	s_cselect_b32 s14, s22, s15
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s15, s19, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s21, s14, s20
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s22, s3, 4
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s3, s19, s15
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s15, s21, s20
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v3, s22, v41
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s25, s15, s23
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s23, s3, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s25
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	s_mul_i32 s14, s16, s22
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s18
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s3, s15, 8
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_gt_i32_e32 vcc_lo, s23, v3
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s2, s2, 5
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s24, s17, s22
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s19, 1
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	v_add3_u32 v1, s14, s2, v1
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add3_u32 v2, s24, s3, v2
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s18, -1, 0
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s18, vcc_lo
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s14, s6
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s15, s7
	s_and_b32 s13, s13, 0xffff
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	buffer_load_u16 v40, v1, s[4:7], 0 offen
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	buffer_load_b128 v[42:45], v2, s[12:15], 0 offen
	v_dual_mov_b32 v3, v8 :: v_dual_add_nc_u32 v36, 0, v35
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_lt_i32 s19, 0x102
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v38, v40 offset:4096
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v39, v[42:45]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s19, s22, 0x80
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v2, 0x70, v37
	v_add_nc_u32_e32 v1, s19, v41
	v_sub_nc_u32_e32 v40, s23, v41
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_addk_i32 s23, 0x7f
.Ltmp13:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_lshl_b32 s14, s21, 8
	v_mov_b32_e32 v10, v9
	v_mul_lo_u32 v3, s17, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s15, s23, 7
.Ltmp15:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_mul_lo_u32 v1, s16, v1
	v_sub_nc_u32_e64 v4, s15, 2 clamp
	v_dual_mov_b32 v12, v9 :: v_dual_add_nc_u32 v41, v36, v2
	s_lshl_b32 s15, s20, 8
	v_mov_b32_e32 v11, v9
	v_add3_u32 v2, v3, s14, v34
	v_readfirstlane_b32 s21, v4
	v_add3_u32 v33, v1, s2, v33
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v14, v9
	v_subrev_nc_u32_e32 v34, s15, v2
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v25, v9
	v_mov_b32_e32 v26, v9
	v_mov_b32_e32 v27, v9
	v_mov_b32_e32 v28, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v32, v9
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	s_lshl_b32 s20, s17, 7
	s_add_i32 s21, s21, 1
	s_lshl_b32 s16, s16, 7
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e32 vcc_lo, s19, v40
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s21, s21, -1
	s_addk_i32 s19, 0x80
	s_cmp_lg_u32 s21, 0
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_dual_cndmask_b32 v42, 0x80000000, v33 :: v_dual_cndmask_b32 v43, 0x80000000, v34
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v33, s16, v33
	v_add_nc_u32_e32 v34, s20, v34
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	buffer_load_u16 v62, v42, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	buffer_load_b128 v[42:45], v43, s[12:15], 0 offen
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v46, v36 offset:4256
	ds_load_u8 v47, v36 offset:4224
	ds_load_u8 v48, v36 offset:4320
	ds_load_u8 v49, v36 offset:4288
	ds_load_u8 v50, v36 offset:4192
	ds_load_u8 v51, v36 offset:4160
	ds_load_u8 v52, v36 offset:4096
	ds_load_u8 v53, v36 offset:4112
	ds_load_u8 v54, v36 offset:4128
	ds_load_u8 v55, v36 offset:4208
	ds_load_u8 v56, v36 offset:4176
	ds_load_u8 v57, v36 offset:4144
	ds_load_u8 v58, v36 offset:4512
	ds_load_u8 v59, v36 offset:4480
	ds_load_u8 v60, v36 offset:4576
	ds_load_u8 v61, v36 offset:4544
	ds_load_u8 v63, v36 offset:4384
	ds_load_u8 v64, v36 offset:4352
	ds_load_u8 v65, v36 offset:4448
	ds_load_u8 v66, v36 offset:4416
	ds_load_u8 v67, v41 offset:1280
	ds_load_u8 v68, v41 offset:1024
	ds_load_u8 v69, v41 offset:1792
	ds_load_u8 v70, v41 offset:1536
	ds_load_u8 v71, v41 offset:1920
	ds_load_u8 v72, v41 offset:1664
	ds_load_u8 v73, v41 offset:1408
	ds_load_u8 v74, v41 offset:1152
	ds_load_u8 v75, v41 offset:256
	ds_load_u8 v76, v41
	ds_load_u8 v77, v41 offset:768
	ds_load_u8 v78, v41 offset:512
	ds_load_u8 v79, v41 offset:896
	ds_load_u8 v80, v41 offset:640
	ds_load_u8 v81, v41 offset:384
	ds_load_u8 v82, v41 offset:128
	ds_load_u8 v83, v41 offset:3328
	ds_load_u8 v84, v41 offset:3072
	ds_load_u8 v85, v41 offset:3840
	ds_load_u8 v86, v41 offset:3584
	ds_load_u8 v87, v41 offset:3968
	ds_load_u8 v88, v41 offset:3712
	ds_load_u8 v89, v41 offset:3456
	ds_load_u8 v90, v41 offset:3200
	ds_load_u8 v91, v41 offset:2304
	ds_load_u8 v92, v41 offset:2048
	ds_load_u8 v93, v41 offset:2816
	ds_load_u8 v94, v41 offset:2560
	ds_load_u8 v95, v41 offset:2944
	ds_load_u8 v96, v41 offset:2688
	ds_load_u8 v97, v41 offset:2432
	ds_load_u8 v98, v41 offset:2176
	ds_load_u8 v99, v36 offset:4336
	ds_load_u8 v100, v36 offset:4304
	ds_load_u8 v101, v36 offset:4272
	ds_load_u8 v102, v36 offset:4240
	ds_load_u8 v103, v36 offset:4592
	ds_load_u8 v104, v36 offset:4560
	ds_load_u8 v105, v36 offset:4528
	ds_load_u8 v106, v36 offset:4496
	ds_load_u8 v107, v36 offset:4464
	ds_load_u8 v108, v36 offset:4432
	ds_load_u8 v109, v36 offset:4400
	ds_load_u8 v110, v36 offset:4368
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v47, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v48, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v49, v52, v54, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v50, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v51, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v52, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v54, v78, v77, 0xc0c0004
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_perm_b32 v59, v61, v60, 0xc0c0004
	v_perm_b32 v67, v74, v73, 0xc0c0004
	v_perm_b32 v68, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v69, v82, v81, 0xc0c0004
	v_perm_b32 v70, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v75, v102, v101, 0xc0c0004
	v_perm_b32 v76, v100, v99, 0xc0c0004
	v_perm_b32 v77, v56, v55, 0xc0c0004
	v_perm_b32 v78, v53, v57, 0xc0c0004
	v_perm_b32 v60, v64, v63, 0xc0c0004
	v_perm_b32 v61, v66, v65, 0xc0c0004
	v_perm_b32 v63, v84, v83, 0xc0c0004
	v_perm_b32 v64, v86, v85, 0xc0c0004
	v_perm_b32 v65, v92, v91, 0xc0c0004
	v_perm_b32 v66, v94, v93, 0xc0c0004
	v_perm_b32 v71, v90, v89, 0xc0c0004
	v_perm_b32 v72, v88, v87, 0xc0c0004
	v_perm_b32 v73, v98, v97, 0xc0c0004
	v_perm_b32 v74, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v106, v105, 0xc0c0004
	v_perm_b32 v80, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v110, v109, 0xc0c0004
	v_perm_b32 v82, v108, v107, 0xc0c0004
	v_lshl_or_b32 v47, v47, 16, v46
	v_lshl_or_b32 v46, v48, 16, v49
	v_lshl_or_b32 v49, v51, 16, v50
	v_lshl_or_b32 v48, v54, 16, v52
	v_lshl_or_b32 v51, v59, 16, v58
	v_lshl_or_b32 v55, v68, 16, v67
	v_lshl_or_b32 v54, v70, 16, v69
	v_lshl_or_b32 v59, v76, 16, v75
	v_lshl_or_b32 v58, v77, 16, v78
	v_lshl_or_b32 v50, v61, 16, v60
	v_lshl_or_b32 v53, v64, 16, v63
	v_lshl_or_b32 v52, v66, 16, v65
	v_lshl_or_b32 v57, v72, 16, v71
	v_lshl_or_b32 v56, v74, 16, v73
	v_lshl_or_b32 v61, v80, 16, v79
	v_lshl_or_b32 v60, v82, 16, v81
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[46:47], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[54:55], v[46:47], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[48:49], v[58:59], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[54:55], v[58:59], v[1:8] neg_lo:[1,1,0]
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt lgkmcnt(0)
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[52:53], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[56:57], v[50:51], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[52:53], v[60:61], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[56:57], v[60:61], v[1:8] neg_lo:[1,1,0]
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v38, v62 offset:4096
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v39, v[42:45]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow135
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_and_b32_e32 v33, 0xf0, v0
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v34, v36 offset:4256
	ds_load_u8 v38, v36 offset:4224
	ds_load_u8 v39, v36 offset:4320
	ds_load_u8 v40, v36 offset:4288
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_and_b32_e32 v37, 0x70, v37
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v41, v36 offset:4192
	ds_load_u8 v42, v36 offset:4160
	ds_load_u8 v43, v36 offset:4096
	ds_load_u8 v44, v36 offset:4128
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_add_nc_u32_e32 v45, v36, v37
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v47, v36 offset:4336
	ds_load_u8 v48, v36 offset:4304
	ds_load_u8 v49, v36 offset:4272
	ds_load_u8 v50, v36 offset:4240
	ds_load_u8 v37, v45 offset:1280
	ds_load_u8 v46, v45 offset:1024
	ds_load_u8 v51, v45 offset:1792
	ds_load_u8 v52, v45 offset:1536
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v34, v38, v34, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_perm_b32 v38, v40, v39, 0xc0c0004
	ds_load_u8 v39, v45 offset:256
	ds_load_u8 v40, v45
	ds_load_u8 v53, v45 offset:768
	ds_load_u8 v54, v45 offset:512
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v42, v43, v44, 0xc0c0004
	ds_load_u8 v43, v45 offset:1920
	ds_load_u8 v44, v45 offset:1664
	ds_load_u8 v58, v45 offset:1408
	ds_load_u8 v59, v45 offset:1152
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v46, v46, v37, 0xc0c0004
	v_lshl_or_b32 v38, v38, 16, v34
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	v_lshl_or_b32 v37, v41, 16, v42
	ds_load_u8 v52, v45 offset:896
	ds_load_u8 v60, v45 offset:640
	ds_load_u8 v61, v45 offset:384
	ds_load_u8 v62, v45 offset:128
	ds_load_u8 v34, v36 offset:4112
	ds_load_u8 v55, v36 offset:4208
	ds_load_u8 v56, v36 offset:4176
	ds_load_u8 v57, v36 offset:4144
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_lshl_or_b32 v40, v51, 16, v46
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v36 offset:4512
	ds_load_u8 v63, v36 offset:4480
	ds_load_u8 v64, v36 offset:4576
	ds_load_u8 v65, v36 offset:4544
	v_lshl_or_b32 v39, v53, 16, v39
	ds_load_u8 v41, v36 offset:4384
	ds_load_u8 v42, v36 offset:4352
	ds_load_u8 v46, v36 offset:4448
	ds_load_u8 v51, v36 offset:4416
	ds_load_u8 v53, v45 offset:3328
	ds_load_u8 v66, v45 offset:3072
	ds_load_u8 v67, v36 offset:4592
	ds_load_u8 v68, v36 offset:4560
	ds_load_u8 v69, v36 offset:4528
	ds_load_u8 v70, v36 offset:4496
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v34, v34, v57, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[37:38], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v54, v63, v54, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v46, v51, v46, 0xc0c0004
	v_perm_b32 v63, v65, v64, 0xc0c0004
	ds_load_u8 v64, v45 offset:3840
	ds_load_u8 v65, v45 offset:3584
	ds_load_u8 v71, v45 offset:2304
	ds_load_u8 v72, v45 offset:2048
	ds_load_u8 v73, v45 offset:2816
	ds_load_u8 v74, v45 offset:2560
	ds_load_u8 v75, v36 offset:4464
	ds_load_u8 v76, v36 offset:4432
	ds_load_u8 v77, v36 offset:4400
	ds_load_u8 v78, v36 offset:4368
	v_perm_b32 v36, v42, v41, 0xc0c0004
	ds_load_u8 v51, v45 offset:3968
	ds_load_u8 v79, v45 offset:3712
	ds_load_u8 v80, v45 offset:3456
	ds_load_u8 v81, v45 offset:3200
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v53, v66, v53, 0xc0c0004
	v_perm_b32 v41, v59, v58, 0xc0c0004
	ds_load_u8 v58, v45 offset:2944
	ds_load_u8 v59, v45 offset:2688
	ds_load_u8 v66, v45 offset:2432
	ds_load_u8 v82, v45 offset:2176
	v_perm_b32 v42, v44, v43, 0xc0c0004
	v_perm_b32 v43, v62, v61, 0xc0c0004
	v_perm_b32 v44, v60, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v42, v42, 16, v41
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v45, v65, v64, 0xc0c0004
	v_lshl_or_b32 v41, v44, 16, v43
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v52, v72, v71, 0xc0c0004
	v_lshl_or_b32 v43, v46, 16, v36
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v60, v74, v73, 0xc0c0004
	v_perm_b32 v36, v50, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[37:38], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v37, v48, v47, 0xc0c0004
	v_perm_b32 v47, v56, v55, 0xc0c0004
	v_lshl_or_b32 v46, v45, 16, v53
	v_lshl_or_b32 v45, v60, 16, v52
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v81, v80, 0xc0c0004
	v_perm_b32 v48, v79, v51, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v82, v66, 0xc0c0004
	v_perm_b32 v50, v59, v58, 0xc0c0004
	v_lshl_or_b32 v37, v37, 16, v36
	v_lshl_or_b32 v36, v47, 16, v34
	v_perm_b32 v34, v70, v69, 0xc0c0004
	v_perm_b32 v51, v68, v67, 0xc0c0004
	v_perm_b32 v52, v78, v77, 0xc0c0004
	v_perm_b32 v53, v76, v75, 0xc0c0004
	v_lshl_or_b32 v44, v63, 16, v54
	v_lshl_or_b32 v48, v48, 16, v38
	v_lshl_or_b32 v47, v50, 16, v49
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[36:37], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v51, 16, v34
	v_lshl_or_b32 v38, v53, 16, v52
	v_wmma_i32_16x16x16_iu4 v[1:8], v[41:42], v[36:37], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[43:44], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[38:39], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[38:39], v[1:8] neg_lo:[1,1,0]
.LBB0_5:                                ; %._crit_edge._crit_edge
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or_b32_e32 v34, s2, v35
	.loc	1 169 14 is_stmt 0              ; generate_amdgcn.py:169:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v35, 1, v34
	.loc	1 127 14 is_stmt 1              ; generate_amdgcn.py:127:14
	v_or_b32_e32 v34, s3, v0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v47, v19
	v_cvt_f32_i32_e32 v51, v2
	v_cvt_f32_i32_e32 v52, v3
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_or_b32_e32 v36, 32, v35
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v53, v4
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_bfe_i32 v4, v0, 0, 1
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v45, v16
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_clause 0x1
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v46, v17
	v_cvt_f32_i32_e32 v38, v9
	v_cvt_f32_i32_e32 v50, v1
	v_cvt_f32_i32_e32 v55, v6
	v_cvt_f32_i32_e32 v41, v12
	v_cvt_f32_i32_e32 v54, v5
	v_cvt_f32_i32_e32 v56, v7
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshl_add_u32 v12, v33, 1, 0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v57, v8
	v_cvt_f32_i32_e32 v48, v21
	v_cvt_f32_i32_e32 v39, v10
	v_cvt_f32_i32_e32 v40, v11
	v_cvt_f32_i32_e32 v42, v13
	v_cvt_f32_i32_e32 v43, v14
	v_cvt_f32_i32_e32 v44, v15
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v49, v23
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s8, s17, 5
	s_mul_i32 s9, s17, 6
	s_mul_i32 s10, s17, 7
	s_mul_i32 s11, s17, 9
	s_mul_i32 s12, s17, 10
	s_mul_i32 s13, s17, 11
	s_mul_i32 s14, s17, 12
	s_mul_i32 s15, s17, 13
	s_mul_i32 s16, s17, 14
	s_mul_i32 s18, s17, 15
	s_mul_i32 s19, s17, 17
	s_mul_i32 s20, s17, 18
	s_mul_i32 s21, s17, 19
	s_mul_i32 s22, s17, 20
	s_mul_i32 s23, s17, 21
	s_mul_i32 s24, s17, 22
	s_mul_i32 s25, s17, 23
	s_mul_i32 s26, s17, 24
	s_mul_i32 s27, s17, 25
	s_mul_i32 s28, s17, 26
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s7
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s29, s17, 27
	s_mul_i32 s30, s17, 28
	s_mul_i32 s31, s17, 29
	s_mul_i32 s33, s17, 30
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v35
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v37, 1, v34
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_and_b32_e32 v2, 14, v0
	v_and_b32_e32 v3, 1, v0
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v0, 2, v0
	v_and_b32_e32 v4, 0x840, v4
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mad_u64_u32 v[16:17], null, s2, s17, v[34:35]
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_and_b32_e32 v0, 0x3f8, v0
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_lshlrev_b32_e32 v1, 2, v33
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v5, 3, v33
	v_lshlrev_b32_e32 v7, 2, v2
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt lgkmcnt(0)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_xor_b32_e32 v0, v4, v0
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_barrier
	.loc	1 247 23 is_stmt 1              ; generate_amdgcn.py:247:23
	s_mul_i32 s5, s17, 3
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v34, v16, s17, 2
	s_mov_b32 s2, s6
	.loc	1 171 9 is_stmt 1               ; generate_amdgcn.py:171:9
	v_lshl_or_b32 v17, v2, 11, v0
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v58, v16, s5, 2
	v_add_lshl_u32 v59, v16, s8, 2
	v_add_lshl_u32 v60, v16, s9, 2
	v_add_lshl_u32 v61, v16, s10, 2
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_add_nc_u32_e32 v98, 0, v17
	v_xad_u32 v99, v17, 8, 0
	v_xad_u32 v100, v17, 16, 0
	v_xad_u32 v101, v17, 24, 0
	v_xad_u32 v102, v17, 32, 0
	v_xad_u32 v103, v17, 40, 0
	v_xad_u32 v104, v17, 48, 0
	v_xad_u32 v35, v17, 56, 0
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v36
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshlrev_b32_e32 v6, 5, v3
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v3, 6, v3
	.loc	1 247 9 is_stmt 1               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v62, v16, s11, 2
	v_add_lshl_u32 v63, v16, s12, 2
	v_add_lshl_u32 v64, v16, s13, 2
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_add3_u32 v1, 0, v1, v6
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_or3_b32 v8, v5, v3, v7
	.loc	1 247 9 is_stmt 1               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v65, v16, s14, 2
	v_add_lshl_u32 v66, v16, s15, 2
	v_add_lshl_u32 v67, v16, s16, 2
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshl_add_u32 v1, v2, 1, v1
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_xad_u32 v84, 0x840, v8, 0
	v_xad_u32 v85, 0x1008, v8, 0
	v_xad_u32 v86, 0x1848, v8, 0
	v_xad_u32 v87, 0x2010, v8, 0
	v_xad_u32 v88, 0x2850, v8, 0
	v_xad_u32 v89, 0x3018, v8, 0
	v_xad_u32 v90, 0x3858, v8, 0
	v_xad_u32 v91, 0x4020, v8, 0
	v_xad_u32 v92, 0x4860, v8, 0
	v_xad_u32 v93, 0x5868, v8, 0
	v_xad_u32 v94, 0x6030, v8, 0
	v_xad_u32 v95, 0x6870, v8, 0
	v_xad_u32 v96, 0x7038, v8, 0
	v_xad_u32 v97, 0x7878, v8, 0
	.loc	1 247 9 is_stmt 1               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v68, v16, s18, 2
	v_add_lshl_u32 v69, v16, s19, 2
	v_add_lshl_u32 v70, v16, s20, 2
	v_add_lshl_u32 v71, v16, s21, 2
	v_add_lshl_u32 v72, v16, s22, 2
	v_add_lshl_u32 v73, v16, s23, 2
	v_add_lshl_u32 v74, v16, s24, 2
	v_add_lshl_u32 v75, v16, s25, 2
	v_add_lshl_u32 v76, v16, s26, 2
	v_add_lshl_u32 v77, v16, s27, 2
	v_add_lshl_u32 v78, v16, s28, 2
	v_add_lshl_u32 v79, v16, s29, 2
	v_add_lshl_u32 v80, v16, s30, 2
	.loc	1 247 23 is_stmt 0              ; generate_amdgcn.py:247:23
	s_mul_i32 s4, s17, 31
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v81, v16, s31, 2
	v_add_lshl_u32 v82, v16, s33, 2
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v37
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_xad_u32 v37, 0x5028, v8, 0
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	ds_store_b32 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v118, v0, v17
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v122, v4, v17
	v_mul_f32_e32 v21, v0, v19
	v_mul_f32_e32 v107, v5, v19
	v_mul_f32_e32 v108, v6, v19
	v_mul_f32_e32 v23, v1, v19
	v_mul_f32_e32 v36, v2, v19
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v0, v21, v38 :: v_dual_add_nc_u32 v83, 0, v8
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v120, v2, v17
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	v_mul_f32_e32 v119, v1, v17
	v_mul_f32_e32 v121, v3, v17
	v_dual_mul_f32 v123, v5, v17 :: v_dual_mul_f32 v2, v23, v39
	v_mul_f32_e32 v105, v3, v19
	v_dual_mul_f32 v106, v4, v19 :: v_dual_mul_f32 v125, v7, v17
	.loc	1 247 9 is_stmt 1               ; generate_amdgcn.py:247:9
	v_lshlrev_b32_e32 v33, 2, v16
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v109, v7, v19 :: v_dual_mul_f32 v124, v6, v17
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v4, v36, v40
	v_mul_f32_e32 v7, v121, v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v110, v8, v19
	v_mul_f32_e32 v112, v10, v19
	v_dual_mul_f32 v115, v13, v19 :: v_dual_mul_f32 v126, v8, v17
	v_mul_f32_e32 v111, v9, v19
	v_mul_f32_e32 v127, v9, v17
	v_dual_mul_f32 v117, v15, v19 :: v_dual_mul_f32 v128, v10, v17
	v_mul_f32_e32 v113, v11, v19
	v_dual_mul_f32 v129, v11, v17 :: v_dual_mul_f32 v114, v12, v19
	v_mul_f32_e32 v116, v14, v19
	v_dual_mul_f32 v130, v12, v17 :: v_dual_mul_f32 v19, v111, v26
	v_mul_f32_e32 v131, v13, v17
	v_dual_mul_f32 v132, v14, v17 :: v_dual_mul_f32 v21, v112, v27
	v_mul_f32_e32 v133, v15, v17
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v10, v107, v43
	v_dual_mul_f32 v12, v108, v44 :: v_dual_mul_f32 v17, v110, v25
	v_dual_mul_f32 v20, v127, v51 :: v_dual_mul_f32 v1, v118, v46
	v_mul_f32_e32 v3, v119, v18
	v_mul_f32_e32 v18, v126, v50
	v_dual_mul_f32 v11, v123, v22 :: v_dual_mul_f32 v22, v128, v52
	v_dual_mul_f32 v5, v120, v47 :: v_dual_mul_f32 v6, v105, v41
	v_mul_f32_e32 v27, v115, v30
	v_dual_mul_f32 v8, v106, v42 :: v_dual_mul_f32 v23, v113, v28
	v_dual_mul_f32 v26, v130, v54 :: v_dual_mul_f32 v15, v125, v24
	v_mul_f32_e32 v24, v129, v53
	v_mul_f32_e32 v14, v109, v45
	v_dual_mul_f32 v25, v114, v29 :: v_dual_mul_f32 v28, v131, v55
	v_mul_f32_e32 v29, v116, v31
	v_mul_f32_e32 v31, v117, v32
	v_mul_f32_e32 v9, v122, v48
	v_mul_f32_e32 v13, v124, v49
	v_mul_f32_e32 v30, v132, v56
	v_mul_f32_e32 v32, v133, v57
	ds_store_2addr_stride64_b64 v98, v[0:1], v[17:18] offset1:2
	ds_store_2addr_stride64_b64 v99, v[2:3], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v100, v[4:5], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v101, v[6:7], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v102, v[8:9], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v103, v[10:11], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v104, v[12:13], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v35, v[14:15], v[31:32] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v83
	ds_load_b64 v[2:3], v84
	ds_load_b64 v[4:5], v85
	ds_load_b64 v[6:7], v86
	ds_load_b64 v[8:9], v87
	ds_load_b64 v[10:11], v88
	ds_load_b64 v[12:13], v89
	ds_load_b64 v[14:15], v90
	ds_load_b64 v[17:18], v91
	ds_load_b64 v[19:20], v92
	ds_load_b64 v[21:22], v37
	ds_load_b64 v[23:24], v93
	ds_load_b64 v[25:26], v94
	ds_load_b64 v[27:28], v95
	ds_load_b64 v[29:30], v96
	ds_load_b64 v[31:32], v97
	.loc	1 247 9 is_stmt 1               ; generate_amdgcn.py:247:9
	v_lshl_add_u32 v35, s17, 3, v33
	v_lshl_add_u32 v36, s17, 4, v33
	v_lshl_add_u32 v37, s17, 5, v33
	v_lshl_add_u32 v38, s17, 6, v33
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v33, s[0:3], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v34, s[0:3], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v4, v35, s[0:3], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v6, v58, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v8, v36, s[0:3], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v10, v59, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v12, v60, s[0:3], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v14, v61, s[0:3], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v17, v37, s[0:3], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v19, v62, s[0:3], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v21, v63, s[0:3], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v23, v64, s[0:3], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v25, v65, s[0:3], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v27, v66, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v29, v67, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v31, v68, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v38, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v69, s[0:3], 0 offen
	buffer_atomic_add_f32 v5, v70, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v71, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v72, s[0:3], 0 offen
	buffer_atomic_add_f32 v11, v73, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v74, s[0:3], 0 offen
	buffer_atomic_add_f32 v15, v75, s[0:3], 0 offen
	buffer_atomic_add_f32 v18, v76, s[0:3], 0 offen
	buffer_atomic_add_f32 v20, v77, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v78, s[0:3], 0 offen
	v_add_lshl_u32 v0, v16, s4, 2
	s_clause 0x4
	buffer_atomic_add_f32 v24, v79, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v80, s[0:3], 0 offen
	buffer_atomic_add_f32 v28, v81, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v82, s[0:3], 0 offen
	buffer_atomic_add_f32 v32, v0, s[0:3], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
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
		.amdhsa_inst_pref_size 41
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_vgpr, 134
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5228
; TotalNumSgprs: 36
; NumVgprs: 134
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 36
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
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
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
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     134
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
