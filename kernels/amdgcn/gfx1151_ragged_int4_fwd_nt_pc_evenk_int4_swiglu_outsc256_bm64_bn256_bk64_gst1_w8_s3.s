	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	v_mov_b32_e32 v165, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_lshlrev_b32_e32 v48, 1, v165
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 24
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s4, s4, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s30, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s16, s14, 1
	s_sub_i32 s15, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s17, s15, s13
	s_cmp_ge_u32 s15, s13
	s_cselect_b32 s14, s16, s14
	s_cselect_b32 s15, s17, s15
	s_add_i32 s16, s14, 1
	s_cmp_ge_u32 s15, s13
	s_cselect_b32 s13, s16, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s31, s13, s30
	s_sub_i32 s17, s31, s30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s17, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[12:13], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s12
	s_addc_u32 s3, s5, s13
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s4, s6, s12
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[28:29], s[2:3], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_addc_u32 s5, s7, s13
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s8, s12
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[38:39], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_addc_u32 s3, s9, s13
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s10, s12
	s_addc_u32 s5, s11, s13
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s7, s18, 1
	s_mov_b32 s6, 0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s19, 0
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s33, s28, s7
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v8, s33 :: v_dual_lshlrev_b32 v1, 1, v165
	v_dual_mov_b32 v3, s38 :: v_dual_and_b32 v2, 0x80, v165
	s_branch .LBB0_3
.LBB0_2:
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr8
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b128 s[24:27], s[0:1], 0x10
	s_load_b64 s[34:35], s[2:3], 0x0
	s_load_b64 s[36:37], s[4:5], 0x0
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v166, 15, v165
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v142, 0
	v_mov_b32_e32 v131, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v17, 5, v165
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_lshl_b32 s28, s28, 1
	s_lshl_b32 s29, s31, 8
	s_or_b32 s28, s28, 1
	scratch_store_b32 off, v165, off offset:176 ; 4-byte Folded Spill
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s2, s38, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s39, 0, s2
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_mul_i32 s28, s18, s28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, vcc_lo, v1, 8
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 24
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	v_add_co_u32 v9, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, 0, v2, vcc_lo
	v_add_co_u32 v11, vcc_lo, v1, 40
	v_add_co_ci_u32_e64 v12, null, 0, v2, vcc_lo
	v_add_co_u32 v13, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, 0, v2, vcc_lo
	v_add_co_u32 v15, vcc_lo, v1, 56
	v_add_co_ci_u32_e64 v16, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[36:37], v[1:2]
	v_bfe_i32 v1, v165, 7, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[34:35], v[3:4]
	v_cmp_le_i64_e64 s3, s[34:35], v[5:6]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[36:37], v[3:4]
	v_cmp_gt_i64_e64 s13, s[36:37], v[5:6]
	v_and_b32_e32 v2, 0x7f, v165
	v_and_b32_e32 v3, 0x88, v1
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_add3_u32 v5, s28, s29, v17
	s_lshl_b32 s28, s30, 8
	v_add_nc_u32_e32 v4, s38, v17
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[34:35], v[9:10]
	v_xor_b32_e32 v0, v3, v2
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_subrev_nc_u32_e32 v3, s28, v5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[36:37], v[9:10]
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_and_b32_e32 v1, 31, v165
	v_add_nc_u32_e32 v2, 8, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[34:35], v[13:14]
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v9, 0xf8, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[36:37], v[13:14]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[34:35], v[11:12]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[36:37], v[11:12]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_add_nc_u32_e32 v12, 0xf0, v3
	v_mad_u64_u32 v[13:14], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0xe8, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[34:35], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[36:37], v[7:8]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[34:35], v[15:16]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[36:37], v[15:16]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v48, off offset:184
	scratch_store_b64 off, v[13:14], off
	v_mad_u64_u32 v[12:13], null, s19, v12, v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s11
	s_and_b32 s4, s4, s9
	s_and_b32 s5, s5, s10
	s_and_b32 s6, s6, s16
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[12:13], off offset:8
	scratch_store_b32 off, v166, off offset:180
	v_mad_u64_u32 v[13:14], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v12, 0xe0, v3
	v_add_nc_u32_e32 v9, 0xd8, v3
	scratch_store_b64 off, v[13:14], off offset:16 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s19, v12, v[1:2]
	scratch_store_b64 off, v[12:13], off offset:24 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v12, 0xd0, v3
	v_add_nc_u32_e32 v9, 0xc8, v3
	scratch_store_b64 off, v[13:14], off offset:32 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s19, v12, v[1:2]
	scratch_store_b64 off, v[12:13], off offset:40 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v12, 0xc0, v3
	v_add_nc_u32_e32 v9, 0xb8, v3
	scratch_store_b64 off, v[13:14], off offset:48 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s19, v12, v[1:2]
	scratch_store_b64 off, v[12:13], off offset:56 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v12, 0xb0, v3
	v_add_nc_u32_e32 v9, 0xa8, v3
	scratch_store_b64 off, v[13:14], off offset:64 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s19, v12, v[1:2]
	scratch_store_b64 off, v[12:13], off offset:72 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v12, 0xa0, v3
	v_add_nc_u32_e32 v9, 0x98, v3
	scratch_store_b64 off, v[13:14], off offset:80 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s19, v12, v[1:2]
	scratch_store_b64 off, v[12:13], off offset:88 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v12, 0x90, v3
	v_add_nc_u32_e32 v9, 0x88, v3
	scratch_store_b64 off, v[13:14], off offset:96 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s19, v12, v[1:2]
	scratch_store_b64 off, v[12:13], off offset:104 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v12, 0x80, v3
	v_add_nc_u32_e32 v9, 0x78, v3
	scratch_store_b64 off, v[13:14], off offset:112 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s19, v12, v[1:2]
	scratch_store_b64 off, v[12:13], off offset:120 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v12, 0x70, v3
	v_add_nc_u32_e32 v9, 0x68, v3
	scratch_store_b64 off, v[13:14], off offset:128 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s19, v12, v[1:2]
	scratch_store_b64 off, v[12:13], off offset:136 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v12, 0x60, v3
	v_add_nc_u32_e32 v9, 0x58, v3
	scratch_store_b64 off, v[13:14], off offset:144 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s19, v12, v[1:2]
	scratch_store_b64 off, v[12:13], off offset:152 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v12, 0x50, v3
	v_add_nc_u32_e32 v9, 0x48, v3
	scratch_store_b64 off, v[13:14], off offset:160 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s19, v12, v[1:2]
	v_mad_u64_u32 v[183:184], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 56, v3
	scratch_store_b64 off, v[12:13], off offset:168 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v12, 64, v3
	v_add_nc_u32_e32 v13, 16, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[184:185], null, s19, v12, v[1:2]
	v_add_nc_u32_e32 v12, 48, v3
	v_mad_u64_u32 v[185:186], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 40, v3
	v_mad_u64_u32 v[186:187], null, s19, v12, v[1:2]
	v_add_nc_u32_e32 v12, 32, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[187:188], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 24, v3
	v_mad_u64_u32 v[188:189], null, s19, v12, v[1:2]
	v_add3_u32 v12, s33, s29, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[189:190], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 8, v3
	v_mad_u64_u32 v[190:191], null, s19, v13, v[1:2]
	v_subrev_nc_u32_e32 v12, s28, v12
	s_load_b128 s[28:31], s[0:1], 0x0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[191:192], null, s19, v9, v[1:2]
	v_mad_u64_u32 v[192:193], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v9, 0xf8, v12
	v_add_nc_u32_e32 v3, 0xf0, v12
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s2, s12
	s_and_b32 s1, s3, s13
	s_and_b32 s2, s7, s14
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_mad_u64_u32 v[193:194], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0xe8, v12
	v_mad_u64_u32 v[194:195], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v3, 0xe0, v12
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s8, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_mad_u64_u32 v[195:196], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0xd8, v12
	v_mad_u64_u32 v[196:197], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v3, 0xd0, v12
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s29, 0xffff
	v_mad_u64_u32 v[197:198], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0xc8, v12
	v_mad_u64_u32 v[198:199], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v3, 0xc0, v12
	s_mov_b32 s8, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[199:200], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0xb8, v12
	v_mad_u64_u32 v[200:201], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v3, 0xb0, v12
	s_and_b32 s13, s31, 0xffff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[201:202], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0xa8, v12
	v_mad_u64_u32 v[202:203], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v3, 0xa0, v12
	s_mov_b32 s12, s30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[203:204], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0x98, v12
	v_mad_u64_u32 v[204:205], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v3, 0x90, v12
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[205:206], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0x88, v12
	v_mad_u64_u32 v[206:207], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v3, 0x80, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[207:208], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0x78, v12
	v_mad_u64_u32 v[208:209], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v3, 0x70, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[209:210], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0x68, v12
	v_mad_u64_u32 v[210:211], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v3, 0x60, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[211:212], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0x58, v12
	v_mad_u64_u32 v[212:213], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v3, 0x50, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[213:214], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 0x48, v12
	v_mad_u64_u32 v[214:215], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v3, 64, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[215:216], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 56, v12
	v_mad_u64_u32 v[216:217], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v3, 48, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[217:218], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 40, v12
	v_mad_u64_u32 v[218:219], null, s19, v3, v[1:2]
	v_add_nc_u32_e32 v3, 32, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[219:220], null, s19, v9, v[1:2]
	v_add_nc_u32_e32 v9, 24, v12
	v_mad_u64_u32 v[220:221], null, s19, v3, v[1:2]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[221:222], null, s19, v9, v[1:2]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v9, 0
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v3, 16, v12
	v_add_nc_u32_e32 v13, 8, v12
	v_dual_mov_b32 v18, v9 :: v_dual_add_nc_u32 v11, 56, v4
	v_mov_b32_e32 v50, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[222:223], null, s19, v3, v[1:2]
	v_mov_b32_e32 v52, v9
	v_mad_u64_u32 v[223:224], null, s19, v13, v[1:2]
	v_mov_b32_e32 v13, v9
	v_mad_u64_u32 v[224:225], null, s19, v12, v[1:2]
	v_mov_b32_e32 v12, v9
	v_mad_u64_u32 v[225:226], null, v11, s19, v[1:2]
	v_dual_mov_b32 v11, v9 :: v_dual_add_nc_u32 v10, 48, v4
	v_dual_mov_b32 v19, v9 :: v_dual_add_nc_u32 v8, 40, v4
	v_mov_b32_e32 v17, v9
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v7, 32, v4
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v6, 24, v4
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v5, 16, v4
	v_mad_u64_u32 v[226:227], null, v10, s19, v[1:2]
	v_mad_u64_u32 v[227:228], null, v8, s19, v[1:2]
	v_mad_u64_u32 v[228:229], null, v7, s19, v[1:2]
	v_mad_u64_u32 v[229:230], null, v6, s19, v[1:2]
	v_mad_u64_u32 v[230:231], null, v5, s19, v[1:2]
	v_mad_u64_u32 v[231:232], null, v2, s19, v[1:2]
	v_mad_u64_u32 v[232:233], null, v4, s19, v[1:2]
	v_dual_mov_b32 v54, v9 :: v_dual_and_b32 v1, 24, v48
	v_xor_b32_e32 v2, 0x110, v0
	v_mov_b32_e32 v56, v9
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v233, v166, 5, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 0xe0, v165
	v_dual_mov_b32 v49, v9 :: v_dual_add_nc_u32 v238, 0, v2
	v_mov_b32_e32 v20, v9
	v_xor_b32_e32 v3, 8, v233
	v_xor_b32_e32 v4, 16, v233
	v_lshl_or_b32 v237, v1, 4, v233
	v_xor_b32_e32 v1, 24, v233
	v_mov_b32_e32 v21, v9
	v_dual_mov_b32 v58, v9 :: v_dual_add_nc_u32 v239, 0, v3
	v_dual_mov_b32 v51, v9 :: v_dual_add_nc_u32 v240, 0, v4
	v_xor_b32_e32 v2, 8, v237
	v_xor_b32_e32 v3, 16, v237
	v_xor_b32_e32 v4, 24, v237
	v_dual_mov_b32 v60, v9 :: v_dual_add_nc_u32 v241, 0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v53, v9 :: v_dual_add_nc_u32 v242, 0, v2
	v_dual_mov_b32 v62, v9 :: v_dual_add_nc_u32 v243, 0, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v55, v9 :: v_dual_add_nc_u32 v244, 0, v4
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v25, v9
	v_mov_b32_e32 v26, v9
	v_mov_b32_e32 v27, v9
	v_mov_b32_e32 v28, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v32, v9
	v_mov_b32_e32 v33, v9
	v_mov_b32_e32 v34, v9
	v_mov_b32_e32 v35, v9
	v_mov_b32_e32 v36, v9
	v_mov_b32_e32 v37, v9
	v_mov_b32_e32 v38, v9
	v_mov_b32_e32 v39, v9
	v_mov_b32_e32 v40, v9
	v_mov_b32_e32 v41, v9
	v_mov_b32_e32 v42, v9
	v_mov_b32_e32 v43, v9
	v_mov_b32_e32 v44, v9
	v_mov_b32_e32 v45, v9
	v_mov_b32_e32 v46, v9
	v_mov_b32_e32 v47, v9
	v_mov_b32_e32 v48, v9
	v_mov_b32_e32 v57, v9
	v_mov_b32_e32 v59, v9
	v_mov_b32_e32 v61, v9
	v_mov_b32_e32 v63, v9
	v_mov_b32_e32 v64, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	v_mov_b32_e32 v65, v9
	v_mov_b32_e32 v66, v9
	v_mov_b32_e32 v67, v9
	v_mov_b32_e32 v68, v9
	v_mov_b32_e32 v69, v9
	v_mov_b32_e32 v70, v9
	v_mov_b32_e32 v71, v9
	v_mov_b32_e32 v72, v9
	v_mov_b32_e32 v73, v9
	v_mov_b32_e32 v74, v9
	v_mov_b32_e32 v75, v9
	v_mov_b32_e32 v76, v9
	v_mov_b32_e32 v77, v9
	v_mov_b32_e32 v78, v9
	v_mov_b32_e32 v79, v9
	v_mov_b32_e32 v80, v9
	v_mov_b32_e32 v81, v9
	v_mov_b32_e32 v82, v9
	v_mov_b32_e32 v83, v9
	v_mov_b32_e32 v84, v9
	v_mov_b32_e32 v85, v9
	v_mov_b32_e32 v86, v9
	v_mov_b32_e32 v87, v9
	v_mov_b32_e32 v88, v9
	v_mov_b32_e32 v89, v9
	v_mov_b32_e32 v90, v9
	v_mov_b32_e32 v91, v9
	v_mov_b32_e32 v92, v9
	v_mov_b32_e32 v93, v9
	v_mov_b32_e32 v94, v9
	v_mov_b32_e32 v95, v9
	v_mov_b32_e32 v96, v9
	v_mov_b32_e32 v97, v9
	v_mov_b32_e32 v98, v9
	v_mov_b32_e32 v99, v9
	v_mov_b32_e32 v100, v9
	v_mov_b32_e32 v101, v9
	v_mov_b32_e32 v102, v9
	v_mov_b32_e32 v103, v9
	v_mov_b32_e32 v104, v9
	v_mov_b32_e32 v105, v9
	v_mov_b32_e32 v106, v9
	v_mov_b32_e32 v107, v9
	v_mov_b32_e32 v108, v9
	v_mov_b32_e32 v109, v9
	v_mov_b32_e32 v110, v9
	v_mov_b32_e32 v111, v9
	v_mov_b32_e32 v112, v9
	v_mov_b32_e32 v113, v9
	v_mov_b32_e32 v114, v9
	v_mov_b32_e32 v115, v9
	v_mov_b32_e32 v116, v9
	v_mov_b32_e32 v117, v9
	v_mov_b32_e32 v118, v9
	v_mov_b32_e32 v119, v9
	v_mov_b32_e32 v120, v9
	v_mov_b32_e32 v121, v9
	v_mov_b32_e32 v122, v9
	v_mov_b32_e32 v123, v9
	v_mov_b32_e32 v124, v9
	v_mov_b32_e32 v125, v9
	v_mov_b32_e32 v126, v9
	v_mov_b32_e32 v127, v9
	v_mov_b32_e32 v128, v9
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v129, s7, v232
	v_add_nc_u32_e32 v131, s7, v231
	v_add_nc_u32_e32 v132, s7, v230
	v_add_nc_u32_e32 v133, s7, v229
	v_add_nc_u32_e32 v134, s7, v228
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v129, 0x80000000, v129, vcc_lo
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v135, s7, v227
	v_add_nc_u32_e32 v136, s7, v226
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v137, s7, v225
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	v_add_nc_u32_e32 v155, s7, v224
	.loc	1 1069 30                       ; ragged.py:1069:30
	buffer_load_u8 v130, v129, s[8:11], 0 offen
	v_cndmask_b32_e64 v129, 0x80000000, v131, s0
	v_cndmask_b32_e64 v131, 0x80000000, v132, s1
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v156, s7, v223
	v_add_nc_u32_e32 v157, s7, v222
	v_add_nc_u32_e32 v158, s7, v221
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x1
	buffer_load_u8 v129, v129, s[8:11], 0 offen
	buffer_load_u8 v132, v131, s[8:11], 0 offen
	v_cndmask_b32_e64 v131, 0x80000000, v133, s2
	v_cndmask_b32_e64 v133, 0x80000000, v134, s3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	v_add_nc_u32_e32 v159, s7, v220
	.loc	1 1069 30 is_stmt 1             ; ragged.py:1069:30
	s_clause 0x1
	buffer_load_u8 v131, v131, s[8:11], 0 offen
	buffer_load_u8 v134, v133, s[8:11], 0 offen
	v_cndmask_b32_e64 v133, 0x80000000, v135, s4
	v_cndmask_b32_e64 v135, 0x80000000, v136, s5
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v161, s7, v218
	v_add_nc_u32_e32 v162, s7, v217
	v_add_nc_u32_e32 v163, s7, v216
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x1
	buffer_load_u8 v133, v133, s[8:11], 0 offen
	buffer_load_u8 v136, v135, s[8:11], 0 offen
	v_cndmask_b32_e64 v135, 0x80000000, v137, s6
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v164, s7, v215
	v_add_nc_u32_e32 v165, s7, v214
	v_add_nc_u32_e32 v166, s7, v213
	v_add_nc_u32_e32 v167, s7, v212
	v_add_nc_u32_e32 v168, s7, v211
	v_add_nc_u32_e32 v160, s7, v219
	v_add_nc_u32_e32 v154, s7, v210
	v_add_nc_u32_e32 v153, s7, v209
	v_add_nc_u32_e32 v152, s7, v208
	v_add_nc_u32_e32 v151, s7, v207
	v_add_nc_u32_e32 v150, s7, v206
	v_add_nc_u32_e32 v149, s7, v205
	v_add_nc_u32_e32 v148, s7, v204
	v_add_nc_u32_e32 v147, s7, v203
	v_add_nc_u32_e32 v146, s7, v202
	v_add_nc_u32_e32 v145, s7, v201
	v_add_nc_u32_e32 v144, s7, v200
	v_add_nc_u32_e32 v143, s7, v199
	v_add_nc_u32_e32 v142, s7, v198
	v_add_nc_u32_e32 v141, s7, v197
	v_add_nc_u32_e32 v140, s7, v196
	v_add_nc_u32_e32 v139, s7, v195
	v_add_nc_u32_e32 v138, s7, v194
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	v_add_nc_u32_e32 v137, s7, v193
	s_clause 0x1f
	buffer_load_u8 v235, v155, s[12:15], 0 offen
	buffer_load_u8 v246, v156, s[12:15], 0 offen
	buffer_load_u8 v247, v157, s[12:15], 0 offen
	buffer_load_u8 v248, v158, s[12:15], 0 offen
	buffer_load_u8 v249, v159, s[12:15], 0 offen
	buffer_load_u8 v250, v160, s[12:15], 0 offen
	buffer_load_u8 v161, v161, s[12:15], 0 offen
	buffer_load_u8 v162, v162, s[12:15], 0 offen
	buffer_load_u8 v163, v163, s[12:15], 0 offen
	buffer_load_u8 v164, v164, s[12:15], 0 offen
	buffer_load_u8 v165, v165, s[12:15], 0 offen
	buffer_load_u8 v166, v166, s[12:15], 0 offen
	buffer_load_u8 v167, v167, s[12:15], 0 offen
	buffer_load_u8 v168, v168, s[12:15], 0 offen
	buffer_load_u8 v251, v154, s[12:15], 0 offen
	buffer_load_u8 v252, v153, s[12:15], 0 offen
	buffer_load_u8 v253, v152, s[12:15], 0 offen
	buffer_load_u8 v254, v151, s[12:15], 0 offen
	buffer_load_u8 v255, v150, s[12:15], 0 offen
	buffer_load_u8 v234, v149, s[12:15], 0 offen
	buffer_load_u8 v169, v148, s[12:15], 0 offen
	buffer_load_u8 v170, v147, s[12:15], 0 offen
	buffer_load_u8 v171, v146, s[12:15], 0 offen
	buffer_load_u8 v172, v145, s[12:15], 0 offen
	buffer_load_u8 v173, v144, s[12:15], 0 offen
	buffer_load_u8 v174, v143, s[12:15], 0 offen
	buffer_load_u8 v175, v142, s[12:15], 0 offen
	buffer_load_u8 v176, v141, s[12:15], 0 offen
	buffer_load_u8 v177, v140, s[12:15], 0 offen
	buffer_load_u8 v178, v139, s[12:15], 0 offen
	buffer_load_u8 v179, v138, s[12:15], 0 offen
	buffer_load_u8 v180, v137, s[12:15], 0 offen
	.loc	1 1069 30 is_stmt 1             ; ragged.py:1069:30
	buffer_load_u8 v135, v135, s[8:11], 0 offen
	v_add_nc_u32_e32 v245, 0, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(39)
	ds_store_b8 v245, v130
	s_waitcnt vmcnt(37)
	ds_store_b8 v245, v132 offset:512
	s_waitcnt vmcnt(35)
	ds_store_b8 v245, v134 offset:1024
	s_waitcnt vmcnt(33)
	ds_store_b8 v245, v136 offset:1536
	ds_store_b8 v238, v129
	ds_store_b8 v238, v131 offset:512
	ds_store_b8 v238, v133 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v238, v135 offset:1536
	v_add_nc_u32_e32 v129, 0, v233
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[145:148], v129 offset1:1
	ds_load_2addr_stride64_b64 v[141:144], v129 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[149:152], v239 offset1:1
	ds_load_2addr_stride64_b64 v[137:140], v239 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[153:156], v240 offset1:1
	ds_load_2addr_stride64_b64 v[133:136], v240 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[157:160], v241 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v241 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v245, v235
	ds_store_b8 v245, v247 offset:512
	ds_store_b8 v245, v249 offset:1024
	ds_store_b8 v245, v161 offset:1536
	ds_store_b8 v245, v163 offset:2048
	ds_store_b8 v245, v165 offset:2560
	ds_store_b8 v245, v167 offset:3072
	ds_store_b8 v245, v251 offset:3584
	ds_store_b8 v245, v253 offset:4096
	ds_store_b8 v245, v255 offset:4608
	ds_store_b8 v245, v169 offset:5120
	ds_store_b8 v245, v171 offset:5632
	ds_store_b8 v245, v173 offset:6144
	ds_store_b8 v245, v175 offset:6656
	ds_store_b8 v245, v177 offset:7168
	ds_store_b8 v245, v179 offset:7680
	ds_store_b8 v238, v246
	ds_store_b8 v238, v248 offset:512
	ds_store_b8 v238, v250 offset:1024
	ds_store_b8 v238, v162 offset:1536
	ds_store_b8 v238, v164 offset:2048
	ds_store_b8 v238, v166 offset:2560
	ds_store_b8 v238, v168 offset:3072
	ds_store_b8 v238, v252 offset:3584
	ds_store_b8 v238, v254 offset:4096
	ds_store_b8 v238, v234 offset:4608
	ds_store_b8 v238, v170 offset:5120
	ds_store_b8 v238, v172 offset:5632
	ds_store_b8 v238, v174 offset:6144
	ds_store_b8 v238, v176 offset:6656
	ds_store_b8 v238, v178 offset:7168
	ds_store_b8 v238, v180 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_clause 0xa                            ; 88-byte Folded Reload
	scratch_load_b64 v[171:172], off, off offset:168
	scratch_load_b64 v[172:173], off, off offset:160
	scratch_load_b64 v[173:174], off, off offset:152
	scratch_load_b64 v[174:175], off, off offset:144
	scratch_load_b64 v[175:176], off, off offset:136
	scratch_load_b64 v[176:177], off, off offset:128
	scratch_load_b64 v[177:178], off, off offset:120
	scratch_load_b64 v[178:179], off, off offset:112
	scratch_load_b64 v[179:180], off, off offset:104
	scratch_load_b64 v[180:181], off, off offset:96
	scratch_load_b64 v[181:182], off, off offset:88
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_add_nc_u32_e32 v246, 0, v237
	ds_load_2addr_stride64_b64 v[247:250], v246 offset1:8
	ds_load_2addr_stride64_b64 v[251:254], v242 offset1:8
	ds_load_2addr_stride64_b64 v[161:164], v243 offset1:8
	ds_load_2addr_stride64_b64 v[165:168], v244 offset1:8
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v169, s7, v184
	v_add_nc_u32_e32 v170, s7, v183
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[247:248], v[145:146], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[247:248], v[147:148], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[247:248], v[141:142], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[247:248], v[143:144], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[249:250], v[145:146], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[249:250], v[147:148], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[249:250], v[141:142], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[249:250], v[143:144], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[251:252], v[149:150], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[251:252], v[151:152], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[251:252], v[137:138], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[251:252], v[139:140], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[253:254], v[149:150], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[253:254], v[151:152], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[253:254], v[137:138], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[253:254], v[139:140], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[161:162], v[153:154], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[163:164], v[153:154], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[161:162], v[155:156], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[163:164], v[155:156], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[161:162], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[163:164], v[133:134], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[161:162], v[135:136], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[163:164], v[135:136], v[121:128] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v161, s7, v192
	v_add_nc_u32_e32 v162, s7, v191
	v_add_nc_u32_e32 v163, s7, v190
	v_add_nc_u32_e32 v164, s7, v189
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[165:166], v[157:158], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[167:168], v[157:158], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[165:166], v[159:160], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[167:168], v[159:160], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[165:166], v[129:130], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[167:168], v[129:130], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[165:166], v[131:132], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[167:168], v[131:132], v[121:128] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v165, s7, v188
	v_add_nc_u32_e32 v166, s7, v187
	v_add_nc_u32_e32 v167, s7, v186
	v_add_nc_u32_e32 v168, s7, v185
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v171, s7, v171
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v172, s7, v172
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v173, s7, v173
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v174, s7, v174
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v175, s7, v175
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v176, s7, v176
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v177, s7, v177
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v178, s7, v178
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v179, s7, v179
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v180, s7, v180
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v234, s7, v181
	scratch_load_b64 v[181:182], off, off offset:80 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v235, s7, v181
	scratch_load_b64 v[181:182], off, off offset:72 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v247, s7, v181
	scratch_load_b64 v[181:182], off, off offset:64 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v248, s7, v181
	scratch_load_b64 v[181:182], off, off offset:56 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v249, s7, v181
	scratch_load_b64 v[181:182], off, off offset:48 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v250, s7, v181
	scratch_load_b64 v[181:182], off, off offset:40 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v251, s7, v181
	scratch_load_b64 v[181:182], off, off offset:32 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v252, s7, v181
	scratch_load_b64 v[181:182], off, off offset:24 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v253, s7, v181
	scratch_load_b64 v[181:182], off, off offset:16 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v254, s7, v181
	scratch_load_b64 v[181:182], off, off offset:8 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v255, s7, v181
	.loc	1 1095 35                       ; ragged.py:1095:35
	scratch_load_b64 v[181:182], off, off   ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v236, s7, v181
	s_clause 0x1f
	buffer_load_u8 v161, v161, s[12:15], 0 offen
	buffer_load_u8 v162, v162, s[12:15], 0 offen
	buffer_load_u8 v163, v163, s[12:15], 0 offen
	buffer_load_u8 v164, v164, s[12:15], 0 offen
	buffer_load_u8 v165, v165, s[12:15], 0 offen
	buffer_load_u8 v166, v166, s[12:15], 0 offen
	buffer_load_u8 v167, v167, s[12:15], 0 offen
	buffer_load_u8 v168, v168, s[12:15], 0 offen
	buffer_load_u8 v169, v169, s[12:15], 0 offen
	buffer_load_u8 v170, v170, s[12:15], 0 offen
	buffer_load_u8 v171, v171, s[12:15], 0 offen
	buffer_load_u8 v172, v172, s[12:15], 0 offen
	buffer_load_u8 v173, v173, s[12:15], 0 offen
	buffer_load_u8 v174, v174, s[12:15], 0 offen
	buffer_load_u8 v175, v175, s[12:15], 0 offen
	buffer_load_u8 v176, v176, s[12:15], 0 offen
	buffer_load_u8 v177, v177, s[12:15], 0 offen
	buffer_load_u8 v178, v178, s[12:15], 0 offen
	buffer_load_u8 v179, v179, s[12:15], 0 offen
	buffer_load_u8 v180, v180, s[12:15], 0 offen
	buffer_load_u8 v234, v234, s[12:15], 0 offen
	buffer_load_u8 v235, v235, s[12:15], 0 offen
	buffer_load_u8 v247, v247, s[12:15], 0 offen
	buffer_load_u8 v248, v248, s[12:15], 0 offen
	buffer_load_u8 v249, v249, s[12:15], 0 offen
	buffer_load_u8 v250, v250, s[12:15], 0 offen
	buffer_load_u8 v251, v251, s[12:15], 0 offen
	buffer_load_u8 v252, v252, s[12:15], 0 offen
	buffer_load_u8 v253, v253, s[12:15], 0 offen
	buffer_load_u8 v254, v254, s[12:15], 0 offen
	buffer_load_u8 v255, v255, s[12:15], 0 offen
	buffer_load_u8 v236, v236, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s7, s7, 32
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt vmcnt(31)
	ds_store_b8 v245, v161
	s_waitcnt vmcnt(29)
	ds_store_b8 v245, v163 offset:512
	s_waitcnt vmcnt(27)
	ds_store_b8 v245, v165 offset:1024
	s_waitcnt vmcnt(25)
	ds_store_b8 v245, v167 offset:1536
	s_waitcnt vmcnt(23)
	ds_store_b8 v245, v169 offset:2048
	s_waitcnt vmcnt(21)
	ds_store_b8 v245, v171 offset:2560
	s_waitcnt vmcnt(19)
	ds_store_b8 v245, v173 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b8 v245, v175 offset:3584
	s_waitcnt vmcnt(15)
	ds_store_b8 v245, v177 offset:4096
	s_waitcnt vmcnt(13)
	ds_store_b8 v245, v179 offset:4608
	s_waitcnt vmcnt(11)
	ds_store_b8 v245, v234 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b8 v245, v247 offset:5632
	s_waitcnt vmcnt(7)
	ds_store_b8 v245, v249 offset:6144
	s_waitcnt vmcnt(5)
	ds_store_b8 v245, v251 offset:6656
	s_waitcnt vmcnt(3)
	ds_store_b8 v245, v253 offset:7168
	s_waitcnt vmcnt(1)
	ds_store_b8 v245, v255 offset:7680
	ds_store_b8 v238, v162
	ds_store_b8 v238, v164 offset:512
	ds_store_b8 v238, v166 offset:1024
	ds_store_b8 v238, v168 offset:1536
	ds_store_b8 v238, v170 offset:2048
	ds_store_b8 v238, v172 offset:2560
	ds_store_b8 v238, v174 offset:3072
	ds_store_b8 v238, v176 offset:3584
	ds_store_b8 v238, v178 offset:4096
	ds_store_b8 v238, v180 offset:4608
	ds_store_b8 v238, v235 offset:5120
	ds_store_b8 v238, v248 offset:5632
	ds_store_b8 v238, v250 offset:6144
	ds_store_b8 v238, v252 offset:6656
	ds_store_b8 v238, v254 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b8 v238, v236 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[161:164], v246 offset1:8
	ds_load_2addr_stride64_b64 v[165:168], v242 offset1:8
	ds_load_2addr_stride64_b64 v[245:248], v243 offset1:8
	ds_load_2addr_stride64_b64 v[249:252], v244 offset1:8
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s7, s19
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[161:162], v[145:146], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[163:164], v[145:146], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[161:162], v[147:148], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[163:164], v[147:148], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[161:162], v[141:142], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[163:164], v[141:142], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[161:162], v[143:144], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[163:164], v[143:144], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[165:166], v[149:150], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[167:168], v[149:150], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[165:166], v[151:152], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[167:168], v[151:152], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[165:166], v[137:138], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[167:168], v[137:138], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[165:166], v[139:140], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[167:168], v[139:140], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[245:246], v[153:154], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[247:248], v[153:154], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[245:246], v[155:156], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[247:248], v[155:156], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[245:246], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[247:248], v[133:134], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[245:246], v[135:136], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[247:248], v[135:136], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[249:250], v[157:158], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[251:252], v[157:158], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[249:250], v[159:160], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[251:252], v[159:160], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[249:250], v[129:130], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[251:252], v[129:130], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[249:250], v[131:132], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[251:252], v[131:132], v[1:8] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v165, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 1111 19 is_stmt 1             ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v164, v67
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v67, v19
	v_cvt_f32_i32_e32 v19, v24
	v_cvt_f32_i32_e32 v24, v39
	v_cvt_f32_i32_e32 v39, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:184
	scratch_load_b32 v166, off, off offset:180
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v161, v65
	v_cvt_f32_i32_e32 v162, v66
	v_cvt_f32_i32_e32 v163, v68
	v_cvt_f32_i32_e32 v139, v69
	v_cvt_f32_i32_e32 v140, v70
	v_cvt_f32_i32_e32 v141, v71
	v_cvt_f32_i32_e32 v143, v72
	v_cvt_f32_i32_e32 v142, v73
	v_cvt_f32_i32_e32 v136, v74
	v_cvt_f32_i32_e32 v137, v75
	v_cvt_f32_i32_e32 v138, v76
	v_cvt_f32_i32_e32 v129, v77
	v_cvt_f32_i32_e32 v132, v78
	v_cvt_f32_i32_e32 v131, v79
	v_cvt_f32_i32_e32 v130, v80
	v_cvt_f32_i32_e32 v158, v81
	v_cvt_f32_i32_e32 v157, v82
	v_cvt_f32_i32_e32 v160, v83
	v_cvt_f32_i32_e32 v159, v84
	v_cvt_f32_i32_e32 v146, v85
	v_cvt_f32_i32_e32 v145, v86
	v_cvt_f32_i32_e32 v147, v87
	v_cvt_f32_i32_e32 v148, v88
	v_cvt_f32_i32_e32 v144, v89
	v_cvt_f32_i32_e32 v134, v90
	v_cvt_f32_i32_e32 v133, v91
	v_cvt_f32_i32_e32 v135, v92
	v_cvt_f32_i32_e32 v78, v93
	v_cvt_f32_i32_e32 v93, v94
	v_cvt_f32_i32_e32 v92, v95
	v_cvt_f32_i32_e32 v91, v96
	v_cvt_f32_i32_e32 v154, v97
	v_cvt_f32_i32_e32 v153, v98
	v_cvt_f32_i32_e32 v156, v99
	v_cvt_f32_i32_e32 v155, v100
	v_cvt_f32_i32_e32 v150, v101
	v_cvt_f32_i32_e32 v149, v102
	v_cvt_f32_i32_e32 v151, v103
	v_cvt_f32_i32_e32 v152, v104
	v_cvt_f32_i32_e32 v104, v105
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v103, v108
	v_cvt_f32_i32_e32 v77, v109
	v_cvt_f32_i32_e32 v97, v110
	v_cvt_f32_i32_e32 v96, v111
	v_cvt_f32_i32_e32 v95, v112
	v_cvt_f32_i32_e32 v110, v113
	v_cvt_f32_i32_e32 v111, v114
	v_cvt_f32_i32_e32 v113, v115
	v_cvt_f32_i32_e32 v112, v116
	v_cvt_f32_i32_e32 v106, v117
	v_cvt_f32_i32_e32 v107, v118
	v_cvt_f32_i32_e32 v108, v119
	v_cvt_f32_i32_e32 v109, v120
	v_cvt_f32_i32_e32 v105, v121
	v_cvt_f32_i32_e32 v89, v122
	v_cvt_f32_i32_e32 v90, v123
	v_cvt_f32_i32_e32 v94, v124
	v_cvt_f32_i32_e32 v76, v125
	v_cvt_f32_i32_e32 v100, v126
	v_cvt_f32_i32_e32 v99, v127
	v_cvt_f32_i32_e32 v98, v128
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v85, v9
	v_cvt_f32_i32_e32 v86, v10
	v_cvt_f32_i32_e32 v88, v11
	v_cvt_f32_i32_e32 v87, v12
	v_cvt_f32_i32_e32 v69, v13
	v_cvt_f32_i32_e32 v70, v14
	v_cvt_f32_i32_e32 v71, v15
	v_cvt_f32_i32_e32 v72, v16
	v_cvt_f32_i32_e32 v73, v17
	v_cvt_f32_i32_e32 v66, v18
	v_cvt_f32_i32_e32 v68, v20
	v_cvt_f32_i32_e32 v11, v21
	v_cvt_f32_i32_e32 v65, v22
	v_cvt_f32_i32_e32 v21, v23
	v_cvt_f32_i32_e32 v83, v25
	v_cvt_f32_i32_e32 v84, v26
	v_cvt_f32_i32_e32 v81, v27
	v_cvt_f32_i32_e32 v82, v28
	v_cvt_f32_i32_e32 v75, v29
	v_cvt_f32_i32_e32 v74, v30
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v29, v32
	v_cvt_f32_i32_e32 v31, v33
	v_cvt_f32_i32_e32 v22, v34
	v_cvt_f32_i32_e32 v20, v35
	v_cvt_f32_i32_e32 v18, v36
	v_cvt_f32_i32_e32 v10, v37
	v_cvt_f32_i32_e32 v25, v38
	v_cvt_f32_i32_e32 v23, v40
	v_cvt_f32_i32_e32 v80, v41
	v_cvt_f32_i32_e32 v79, v42
	v_cvt_f32_i32_e32 v42, v43
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v36, v45
	v_cvt_f32_i32_e32 v35, v46
	v_cvt_f32_i32_e32 v34, v47
	v_cvt_f32_i32_e32 v33, v48
	v_cvt_f32_i32_e32 v32, v49
	v_cvt_f32_i32_e32 v17, v50
	v_cvt_f32_i32_e32 v16, v51
	v_cvt_f32_i32_e32 v15, v52
	v_cvt_f32_i32_e32 v9, v53
	v_cvt_f32_i32_e32 v28, v54
	v_cvt_f32_i32_e32 v27, v55
	v_cvt_f32_i32_e32 v26, v56
	v_cvt_f32_i32_e32 v41, v57
	v_cvt_f32_i32_e32 v40, v58
	v_cvt_f32_i32_e32 v37, v59
	v_cvt_f32_i32_e32 v38, v60
	v_cvt_f32_i32_e32 v47, v61
	v_cvt_f32_i32_e32 v46, v62
	v_cvt_f32_i32_e32 v45, v63
	v_cvt_f32_i32_e32 v44, v64
	v_cvt_f32_i32_e32 v14, v2
	v_cvt_f32_i32_e32 v13, v3
	v_cvt_f32_i32_e32 v12, v4
	v_cvt_f32_i32_e32 v4, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v5, v7
	v_cvt_f32_i32_e32 v7, v8
	v_dual_mov_b32 v8, s33 :: v_dual_mov_b32 v3, s38
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v2, 0x80, v165
.LBB0_7:                                ; %._crit_edge
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v0, 28, v1
	v_lshlrev_b32_e32 v1, 5, v165
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s24
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v48, 32, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 0xf0, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v49, v1, 2, 0
	v_add3_u32 v51, v49, v48, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt vmcnt(0)
	v_add_co_u32 v48, s0, s38, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v49, null, s39, 0, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v0, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[48:49]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[36:37], v[48:49]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v48, 16, v166
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v48, s1, s38, v48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v49, null, s39, 0, s1
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v50, 1, v48
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[48:49]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[36:37], v[48:49]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v48, 32, v166
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v48, s3, s38, v48
	v_add_co_ci_u32_e64 v49, null, s39, 0, s3
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, s1, s2
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v53, 1, v48
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s1, s18, 31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[48:49]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[48:49]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v48, 48, v166
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s1, s18, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v48, s5, s38, v48
	v_add_co_ci_u32_e64 v49, null, s39, 0, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[34:35], v[48:49]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[48:49]
	.loc	1 1120 21 is_stmt 1             ; ragged.py:1120:21
	v_lshl_or_b32 v49, s17, 8, v165
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v48, 1, v48
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_add_nc_u32_e32 v52, v49, v8
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v8, 0x80000000, v50, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v49, 0x80000000, v53, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s5, s1, 1
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x3
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v53, v49, s[8:11], 0 offen
	buffer_load_u16 v54, v48, s[8:11], 0 offen
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v49, 16, v8
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v62, v158, v49
	v_dual_mul_f32 v63, v157, v49 :: v_dual_lshlrev_b32 v48, 1, v52
	v_mul_f32_e32 v121, v112, v8
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v51, v48
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v48, 16, v53
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v115, v154, v48
	v_mul_f32_e32 v110, v110, v8
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v50, 16, v0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v116, v153, v48
	v_mul_f32_e32 v64, v156, v48
	v_mul_f32_e32 v114, v155, v48
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v38, v38, v8
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v54, v163, v50
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v153, v1, 1, 0
	ds_load_b128 v[117:120], v153
	ds_load_b128 v[154:157], v153 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v53, v164, v50 :: v_dual_mul_f32 v122, v111, v8
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v44, v44, v8
	v_mul_f32_e32 v5, v5, v8
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v127, v152, v48
	v_mul_f32_e32 v97, v97, v48
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v7, v7, v8
	v_mul_f32_e32 v26, v26, v48
	v_mul_f32_e32 v4, v4, v8
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v89, v89, v8
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v79, v79, v48
	v_mul_f32_e32 v33, v33, v48
	v_mul_f32_e32 v17, v17, v48
	v_mul_f32_e32 v9, v9, v48
	v_mul_f32_e32 v39, v39, v8
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v61, v53, v119
	v_mul_f32_e32 v53, v110, v117
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v55, v162, v50
	v_dual_mul_f32 v56, v161, v50 :: v_dual_mul_f32 v57, v159, v49
	v_mul_f32_e32 v58, v160, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v111, v115, v117
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v115, v140, v50
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v59, v56, v117 :: v_dual_mul_f32 v60, v55, v118
	v_dual_mul_f32 v56, v63, v118 :: v_dual_mul_f32 v57, v57, v120
	v_mul_f32_e32 v63, v121, v120
	v_mul_f32_e32 v55, v62, v117
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v117, v148, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v112, v116, v118
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v116, v139, v50
	v_mul_f32_e32 v0, v113, v8
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v113, v114, v120 :: v_dual_mul_f32 v114, v64, v119
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v128, v151, v48 :: v_dual_mul_f32 v133, v133, v49
	v_mul_f32_e32 v139, v150, v48
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v54, v54, v120
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v120, v145, v49 :: v_dual_mul_f32 v145, v107, v8
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v58, v58, v119
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v64, v141, v50
	v_mul_f32_e32 v140, v149, v48
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v141, v109, v8 :: v_dual_mul_f32 v124, v115, v155
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v109, v128, v156
	v_dual_mul_f32 v115, v145, v155 :: v_dual_mul_f32 v62, v122, v118
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v118, v147, v49
	v_mul_f32_e32 v145, v144, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v123, v116, v154 :: v_dual_mul_f32 v148, v134, v49
	v_dual_mul_f32 v116, v127, v157 :: v_dual_mul_f32 v127, v138, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v110, v0, v119 :: v_dual_mul_f32 v121, v118, v156
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v0, v143, v50 :: v_dual_mul_f32 v125, v64, v156
	v_mul_f32_e32 v143, v108, v8
	v_mul_f32_e32 v119, v146, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v107, v139, v154 :: v_dual_mul_f32 v126, v0, v157
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v149, v103, v48 :: v_dual_mul_f32 v128, v137, v50
	v_dual_mul_f32 v91, v91, v49 :: v_dual_mul_f32 v136, v136, v50
	v_mul_f32_e32 v93, v93, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v122, v117, v157 :: v_dual_mul_f32 v117, v143, v156
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v146, v105, v8 :: v_dual_mul_f32 v131, v131, v50
	v_dual_mul_f32 v147, v135, v49 :: v_dual_mul_f32 v108, v140, v155
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v118, v141, v157
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v103, v101, v48 :: v_dual_mul_f32 v0, v142, v50
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[137:140], v153 offset:512
	ds_load_b128 v[141:144], v153 offset:528
	v_mul_f32_e32 v120, v120, v155
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v104, v104, v48
	v_mul_f32_e32 v92, v92, v49
	v_mul_f32_e32 v94, v94, v8
	v_dual_mul_f32 v96, v96, v48 :: v_dual_mul_f32 v85, v85, v50
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v83, v83, v49 :: v_dual_mul_f32 v90, v90, v8
	v_dual_mul_f32 v80, v80, v48 :: v_dual_mul_f32 v29, v29, v49
	v_dual_mul_f32 v69, v69, v50 :: v_dual_mul_f32 v30, v30, v49
	v_dual_mul_f32 v67, v67, v50 :: v_dual_mul_f32 v84, v84, v49
	v_mul_f32_e32 v36, v36, v48
	v_mul_f32_e32 v18, v18, v49
	v_mul_f32_e32 v31, v31, v49
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v22, v22, v49 :: v_dual_mul_f32 v89, v89, v138
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v106, v106, v8 :: v_dual_mul_f32 v105, v104, v137
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v134, v145, v137 :: v_dual_mul_f32 v145, v99, v8
	v_mul_f32_e32 v101, v146, v137
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v106, v106, v154
	v_mul_f32_e32 v135, v136, v138
	v_mul_f32_e32 v136, v128, v139
	v_dual_mul_f32 v128, v133, v139 :: v_dual_mul_f32 v133, v147, v140
	v_dual_mul_f32 v103, v103, v139 :: v_dual_mul_f32 v64, v0, v137
	v_mul_f32_e32 v137, v127, v140
	v_mul_f32_e32 v104, v149, v140
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v149, v76, v8
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v99, v92, v143 :: v_dual_mul_f32 v94, v94, v140
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v140, v100, v8
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v127, v148, v138
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v0, v132, v50
	v_mul_f32_e32 v148, v77, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v77, v145, v143 :: v_dual_mul_f32 v76, v140, v142
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v145, v43, v48
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v100, v91, v144 :: v_dual_mul_f32 v91, v149, v141
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v102, v102, v48
	v_mul_f32_e32 v132, v130, v50
	v_dual_mul_f32 v147, v78, v49 :: v_dual_mul_f32 v130, v131, v143
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v92, v148, v141
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v102, v102, v138 :: v_dual_mul_f32 v131, v132, v144
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v138, v129, v50
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v129, v0, v142
	.loc	1 1124 41                       ; ragged.py:1124:41
	v_add_lshl_u32 v0, v52, s18, 1
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v52, v86, v50
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v146, v98, v8
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v98, v93, v142
	v_mul_f32_e32 v93, v97, v142
	.loc	1 1124 41                       ; ragged.py:1124:41
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v90, v90, v139 :: v_dual_mul_f32 v97, v147, v141
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v139, v95, v48
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v95, v96, v143 :: v_dual_mul_f32 v78, v146, v144
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v146, v42, v48
	v_mul_f32_e32 v147, v41, v8
	v_mul_f32_e32 v148, v40, v8
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v96, v139, v144
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v149, v37, v8
	v_mul_f32_e32 v11, v11, v50
	v_mul_f32_e32 v66, v66, v50
	v_dual_mul_f32 v10, v10, v49 :: v_dual_mul_f32 v119, v119, v154
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s8, s20
	.loc	1 1117 21                       ; ragged.py:1117:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v23, v23, v49 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_store_b32 v51, v0
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v51, v87, v50
	v_mul_f32_e32 v87, v82, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v132, v138, v141
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v153
	ds_load_b128 v[141:144], v153 offset:16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v88, v50
	v_mul_f32_e32 v88, v81, v49
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v86, v0, v42
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v72, v50
	v_mul_f32_e32 v72, v75, v49
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v140, v85, v40
	v_mul_f32_e32 v138, v51, v43
	v_mul_f32_e32 v81, v83, v40
	v_mul_f32_e32 v83, v87, v43
	v_mul_f32_e32 v51, v80, v40
	v_mul_f32_e32 v139, v52, v41
	v_dual_mul_f32 v52, v79, v41 :: v_dual_mul_f32 v79, v145, v43
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v75, v74, v49
	v_dual_mul_f32 v85, v35, v48 :: v_dual_mul_f32 v82, v84, v41
	v_dual_mul_f32 v145, v46, v8 :: v_dual_mul_f32 v84, v88, v42
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v88, v47, v8 :: v_dual_mul_f32 v87, v69, v141
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v80, v146, v42
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v146, v45, v8 :: v_dual_mul_f32 v45, v72, v141
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v37, v38, v43 :: v_dual_mul_f32 v38, v149, v42
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v42, v71, v50
	v_mul_f32_e32 v43, v70, v50
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v69, v29, v144
	v_mul_f32_e32 v29, v44, v144
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v44, v68, v50
	v_mul_f32_e32 v34, v34, v48
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v40, v147, v40
	v_dual_mul_f32 v74, v43, v142 :: v_dual_mul_f32 v71, v0, v144
	v_dual_mul_f32 v46, v75, v142 :: v_dual_mul_f32 v47, v30, v143
	v_dual_mul_f32 v35, v36, v141 :: v_dual_mul_f32 v36, v85, v142
	v_dual_mul_f32 v43, v33, v144 :: v_dual_mul_f32 v30, v88, v141
	v_mul_f32_e32 v33, v145, v142
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v73, v50
	v_mul_f32_e32 v72, v15, v48
	v_mul_f32_e32 v73, v14, v8
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v70, v42, v143
	v_mul_f32_e32 v42, v34, v143
	v_dual_mul_f32 v34, v146, v143 :: v_dual_mul_f32 v145, v13, v8
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v146, v12, v8
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_load_b128 v[12:15], v153 offset:512
	ds_load_b128 v[141:144], v153 offset:528
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v16, v16, v48
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v41, v148, v41
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v75, v67, v14 :: v_dual_mul_f32 v68, v22, v13
	v_dual_mul_f32 v67, v18, v15 :: v_dual_mul_f32 v22, v17, v13
	v_mul_f32_e32 v18, v16, v14
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v16, v21, v50
	v_mul_f32_e32 v17, v19, v50
	v_mul_f32_e32 v19, v25, v49
	v_mul_f32_e32 v21, v24, v49
	v_dual_mul_f32 v20, v20, v49 :: v_dual_mul_f32 v25, v27, v48
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v0, v0, v12
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v32, v32, v48
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v88, v66, v13 :: v_dual_mul_f32 v23, v23, v144
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v66, v20, v14
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v24, v28, v48
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v48, v5, v143 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v0
	v_mul_f32_e32 v31, v31, v12
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v6, v6, v8 :: v_dual_mul_f32 v85, v44, v15
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v49, v7, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v147, v39, v12 :: v_dual_mul_f32 v44, v6, v142
	v_mul_f32_e32 v27, v24, v142
	v_mul_f32_e32 v20, v72, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v24, v10, v141
	v_dual_mul_f32 v28, v25, v143 :: v_dual_mul_f32 v25, v11, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v0
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v5, v5, v6
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v5, 1.0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v5, v5, v0
	v_rcp_f32_e32 v7, v6
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_mul_f32_e32 v32, v32, v12
	v_mul_f32_e32 v12, v73, v13
	v_dual_mul_f32 v13, v145, v14 :: v_dual_mul_f32 v14, v146, v15
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v15, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v8, v15, v142 :: v_dual_mul_f32 v15, v16, v143
	v_dual_mul_f32 v16, v17, v144 :: v_dual_mul_f32 v17, v19, v142
	v_mul_f32_e32 v19, v21, v143
	v_mul_f32_e32 v21, v9, v141
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v6, v7, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, v9, v7
	v_div_scale_f32 v9, vcc_lo, v0, v5, v0
	v_mul_f32_e32 v10, v9, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v6, v10, v9
	v_fmac_f32_e32 v10, v11, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v6, v10, v9
	v_div_fmas_f32 v6, v6, v7, v10
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v6, v5, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_mul_f32_e32 v0, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v8
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v7, v7, v9
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v9, null, v7, v7, v8
	v_rcp_f32_e32 v10, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v9, v10, 1.0
	v_fmac_f32_e32 v10, v11, v10
	v_div_scale_f32 v11, vcc_lo, v8, v7, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v39, v11, v10
	v_fma_f32 v50, -v9, v39, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v50, v10
	v_fma_f32 v9, -v9, v39, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v9, v9, v10, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v10, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v15
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v10, v10, v11
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v10, v10, v15
	v_rcp_f32_e32 v39, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v11, v39, 1.0
	v_fmac_f32_e32 v39, v50, v39
	v_div_scale_f32 v50, vcc_lo, v15, v10, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v50, v39
	v_fma_f32 v72, -v11, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v72, v39
	v_fma_f32 v11, -v11, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v11, v11, v39, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v0, v0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v6
	v_fma_f32 v50, -v6, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v50, v39
	v_div_scale_f32 v50, vcc_lo, v16, v0, v16
	v_mul_f32_e32 v65, v50, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v6, v65, v50
	v_fmac_f32_e32 v65, v72, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v6, v65, v50
	v_div_fmas_f32 v39, v6, v39, v65
	v_div_fixup_f32 v6, v9, v7, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_mul_f32_e32 v26, v26, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v7, v7
	v_ldexp_f32 v7, v7, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v8, null, v7, v7, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v9, v8
	v_fma_f32 v50, -v8, v9, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, v50, v9
	v_div_scale_f32 v50, vcc_lo, v31, v7, v31
	v_mul_f32_e32 v65, v50, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v8, v65, v50
	v_fmac_f32_e32 v65, v72, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v8, v65, v50
	v_div_fmas_f32 v9, v8, v9, v65
	v_div_fixup_f32 v8, v11, v10, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v10, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v7, v9, v7, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v9, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v17
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v10, v10, v11
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v10, null, v11, v11, v17
	v_rcp_f32_e32 v15, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v10, v15, 1.0
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_dual_mul_f32 v4, v4, v141 :: v_dual_fmac_f32 v15, v50, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, vcc_lo, v17, v11, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v50, v15
	v_fma_f32 v72, -v10, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v72, v15
	v_fma_f32 v10, -v10, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v15, v10, v15, v65
	v_div_fixup_f32 v10, v39, v0, v16
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v19
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v0, v0, v19
	v_rcp_f32_e32 v39, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v16, v39, 1.0
	v_fmac_f32_e32 v39, v50, v39
	v_div_scale_f32 v50, vcc_lo, v19, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v50, v39
	v_fma_f32 v72, -v16, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v72, v39
	v_fma_f32 v16, -v16, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v16, v16, v39, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v9, v9
	v_ldexp_f32 v9, v9, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v9, null, v31, v31, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v9
	v_fma_f32 v50, -v9, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v50, v39
	v_div_scale_f32 v50, vcc_lo, v23, v31, v23
	v_mul_f32_e32 v65, v50, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v9, v65, v50
	v_fmac_f32_e32 v65, v72, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v9, v65, v50
	v_div_fmas_f32 v39, v9, v39, v65
	v_div_fixup_f32 v9, v15, v11, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v11, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v11, v11
	v_ldexp_f32 v11, v11, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v15, v15, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v11
	v_fma_f32 v50, -v11, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v50, v17
	v_div_scale_f32 v50, vcc_lo, v32, v15, v32
	v_mul_f32_e32 v65, v50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v11, v65, v50
	v_fmac_f32_e32 v65, v72, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v65, v50
	v_div_fmas_f32 v17, v11, v17, v65
	v_div_fixup_f32 v11, v16, v0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v15, v17, v15, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v17, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v27
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v0, v0, v27
	v_rcp_f32_e32 v19, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v16, v19, 1.0
	v_fmac_f32_e32 v19, v50, v19
	v_div_scale_f32 v50, vcc_lo, v27, v0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v50, v19
	v_fma_f32 v72, -v16, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v72, v19
	v_fma_f32 v16, -v16, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v19, v16, v19, v65
	v_div_fixup_f32 v16, v39, v31, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v28
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v23, v23, v28
	v_rcp_f32_e32 v39, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v31, v39, 1.0
	v_fmac_f32_e32 v39, v50, v39
	v_div_scale_f32 v50, vcc_lo, v28, v23, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v50, v39
	v_fma_f32 v72, -v31, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v72, v39
	v_fma_f32 v31, -v31, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v31, v31, v39, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v32, v32, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v17
	v_fma_f32 v50, -v17, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v50, v39
	v_div_scale_f32 v50, vcc_lo, v26, v32, v26
	v_mul_f32_e32 v65, v50, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v17, v65, v50
	v_fmac_f32_e32 v65, v72, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v65, v50
	v_div_fmas_f32 v39, v17, v39, v65
	v_div_fixup_f32 v17, v19, v0, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v39, v32, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v48
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v147
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v19, null, v0, v0, v147
	v_rcp_f32_e32 v27, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v19, v27, 1.0
	v_fmac_f32_e32 v27, v50, v27
	v_div_scale_f32 v50, vcc_lo, v147, v0, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v50, v27
	v_fma_f32 v72, -v19, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v72, v27
	v_fma_f32 v19, -v19, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v19, v27, v65
	v_div_fixup_f32 v19, v31, v23, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v0, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v23, v23, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v28
	v_fma_f32 v50, -v28, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v50, v31
	v_div_scale_f32 v50, vcc_lo, v44, v23, v44
	v_mul_f32_e32 v65, v50, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v28, v65, v50
	v_fmac_f32_e32 v65, v72, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v65, v50
	v_div_fmas_f32 v28, v28, v31, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v28, v23, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v23, 0xbfb8aa3b, v140
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v26, v26, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v32, v31
	v_fma_f32 v50, -v31, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v50, v32
	v_div_scale_f32 v50, vcc_lo, v48, v26, v48
	v_mul_f32_e32 v65, v50, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v31, v65, v50
	v_fmac_f32_e32 v65, v72, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v65, v50
	v_div_fmas_f32 v31, v31, v32, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v0, v0, v49
	v_rcp_f32_e32 v50, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v32, v50, 1.0
	v_fmac_f32_e32 v50, v65, v50
	v_div_scale_f32 v65, vcc_lo, v49, v0, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v65, v50
	v_fma_f32 v73, -v32, v72, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v50
	v_fma_f32 v32, -v32, v72, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v50, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v23, v23, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v50, v28
	v_fma_f32 v65, -v28, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v65, v50
	v_div_scale_f32 v65, vcc_lo, v140, v23, v140
	v_mul_f32_e32 v72, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v28, v72, v65
	v_fmac_f32_e32 v72, v73, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v72, v65
	v_div_fmas_f32 v28, v28, v50, v72
	v_div_fixup_f32 v72, v31, v26, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v26, v26, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v31
	v_fma_f32 v50, -v31, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, vcc_lo, v139, v26, v139
	v_mul_f32_e32 v65, v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v31, v65, v50
	v_fmac_f32_e32 v65, v73, v48
	v_div_fixup_f32 v73, v32, v0, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v31, v65, v50
	v_div_fmas_f32 v31, v31, v48, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v0, v0, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v32
	v_fma_f32 v49, -v32, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v138, v0, v138
	v_mul_f32_e32 v50, v49, v48
	v_div_fixup_f32 v23, v28, v23, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v28, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v32, v50, v49
	v_fmac_f32_e32 v50, v65, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v50, v49
	v_div_fmas_f32 v32, v32, v48, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v86
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v48, v48, v86
	v_rcp_f32_e32 v49, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v28, v49, 1.0
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, vcc_lo, v86, v48, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v50, v49
	v_fma_f32 v140, -v28, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v140, v49
	v_fma_f32 v28, -v28, v65, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v49, v28, v49, v65
	v_div_fixup_f32 v28, v31, v26, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v87
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v87
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v26, v26, v87
	v_rcp_f32_e32 v50, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v31, v50, 1.0
	v_fmac_f32_e32 v50, v65, v50
	v_div_scale_f32 v65, vcc_lo, v87, v26, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v65, v50
	v_fma_f32 v140, -v31, v139, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v50
	v_fma_f32 v31, -v31, v139, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v50, v31, v50, v139
	v_div_fixup_f32 v31, v32, v0, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v74
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v0, v0, v74
	v_rcp_f32_e32 v65, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v32, v65, 1.0
	v_fmac_f32_e32 v65, v138, v65
	v_div_scale_f32 v138, vcc_lo, v74, v0, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v138, v65
	v_fma_f32 v140, -v32, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v65
	v_fma_f32 v32, -v32, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v65, v32, v65, v139
	v_div_fixup_f32 v32, v49, v48, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v48, 0xbfb8aa3b, v70
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v70
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v48, v48, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v86, 1.0, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v86, v86, v70
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v48, v49, 1.0
	v_fmac_f32_e32 v49, v138, v49
	v_div_scale_f32 v138, vcc_lo, v70, v86, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v138, v49
	v_fma_f32 v140, -v48, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v49
	v_fma_f32 v48, -v48, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v138, v48, v49, v139
	v_div_fixup_f32 v48, v50, v26, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v71
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, null, v26, v26, v71
	v_rcp_f32_e32 v50, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v49, v50, 1.0
	v_fmac_f32_e32 v50, v87, v50
	v_div_scale_f32 v87, vcc_lo, v71, v26, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v87, v50
	v_fma_f32 v140, -v49, v139, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v50
	v_fma_f32 v49, -v49, v139, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v87, v49, v50, v139
	v_div_fixup_f32 v49, v65, v0, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v88
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v88
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v0, v0, v88
	v_rcp_f32_e32 v65, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v50, v65, 1.0
	v_fmac_f32_e32 v65, v74, v65
	v_div_scale_f32 v74, vcc_lo, v88, v0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v74, v65
	v_fma_f32 v140, -v50, v139, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v65
	v_fma_f32 v50, -v50, v139, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v74, v50, v65, v139
	v_div_fixup_f32 v65, v87, v26, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v138, v86, v70
	v_div_fixup_f32 v74, v74, v0, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v64, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v26, v26, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v86, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v86, v71
	v_div_scale_f32 v86, vcc_lo, v75, v26, v75
	v_mul_f32_e32 v87, v86, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v70, v87, v86
	v_fmac_f32_e32 v87, v138, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v87, v86
	v_div_fmas_f32 v70, v70, v71, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v75, v70, v26, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v0, v0, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v71
	v_fma_f32 v87, -v71, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v85, v0, v85
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v71, v88, v87
	v_fmac_f32_e32 v88, v138, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v88, v87
	v_div_fmas_f32 v71, v71, v86, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v86, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v85, v71, v0, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v86
	v_mul_f32_e32 v0, 0xbfb8aa3b, v81
	v_cndmask_b32_e64 v86, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, 0xbfb8aa3b, v25
	v_exp_f32_e32 v86, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v86, v86, v87
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v86, 1.0, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v86, v86, v25
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v87, v88, 1.0
	v_fmac_f32_e32 v88, v138, v88
	v_div_scale_f32 v138, vcc_lo, v25, v86, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v139, v138, v88
	v_fma_f32 v140, -v87, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v140, v88
	v_fma_f32 v87, -v87, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v88, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v0, v0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v26
	v_fma_f32 v71, -v26, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v81, v0, v81
	v_mul_f32_e32 v88, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v26, v88, v71
	v_fmac_f32_e32 v88, v138, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v88, v71
	v_div_fmas_f32 v26, v26, v70, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v70, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v70, v70, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v71
	v_fma_f32 v138, -v71, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v138, v88
	v_div_scale_f32 v138, vcc_lo, v82, v70, v82
	v_mul_f32_e32 v139, v138, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v140, -v71, v139, v138
	v_fmac_f32_e32 v139, v140, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v139, v138
	v_div_fmas_f32 v71, v71, v88, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v82, v71, v70, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v83
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v88, v88, v138
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v88, 1.0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v138, null, v88, v88, v83
	v_rcp_f32_e32 v139, v138
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v140, -v138, v139, 1.0
	v_fmac_f32_e32 v139, v140, v139
	v_div_scale_f32 v140, vcc_lo, v83, v88, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v141, v140, v139
	v_fma_f32 v142, -v138, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v141, v142, v139
	v_fma_f32 v138, -v138, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v138, v138, v139, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v139, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v83, v138, v88, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v139
	v_cndmask_b32_e64 v139, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v139, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v86, v87, v86, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v139, v139
	v_ldexp_f32 v139, v139, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v139, 1.0, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v140, null, v139, v139, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v141, v140
	v_fma_f32 v142, -v140, v141, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v141, v142, v141
	v_div_scale_f32 v142, vcc_lo, v84, v139, v84
	v_div_fixup_f32 v81, v26, v0, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v143, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v140, v143, v142
	v_fmac_f32_e32 v143, v144, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v140, -v140, v143, v142
	v_div_fmas_f32 v140, v140, v141, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v84, v140, v139, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v70, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v70, v26
	v_div_scale_f32 v70, vcc_lo, v45, v0, v45
	v_mul_f32_e32 v71, v70, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v25, v71, v70
	v_fmac_f32_e32 v71, v87, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v71, v70
	v_div_fmas_f32 v25, v25, v26, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v26, v26, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v87, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v87, v71
	v_div_scale_f32 v87, vcc_lo, v46, v26, v46
	v_mul_f32_e32 v88, v87, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v70, v88, v87
	v_fmac_f32_e32 v88, v138, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v88, v87
	v_div_fmas_f32 v70, v70, v71, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v71, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v71, v71
	v_ldexp_f32 v71, v71, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v71, v71, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v87
	v_fma_f32 v138, -v87, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v138, v88
	v_div_scale_f32 v138, vcc_lo, v47, v71, v47
	v_mul_f32_e32 v139, v138, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v140, -v87, v139, v138
	v_fmac_f32_e32 v139, v140, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v87, v139, v138
	v_div_fmas_f32 v88, v87, v88, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v87, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v88, v71, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v69
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v87, v87, v138
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v138, 1.0, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v138, v138, v69
	v_rcp_f32_e32 v139, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v140, -v87, v139, 1.0
	v_fmac_f32_e32 v139, v140, v139
	v_div_scale_f32 v140, vcc_lo, v69, v138, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v141, v140, v139
	v_div_fixup_f32 v45, v25, v0, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v142, -v87, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v141, v142, v139
	v_fma_f32 v87, -v87, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v139, v87, v139, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v87, 0xbfb8aa3b, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v88, v139, v138, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v87, v87, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v140, 1.0, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v140, v140, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v141, v87
	v_fma_f32 v142, -v87, v141, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v141, v142, v141
	v_div_scale_f32 v142, vcc_lo, v68, v140, v68
	v_mul_f32_e32 v143, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v87, v143, v142
	v_fmac_f32_e32 v143, v144, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v87, v143, v142
	v_div_fmas_f32 v141, v87, v141, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v87, v70, v26, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v46, v141, v140, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v68, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v68, v26
	v_div_scale_f32 v68, vcc_lo, v66, v0, v66
	v_mul_f32_e32 v69, v68, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v25, v69, v68
	v_fmac_f32_e32 v69, v70, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v69, v68
	v_div_fmas_f32 v25, v25, v26, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v26, v26, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v68
	v_fma_f32 v70, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v67, v26, v67
	v_mul_f32_e32 v71, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v68, v71, v70
	v_fmac_f32_e32 v71, v138, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v71, v70
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v69, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v69, v69, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v138, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v138, v71
	v_div_scale_f32 v138, vcc_lo, v24, v69, v24
	v_mul_f32_e32 v139, v138, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v140, -v70, v139, v138
	v_fmac_f32_e32 v139, v140, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v70, v139, v138
	v_div_fixup_f32 v138, v25, v0, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v70, v70, v71, v139
	v_div_fixup_f32 v139, v68, v26, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v66, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v66, v26
	v_div_scale_f32 v66, vcc_lo, v51, v0, v51
	v_mul_f32_e32 v67, v66, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v25, v67, v66
	v_fmac_f32_e32 v67, v68, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v67, v66
	v_div_fmas_f32 v25, v25, v26, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v25, v0, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v52
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v26, v26, v52
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v52, v26, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v68, v67
	v_fma_f32 v140, -v66, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v140, v67
	v_fma_f32 v66, -v66, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v67, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v66, v26, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v58, v58, v84 :: v_dual_mul_f32 v51, v112, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v79
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v79
	v_rcp_f32_e32 v71, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v140, -v68, v71, 1.0
	v_fmac_f32_e32 v71, v140, v71
	v_div_scale_f32 v140, vcc_lo, v79, v67, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v141, v140, v71
	v_fma_f32 v142, -v68, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v141, v142, v71
	v_fma_f32 v68, -v68, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v68, v68, v71, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v71, 0xbfb8aa3b, v80
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v80
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v140
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v140, null, v71, v71, v80
	v_rcp_f32_e32 v141, v140
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v140, v141, 1.0
	v_fmac_f32_e32 v141, v142, v141
	v_div_scale_f32 v142, vcc_lo, v80, v71, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v142, v141
	v_fma_f32 v144, -v140, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v144, v141
	v_fma_f32 v140, -v140, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v140, v140, v141, v143
	v_div_fixup_f32 v141, v70, v69, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v35
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v35
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v24, v24, v35
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v66, v26
	v_div_scale_f32 v66, vcc_lo, v35, v24, v35
	v_div_fixup_f32 v52, v68, v67, v79
	v_div_fixup_f32 v79, v140, v71, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v26
	v_fma_f32 v68, -v25, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v26
	v_fma_f32 v25, -v25, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v25, v25, v26, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v36
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v26, v26, v36
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v36, v26, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v67
	v_fma_f32 v66, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v42
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v42
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v42
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v42, v67, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v80, -v68, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v80, v69
	v_fma_f32 v68, -v68, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v69, 0xbfb8aa3b, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v68, v67, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v69, v69, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v80, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v80, v71
	v_div_scale_f32 v80, vcc_lo, v43, v69, v43
	v_mul_f32_e32 v140, v80, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v70, v140, v80
	v_fmac_f32_e32 v140, v142, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v140, v80
	v_div_fmas_f32 v70, v70, v71, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v71, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v70, v69, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v22
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v80
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v71, v71, v22
	v_rcp_f32_e32 v140, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v80, v140, 1.0
	v_fmac_f32_e32 v140, v142, v140
	v_div_scale_f32 v142, vcc_lo, v22, v71, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v142, v140
	v_fma_f32 v144, -v80, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v144, v140
	v_fma_f32 v80, -v80, v143, v142
	v_div_fixup_f32 v142, v66, v26, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v80, v140, v143
	v_div_fixup_f32 v140, v25, v24, v35
	v_div_fixup_f32 v80, v80, v71, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v22, v22, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v24
	v_fma_f32 v26, -v24, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v18, v22, v18
	v_mul_f32_e32 v35, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v24, v35, v26
	v_fmac_f32_e32 v35, v36, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v35, v26
	v_div_fmas_f32 v24, v24, v25, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v26
	v_fma_f32 v36, -v26, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v20, v25, v20
	v_mul_f32_e32 v66, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v26, v66, v36
	v_fmac_f32_e32 v66, v67, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v66, v36
	v_div_fmas_f32 v26, v26, v35, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v35, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v35, v35, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v36
	v_fma_f32 v67, -v36, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v21, v35, v21
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v36, v68, v67
	v_fmac_f32_e32 v68, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v36, v68, v67
	v_div_fmas_f32 v36, v36, v66, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v66, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v145, v36, v35, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v40
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v66, v66, v40
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v40, v66, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v68
	v_fma_f32 v67, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v40, v67, v66, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v69
	v_fma_f32 v71, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v41, v68, v41
	v_mul_f32_e32 v143, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v69, v143, v71
	v_fmac_f32_e32 v143, v144, v70
	v_div_fixup_f32 v144, v26, v25, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v69, v143, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v71, v61, v32 :: v_dual_mul_f32 v32, v119, v45
	v_mul_f32_e32 v45, v105, v15
	v_mul_f32_e32 v15, v92, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v69, v69, v70, v143
	v_div_fixup_f32 v143, v24, v22, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v18, 0xbfb8aa3b, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v59, v23
	v_mul_f32_e32 v59, v57, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v146, v69, v68, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v97, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v57, v127, v46 :: v_dual_mul_f32 v46, v104, v144
	v_mul_f32_e32 v61, v55, v81
	v_mul_f32_e32 v55, v133, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v37
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v18, v18, v37
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v37, v18, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v22, v21
	v_fma_f32 v25, -v20, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v21
	v_fma_f32 v20, -v20, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v20, v20, v21, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v147, v20, v18, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_mul_f32_e32 v18, 0xbfb8aa3b, v29
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v21, v21, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v22
	v_fma_f32 v25, -v22, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v38, v21, v38
	v_mul_f32_e32 v26, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v22, v26, v25
	v_fmac_f32_e32 v26, v35, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v26, v25
	v_div_fmas_f32 v22, v22, v24, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v24, v24, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v35, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v35, v26
	v_div_scale_f32 v35, vcc_lo, v30, v24, v30
	v_mul_f32_e32 v36, v35, v26
	v_div_fixup_f32 v38, v22, v21, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v25, v36, v35
	v_fmac_f32_e32 v36, v41, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v36, v35
	v_div_fmas_f32 v25, v25, v26, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v148, v25, v24, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v33
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v26, v26, v33
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v41, v36
	v_div_scale_f32 v41, vcc_lo, v33, v26, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v41, v36
	v_fma_f32 v67, -v35, v66, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v36
	v_fma_f32 v35, -v35, v66, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v35, v35, v36, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v36, 0xbfb8aa3b, v34
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v34
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v36, v36, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v36, v36, v34
	v_rcp_f32_e32 v66, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v41, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v34, v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v41, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v68, v69, v66 :: v_dual_mul_f32 v69, v60, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v56, v82
	v_mul_f32_e32 v56, v128, v138
	v_mul_f32_e32 v28, v122, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v41, v68, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v135, v74
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v41, v66, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v68, v54, v31 :: v_dual_mul_f32 v31, v132, v86
	v_mul_f32_e32 v66, v136, v75
	v_mul_f32_e32 v54, v134, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v29
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v18, v18, v29
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v29, v18, v29
	v_div_fixup_f32 v149, v35, v26, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v22, v21
	v_fma_f32 v25, -v20, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v21
	v_fma_f32 v20, -v20, v24, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v20, v20, v21, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v12
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v21, v21, v12
	v_rcp_f32_e32 v24, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v22, v24, 1.0
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, vcc_lo, v12, v21, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v25, v24
	v_fma_f32 v30, -v22, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v30, v24
	v_fma_f32 v22, -v22, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v24, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v152, v22, v21, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v21, v99, v11 :: v_dual_mul_f32 v22, v100, v16
	v_mul_f32_e32 v12, v93, v17
	v_mul_f32_e32 v17, v109, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v16, v116, v43 :: v_dual_mul_f32 v11, v106, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v43, v62, v146 :: v_dual_fmac_f32 v24, 0xbfb8aa3b, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v24, v24, v13
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v30, v26
	v_div_scale_f32 v30, vcc_lo, v13, v24, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v33, v30, v26
	v_div_fixup_f32 v150, v41, v36, v34
	v_fma_f32 v34, -v25, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v26
	v_fma_f32 v25, -v25, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v25, v25, v26, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v14
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v30
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, null, v26, v26, v14
	v_rcp_f32_e32 v33, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v30, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v14, v26, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v30, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v30, -v30, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v33, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v33, 0xbfb8aa3b, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v154, v30, v26, v14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v131, v10
	v_mul_f32_e32 v30, v120, v87
	v_mul_f32_e32 v14, v96, v39
	v_mul_f32_e32 v10, v115, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v151, v20, v18, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v29, v121, v47 :: v_dual_mul_f32 v20, v98, v9
	v_mul_f32_e32 v47, v103, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v118, v151
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v33, v33, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v34
	v_fma_f32 v36, -v34, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, vcc_lo, v4, v33, v4
	v_mul_f32_e32 v37, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v34, v37, v36
	v_fmac_f32_e32 v37, v41, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v110, v38
	v_mul_f32_e32 v38, v94, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v34, v37, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v123, v48
	v_mul_f32_e32 v48, v102, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v35, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v124, v49
	v_mul_f32_e32 v37, v101, v27
	v_mul_f32_e32 v49, v114, v79
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v155, v34, v33, v4
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v126, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v153, v25, v24, v13
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v24, v129, v6 :: v_dual_mul_f32 v25, v130, v8
	v_mul_f32_e32 v65, v137, v85
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v4, |v70|, |v69|
	v_max3_f32 v5, |v68|, |v36|, |v35|
.Ltmp6:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v34, v125, v50 :: v_dual_mul_f32 v13, v95, v19
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v31|, |v24|, |v25|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v107, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, |v71|, v5
	v_max3_f32 v5, |v67|, |v66|, |v65|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v113, v52
	v_dual_mul_f32 v52, v111, v0 :: v_dual_mul_f32 v39, v90, v153
	v_dual_mul_f32 v18, v108, v142 :: v_dual_mul_f32 v9, v91, v155
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v6, |v26|
	v_max3_f32 v6, |v34|, |v33|, |v64|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e64 v0, |v52|, |v51|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v117, v150
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v74, v4, v6, v5
	v_max_f32_e64 v4, |v61|, |v60|
	v_max3_f32 v5, |v59|, |v32|, |v30|
	v_max3_f32 v6, |v23|, |v20|, |v21|
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v4, v4, |v58|, v5
	v_max3_f32 v5, |v57|, |v56|, |v55|
	v_max3_f32 v5, v5, v6, |v22|
	v_max3_f32 v6, |v29|, |v28|, |v54|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max3_f32 v75, v4, v6, v5
	v_max3_f32 v4, |v50|, |v19|, |v18|
	v_max3_f32 v5, |v15|, |v12|, |v13|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v78, v73
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v78, 0x60, v165
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v0, |v49|, v4
	v_max3_f32 v4, |v48|, |v47|, |v46|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v4, v4, v5, |v14|
	v_max3_f32 v5, |v17|, |v16|, |v45|
	v_max3_f32 v0, v0, v5, v4
.Ltmp17:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v4, v76, v44
	v_mul_f32_e32 v42, v63, v147
	v_mul_f32_e32 v44, v53, v40
	v_mul_f32_e32 v5, v77, v72
	v_mul_f32_e32 v40, v89, v152
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v76, 1, v2
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v53, |v42|, |v11|, |v10|
	v_max_f32_e64 v27, |v44|, |v43|
	v_max3_f32 v62, |v9|, |v4|, |v5|
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v27, v27, |v41|, v53
	v_max3_f32 v53, |v40|, |v39|, |v38|
	v_max3_f32 v53, v53, v62, |v6|
	v_max3_f32 v62, |v8|, |v7|, |v37|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v27, v27, v62, v53
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v53, v74, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v62, v75, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v53, v53, v53 :: v_dual_max_f32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v79, v74, v53
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v53, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v75, v62
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v62, 8, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v53, v53, v53
	v_max_f32_e32 v81, v0, v53
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v27, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	v_max_f32_e32 v82, v27, v0
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v165
	v_and_b32_e32 v27, 4, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v53, v0, 9, 0
	v_lshlrev_b32_e32 v74, 5, v0
	v_lshl_add_u32 v72, v27, 6, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v53, v27, 2, v53
	v_xor_b32_e32 v63, v74, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v53, v62, 4, v53
	v_add3_u32 v53, v53, v76, v63
	v_lshrrev_b32_e32 v63, 3, v2
	v_add_nc_u32_e32 v2, 0, v2
	ds_store_b128 v53, v[79:82]
	v_lshlrev_b32_e32 v53, 4, v165
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v53, 0x680, v53, v74
	v_xor_b32_e32 v53, v53, v78
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v53, v72, v63, v53
	ds_load_b128 v[79:82], v53
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v63, v79
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v79, v79
	v_max_f32_e32 v77, v80, v80
	v_max_f32_e32 v53, v82, v82
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v63, v63 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v73, v81
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v63, v63, v63
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v73, v73 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v63, v75, v63
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v0, v0, 4, 0
	v_mov_b32_e32 v75, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v63, v63, v75 :: v_dual_mov_b32 v72, v80
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v72, v77, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v75, v72
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
	v_dual_max_f32 v72, v72, v75 :: v_dual_mov_b32 v75, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v82, v82, v82 :: v_dual_mov_b32 v77, v72
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v53, v53, v82
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v79, v63, v75
	v_max_f32_e32 v63, v73, v73
	v_dual_max_f32 v80, v72, v77 :: v_dual_max_f32 v63, v81, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v63
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v63, v63, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v63
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v81, v63, v72
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v63, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v63, v63 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v63, v63, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v53, v53, v63
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v63, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v63, v63, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_max_f32 v82, v53, v63 :: v_dual_lshlrev_b32 v53, 3, v62
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v62, 1, v78
	v_add3_u32 v2, v2, v62, v53
	ds_store_b128 v2, v[79:82]
	v_lshlrev_b32_e32 v2, 5, v27
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v0, v2, v53
	ds_load_b128 v[79:82], v0
.Ltmp53:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v79, v79 :: v_dual_max_f32 v53, v82, v82
	v_dual_max_f32 v2, v81, v81 :: v_dual_max_f32 v27, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	v_div_scale_f32 v62, null, 0x40e00000, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v72, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v72, v63
	v_div_scale_f32 v72, vcc_lo, v0, 0x40e00000, v0
	v_mul_f32_e32 v73, v72, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v62, v73, v72
	v_fmac_f32_e32 v73, v75, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v62, v73, v72
	v_max_f32_e32 v72, 0x2b8cbccc, v2
	v_div_fmas_f32 v63, v62, v63, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v72
	v_div_fixup_f32 v0, v63, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v62, v2
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v63.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v73, -v2, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v73, v62
	v_div_scale_f32 v73, vcc_lo, v72, 0x40e00000, v72
	v_mul_f32_e32 v75, v73, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v2, v75, v73
	v_fmac_f32_e32 v75, v77, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v75, v73
	v_div_fmas_f32 v73, v2, v62, v75
	v_max_f32_e32 v75, 0x2b8cbccc, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v75
	v_rcp_f32_e32 v27, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v2, v27, 1.0
	v_fmac_f32_e32 v27, v62, v27
	v_div_scale_f32 v62, vcc_lo, v75, 0x40e00000, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v62, v27
	v_fma_f32 v79, -v2, v77, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v79, v27
	v_fma_f32 v2, -v2, v77, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v77, v2, v27, v77
	v_max_f32_e32 v2, 0x2b8cbccc, v53
	v_div_scale_f32 v27, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v27
	v_fma_f32 v62, -v27, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v62, v53
	v_div_scale_f32 v62, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v79, v62, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v27, v79, v62
	v_fmac_f32_e32 v79, v80, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v79, v62
	v_div_fmas_f32 v62, v27, v53, v79
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v27.l, v0.h
	v_mov_b16_e32 v27.h, v63.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v27, v0, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v53, 0xffff0000, v27
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v79, v0
	v_fma_f32 v80, -v0, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v70, v53, v70
	v_mul_f32_e32 v81, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v0, v81, v80
	v_fmac_f32_e32 v81, v82, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v81, v80
	v_div_fmas_f32 v79, v0, v79, v81
	v_div_scale_f32 v0, null, v53, v53, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v80, v0
	v_fma_f32 v81, -v0, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v69, v53, v69
	v_mul_f32_e32 v82, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v0, v82, v81
	v_fmac_f32_e32 v82, v83, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v82, v81
	v_div_fmas_f32 v80, v0, v80, v82
	v_div_scale_f32 v0, null, v53, v53, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v81, v0
	v_fma_f32 v82, -v0, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v71, v53, v71
	v_mul_f32_e32 v83, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v0, v83, v82
	v_fmac_f32_e32 v83, v84, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v83, v82
	v_div_fmas_f32 v81, v0, v81, v83
	v_div_scale_f32 v0, null, v53, v53, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v82, v0
	v_fma_f32 v83, -v0, v82, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v68, v53, v68
	v_mul_f32_e32 v84, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v0, v84, v83
	v_fmac_f32_e32 v84, v85, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v84, v83
	v_div_fmas_f32 v82, v0, v82, v84
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 4, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v0, v78
	v_lshlrev_b32_e32 v78, 10, v165
	v_and_b32_e32 v83, 0x1800, v78
	v_and_b32_e32 v78, 16, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v84, 6, v78
	v_add3_u32 v83, 0, v83, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v76, v83, v0, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v36
	v_rcp_f32_e32 v83, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v0, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v36, v53, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v86, -v0, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v83
	v_fma_f32 v0, -v0, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v83, v0, v83, v85
	v_div_scale_f32 v0, null, v53, v53, v35
	v_rcp_f32_e32 v84, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v0, v84, 1.0
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v85, vcc_lo, v35, v53, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v86, v85, v84
	v_fma_f32 v87, -v0, v86, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v84
	v_fma_f32 v0, -v0, v86, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v84, v0, v84, v86
	v_div_scale_f32 v0, null, v53, v53, v34
	v_rcp_f32_e32 v85, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v0, v85, 1.0
	v_fmac_f32_e32 v85, v86, v85
	v_div_scale_f32 v86, vcc_lo, v34, v53, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v86, v85
	v_fma_f32 v88, -v0, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v85
	v_fma_f32 v0, -v0, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v85, v0, v85, v87
	v_div_scale_f32 v0, null, v53, v53, v33
	v_rcp_f32_e32 v86, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v0, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v33, v53, v33
	v_div_fixup_f32 v70, v79, v53, v70
	v_div_fixup_f32 v79, v82, v53, v68
	v_div_fixup_f32 v71, v81, v53, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v88, v87, v86
	v_div_fixup_f32 v69, v80, v53, v69
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v36, v83, v53, v36
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v0, v88, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v68, v68, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v35, v84, v53, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v89, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_cvt_i32_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v0, v88, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	v_and_b32_e32 v68, 15, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v70, 15, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v86, v0, v86, v88
	v_div_scale_f32 v0, null, v53, v53, v64
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v69, 15, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v0
	v_fma_f32 v88, -v0, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v64, v53, v64
	v_mul_f32_e32 v89, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v0, v89, v88
	v_fmac_f32_e32 v89, v90, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v89, v88
	v_div_fmas_f32 v0, v0, v87, v89
	v_div_scale_f32 v87, null, v53, v53, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v53, v64
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v87, v88, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v67, v53, v67
	v_mul_f32_e32 v90, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v87, v90, v89
	v_fmac_f32_e32 v90, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v87, v90, v89
	v_div_fmas_f32 v87, v87, v88, v90
	v_div_scale_f32 v88, null, v53, v53, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v64, v87, v53, v67
	v_rcp_f32_e32 v89, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v64, v64
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v64, v64, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v66, v53, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v71, 15, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v91, v90
	v_div_fmas_f32 v88, v88, v89, v91
	v_div_scale_f32 v89, null, v53, v53, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v66, v88, v53, v66
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v89, v90, 1.0
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v65, v53, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v90
	v_fma_f32 v89, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_fixup_f32 v67, v89, v53, v65
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v65, v64
	v_and_b32_e32 v64, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v65, 15, v65
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v66, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v67, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 6, v165
	ds_store_b128 v76, v[68:71]
	ds_store_b128 v76, v[64:67] offset:512
	s_waitcnt lgkmcnt(0)
	v_and_or_b32 v0, 0x1b00, v0, v74
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v65, v0, v1, 0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v31
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[66:69], v65
	ds_load_b128 v[79:82], v65 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v1, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v64, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v64, v1
	v_div_scale_f32 v64, vcc_lo, v31, v53, v31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v79, 4, v66
	v_lshl_or_b32 v67, v80, 4, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v70, v64, v1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v68, v81, 4, v68
	v_lshl_or_b32 v69, v82, 4, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v0, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v1
	v_fma_f32 v0, -v0, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v0, v1, v70
	v_div_scale_f32 v0, null, v53, v53, v24
	v_div_fixup_f32 v31, v71, v53, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v1, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v31, v31, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v64, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v1, v64, v1
	v_div_scale_f32 v64, vcc_lo, v24, v53, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v64, v1
	v_fma_f32 v74, -v0, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v74, v1
	v_fma_f32 v0, -v0, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v74, v0, v1, v70
	v_div_scale_f32 v0, null, v53, v53, v25
	v_div_fixup_f32 v24, v74, v53, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v1, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v64, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v1, v64, v1
	v_div_scale_f32 v64, vcc_lo, v25, v53, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v64, v1
	v_fma_f32 v79, -v0, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v79, v1
	v_fma_f32 v0, -v0, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v79, v0, v1, v70
	v_div_scale_f32 v0, null, v53, v53, v26
	v_div_fixup_f32 v25, v79, v53, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v1, v0
	v_fma_f32 v64, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, v64, v1
	v_div_scale_f32 v64, vcc_lo, v26, v53, v26
	v_mul_f32_e32 v70, v64, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v0, v70, v64
	v_fmac_f32_e32 v70, v80, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v70, v64
	v_div_fmas_f32 v80, v0, v1, v70
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v77, 0x40e00000, v75
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v1.h, v63.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_fixup_f32 v26, v80, v53, v26
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v1.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v64, v0, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v70, 0xffff0000, v64
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v70, v70, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v1, v0
	v_fma_f32 v75, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, v75, v1
	v_div_scale_f32 v75, vcc_lo, v61, v70, v61
	v_mul_f32_e32 v77, v75, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v0, v77, v75
	v_fmac_f32_e32 v77, v81, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v77, v75
	v_div_fmas_f32 v0, v0, v1, v77
	v_div_scale_f32 v1, null, v70, v70, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v70, v61
	v_rcp_f32_e32 v75, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v1, v75, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, vcc_lo, v60, v70, v60
	v_mul_f32_e32 v81, v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v1, v81, v77
	v_fmac_f32_e32 v81, v82, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v1, -v1, v81, v77
	v_div_fmas_f32 v1, v1, v75, v81
	v_div_scale_f32 v75, null, v70, v70, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v1, v1, v70, v60
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v1, v1
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v1, v1, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v75, v77, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, vcc_lo, v58, v70, v58
	v_mul_f32_e32 v82, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v75, v82, v81
	v_fmac_f32_e32 v82, v87, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v82, v81
	v_div_fmas_f32 v87, v75, v77, v82
	v_div_scale_f32 v75, null, v70, v70, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v60, v87, v70, v58
	v_rcp_f32_e32 v77, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v60
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v75, v77, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, vcc_lo, v59, v70, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v82, v81, v77
	v_fma_f32 v88, -v75, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v88, v77
	v_fma_f32 v75, -v75, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v75, v77, v82
	v_div_scale_f32 v75, null, v70, v70, v32
	v_div_fixup_f32 v61, v88, v70, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v59, 15, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, vcc_lo, v32, v70, v32
	v_mul_f32_e32 v82, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v75, v82, v81
	v_fmac_f32_e32 v82, v89, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v82, v81
	v_div_fmas_f32 v75, v75, v77, v82
	v_div_scale_f32 v77, null, v70, v70, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v81, v77
	v_fma_f32 v82, -v77, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v30, v70, v30
	v_mul_f32_e32 v89, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v77, v89, v82
	v_fmac_f32_e32 v89, v90, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v77, v89, v82
	v_div_fmas_f32 v77, v77, v81, v89
	v_div_scale_f32 v81, null, v70, v70, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v30, v77, v70, v30
	v_rcp_f32_e32 v82, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v81, v82, 1.0
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, vcc_lo, v29, v70, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v82
	v_fma_f32 v91, -v81, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v82
	v_fma_f32 v81, -v81, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v81, v82, v90
	v_div_scale_f32 v82, null, v70, v70, v28
	v_div_fixup_f32 v29, v81, v70, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v82
	v_fma_f32 v90, -v82, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v28, v70, v28
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v82, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v91, v90
	v_div_fmas_f32 v82, v82, v89, v91
	v_div_scale_f32 v89, null, v70, v70, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v28, v82, v70, v28
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v89, v90, 1.0
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v54, v70, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v90
	v_fma_f32 v89, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_scale_f32 v90, null, v70, v70, v57
	v_div_fixup_f32 v0, v89, v70, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v91, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v61
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v90, v91, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v57, v70, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v61, 15, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v93, v92, v91 :: v_dual_and_b32 v54, 15, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v90, v93, v92
	v_fmac_f32_e32 v93, v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v90, v93, v92
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v70, v70, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v1, v90, v70, v57
	v_rcp_f32_e32 v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v1, v1
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v1, v1, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v91, v92, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v56, v70, v56
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v91, v94, v93
	v_fmac_f32_e32 v94, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	v_div_scale_f32 v92, null, v70, v70, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v56, v91, v70, v56
	v_rcp_f32_e32 v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v56
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v92, v93, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v55, v70, v55
	v_dual_mul_f32 v95, v94, v93 :: v_dual_and_b32 v56, 15, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v92, v95, v94
	v_fmac_f32_e32 v95, v96, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v92, v95, v94
	v_div_fmas_f32 v92, v92, v93, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v57, v92, v70, v55
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v55, 15, v1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v57, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v70, v70, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[58:61]
	ds_store_b128 v76, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v1, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v23, v70, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v54, v1
	v_fma_f32 v56, -v0, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v56, v1
	v_fma_f32 v0, -v0, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v55, v0, v1, v55
	v_div_scale_f32 v0, null, v70, v70, v20
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v20, v70, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v54, v1
	v_fma_f32 v57, -v0, v56, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v1
	v_fma_f32 v0, -v0, v56, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v56, v0, v1, v56
	v_div_scale_f32 v0, null, v70, v70, v21
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v21, v70, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v54, v1
	v_fma_f32 v58, -v0, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v1
	v_fma_f32 v0, -v0, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v57, v0, v1, v57
	v_div_scale_f32 v0, null, v70, v70, v22
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v54, v1
	v_div_scale_f32 v54, vcc_lo, v22, v70, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v54, v1
	v_fma_f32 v59, -v0, v58, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v1
	v_fma_f32 v0, -v0, v58, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v58, v0, v1, v58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v73, 0x40e00000, v72
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v63.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 1, v63
	v_add3_u32 v1, v0, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v54, 0xffff0000, v1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v69.l
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v0
	v_fma_f32 v60, -v0, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v60, v59
	v_div_scale_f32 v60, vcc_lo, v52, v54, v52
	v_mul_f32_e32 v61, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v0, v61, v60
	v_fmac_f32_e32 v61, v72, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v61, v60
	v_div_fmas_f32 v0, v0, v59, v61
	v_div_scale_f32 v59, null, v54, v54, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v60, v59
	v_fma_f32 v61, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v51, v54, v51
	v_mul_f32_e32 v72, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v59, v72, v61
	v_fmac_f32_e32 v72, v73, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v72, v61
	v_div_fmas_f32 v72, v59, v60, v72
	v_div_scale_f32 v59, null, v54, v54, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v60, v59
	v_fma_f32 v61, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v49, v54, v49
	v_mul_f32_e32 v73, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v59, v73, v61
	v_fmac_f32_e32 v73, v87, v60
	v_div_fixup_f32 v0, v0, v54, v52
	v_div_fixup_f32 v51, v72, v54, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v59, v73, v61
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v59, v60, v73
	v_div_scale_f32 v59, null, v54, v54, v50
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v52, v73, v54, v49
	v_rcp_f32_e32 v60, v59
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v49, v49, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v59, v60, 1.0
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v50, v54, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v61, v60
	v_fma_f32 v88, -v59, v87, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v60
	v_fma_f32 v59, -v59, v87, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v59, v60, v87
	v_div_scale_f32 v59, null, v54, v54, v19
	v_div_fixup_f32 v72, v87, v54, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v60, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v49
	v_and_b32_e32 v49, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v52
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v19, v54, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v59, v88, v61
	v_fmac_f32_e32 v88, v89, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v88, v61
	v_div_fmas_f32 v59, v59, v60, v88
	v_div_scale_f32 v60, null, v54, v54, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v19, v59, v54, v19
	v_rcp_f32_e32 v61, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v60, v61, 1.0
	v_fmac_f32_e32 v61, v88, v61
	v_div_scale_f32 v88, vcc_lo, v18, v54, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v88, v61
	v_fma_f32 v90, -v60, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v61
	v_fma_f32 v60, -v60, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v60, v60, v61, v89
	v_div_scale_f32 v61, null, v54, v54, v17
	v_div_fixup_f32 v18, v60, v54, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v61
	v_fma_f32 v89, -v61, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v17, v54, v17
	v_mul_f32_e32 v90, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v61, v90, v89
	v_fmac_f32_e32 v90, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v61, v90, v89
	v_div_fmas_f32 v61, v61, v88, v90
	v_div_scale_f32 v88, null, v54, v54, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v17, v61, v54, v17
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v16, v54, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v99, v88, v89, v91
	v_div_scale_f32 v88, null, v54, v54, v45
	v_div_fixup_f32 v16, v99, v54, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v45, v54, v45
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v91, v90
	v_div_fmas_f32 v88, v88, v89, v91
	v_div_scale_f32 v89, null, v54, v54, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v88, v54, v45
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v89, v90, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v48, v54, v48
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v89, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_scale_f32 v90, null, v54, v54, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v45, v89, v54, v48
	v_rcp_f32_e32 v91, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v45, v45
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v48, v48, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v45, v45, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v90, v91, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v47, v54, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v93, v92, v91 :: v_dual_and_b32 v52, 15, v48
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v54, v54, v46
	v_div_fixup_f32 v47, v90, v54, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v46, v54, v46
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v91, v94, v93
	v_fmac_f32_e32 v94, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v48, v91, v54, v46
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v46, v45
	v_and_b32_e32 v45, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v47
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[87:90], v65
	ds_load_b128 v[91:94], v65 offset:1024
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v46, 15, v46
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v47, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v48, 15, v0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v62, 0x40e00000, v2
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[49:52]
	ds_store_b128 v76, v[45:48] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v63.l, v0.h
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v63
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v0
	v_fma_f32 v46, -v0, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, vcc_lo, v15, v54, v15
	v_mul_f32_e32 v47, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v0, v47, v46
	v_fmac_f32_e32 v47, v48, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v47, v46
	v_div_fmas_f32 v0, v0, v45, v47
	v_div_scale_f32 v45, null, v54, v54, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v54, v15
	v_rcp_f32_e32 v46, v45
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v15, v15, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v47, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v12, v54, v12
	v_dual_mul_f32 v48, v47, v46 :: v_dual_and_b32 v15, 15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v45, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v48, v47
	v_div_fmas_f32 v62, v45, v46, v48
	v_div_scale_f32 v45, null, v54, v54, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v47, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v13, v54, v13
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v45, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v48, v47
	v_div_fmas_f32 v63, v45, v46, v48
	v_div_scale_f32 v45, null, v54, v54, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v47, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, vcc_lo, v14, v54, v14
	v_mul_f32_e32 v48, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v45, v48, v47
	v_fmac_f32_e32 v48, v49, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v48, v47
	v_div_fmas_f32 v72, v45, v46, v48
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v45, 0xffff0000, v2
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v68.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v46, null, v45, v45, v44
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v44, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v46, v46, v47, v49
	v_div_scale_f32 v47, null, v45, v45, v43
	v_rcp_f32_e32 v48, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v47, v48, 1.0
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v43, v45, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v50, v49, v48
	v_fma_f32 v51, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v51, v48
	v_fma_f32 v47, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v47, v47, v48, v50
	v_div_scale_f32 v48, null, v45, v45, v41
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v48, v49, 1.0
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, vcc_lo, v41, v45, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v51, v50, v49
	v_fma_f32 v52, -v48, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v52, v49
	v_fma_f32 v48, -v48, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v48, v48, v49, v51
	v_div_scale_f32 v49, null, v45, v45, v42
	v_rcp_f32_e32 v50, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v49, v50, 1.0
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v42, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v52, v51, v50
	v_fma_f32 v73, -v49, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v73, v50
	v_fma_f32 v49, -v49, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v49, v49, v50, v52
	v_div_scale_f32 v50, null, v45, v45, v11
	v_rcp_f32_e32 v51, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v50, v51, 1.0
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v11, v45, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v52, v51
	v_fma_f32 v95, -v50, v73, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v95, v51
	v_fma_f32 v50, -v50, v73, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v73, v50, v51, v73
	v_div_scale_f32 v50, null, v45, v45, v10
	v_rcp_f32_e32 v51, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v50, v51, 1.0
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v10, v45, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v52, v51
	v_fma_f32 v96, -v50, v95, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v51
	v_fma_f32 v50, -v50, v95, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v100, v50, v51, v95
	v_div_scale_f32 v50, null, v45, v45, v8
	v_rcp_f32_e32 v51, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v50, v51, 1.0
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v8, v45, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v52, v51
	v_fma_f32 v96, -v50, v95, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v51
	v_fma_f32 v50, -v50, v95, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v101, v50, v51, v95
	v_div_scale_f32 v50, null, v45, v45, v7
	v_rcp_f32_e32 v51, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v50, v51, 1.0
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v7, v45, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v52, v51
	v_fma_f32 v96, -v50, v95, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v51
	v_fma_f32 v50, -v50, v95, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v102, v50, v51, v95
	v_div_scale_f32 v50, null, v45, v45, v37
	v_rcp_f32_e32 v51, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v50, v51, 1.0
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v37, v45, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v52, v51
	v_fma_f32 v96, -v50, v95, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v51
	v_fma_f32 v50, -v50, v95, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v50, v50, v51, v95
	v_div_scale_f32 v51, null, v45, v45, v40
	v_rcp_f32_e32 v52, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v51, v52, 1.0
	v_fmac_f32_e32 v52, v95, v52
	v_div_scale_f32 v95, vcc_lo, v40, v45, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v96, v95, v52
	v_fma_f32 v97, -v51, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v97, v52
	v_fma_f32 v51, -v51, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v51, v51, v52, v96
	v_div_scale_f32 v52, null, v45, v45, v39
	v_rcp_f32_e32 v95, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v52, v95, 1.0
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, vcc_lo, v39, v45, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v97, v96, v95
	v_fma_f32 v98, -v52, v97, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v97, v98, v95
	v_fma_f32 v52, -v52, v97, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v52, v52, v95, v97
	v_div_scale_f32 v95, null, v45, v45, v38
	v_rcp_f32_e32 v96, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v97, -v95, v96, 1.0
	v_fmac_f32_e32 v96, v97, v96
	v_div_scale_f32 v97, vcc_lo, v38, v45, v38
	v_div_fixup_f32 v44, v46, v45, v44
	v_div_fixup_f32 v43, v47, v45, v43
	v_div_fixup_f32 v46, v48, v45, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v98, v97, v96
	v_div_fixup_f32 v47, v49, v45, v42
	v_div_fixup_f32 v37, v50, v45, v37
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v103, -v95, v98, v97
	v_div_fixup_f32 v40, v51, v45, v40
	v_div_fixup_f32 v39, v52, v45, v39
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v44
	v_rndne_f32_e32 v44, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v103, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v39, v39
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v95, v98, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v95, v95, v96, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v46, v95, v45, v38
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v40
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v39, v39
	v_and_b32_e32 v41, 15, v41
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v46
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_and_b32_e32 v42, 15, v42
	v_and_b32_e32 v43, 15, v43
	v_and_b32_e32 v44, 15, v44
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_and_b32_e32 v37, 15, v37
	v_and_b32_e32 v39, 15, v39
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[46:49], v65
	ds_load_b128 v[95:98], v65 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v40, v40
	v_and_b32_e32 v38, 15, v38
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v73, v45, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v40, 15, v40
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[41:44]
	ds_store_b128 v76, v[37:40] offset:512
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v86, v53, v33
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v37, v85, v53, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v35
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v38, 15, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v25
	v_rndne_f32_e32 v35, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v35, v35
	v_and_b32_e32 v33, 15, v33
	v_and_b32_e32 v34, 15, v34
	v_and_b32_e32 v36, 15, v36
	v_and_b32_e32 v39, 15, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v35, 15, v35
	v_and_b32_e32 v37, 15, v31
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[41:44], v65
	ds_load_b128 v[50:53], v65 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v31, v75, v70, v32
	v_div_fixup_f32 v32, v55, v70, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v28
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v10, v100, v45, v10
	v_div_fixup_f32 v8, v101, v45, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v32
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v40, 15, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[33:36]
	ds_store_b128 v76, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v65
	ds_load_b128 v[37:40], v65 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v62, v54, v12
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v19
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v12, v12
	v_and_b32_e32 v23, 15, v23
	v_and_b32_e32 v28, 15, v28
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v52, 4, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v102, v45, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v12, 15, v12
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v38, 4, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v56, v70, v20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v37, 4, v33
	v_lshl_or_b32 v26, v39, 4, v35
	v_lshl_or_b32 v33, v40, 4, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v57, v70, v21
	v_div_fixup_f32 v40, v58, v70, v22
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v29
	v_rndne_f32_e32 v29, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v63, v54, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v30
	v_rndne_f32_e32 v30, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v72, v54, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v17
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v17, v16
	v_and_b32_e32 v16, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v38
	v_rndne_f32_e32 v20, v31
	v_rndne_f32_e32 v13, v18
	v_rndne_f32_e32 v31, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_and_b32_e32 v18, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_and_b32_e32 v20, 15, v20
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v21, 15, v21
	v_and_b32_e32 v22, 15, v22
	v_and_b32_e32 v13, 15, v13
	v_and_b32_e32 v14, 15, v14
	v_and_b32_e32 v29, 15, v29
	v_and_b32_e32 v30, 15, v30
	v_and_b32_e32 v31, 15, v31
	v_and_b32_e32 v17, 15, v17
	v_and_b32_e32 v19, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[20:23]
	ds_store_b128 v76, v[28:31] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v65
	ds_load_b128 v[28:31], v65 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[12:15]
	ds_store_b128 v76, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v65
	ds_load_b128 v[16:19], v65 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v53, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v166
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v34, v91, 4, v87
	v_lshl_or_b32 v35, v92, 4, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v93, 4, v89
	v_lshl_or_b32 v37, v94, 4, v90
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v7, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v23, v31, 4, v23
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v21, v29, 4, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v7, 15, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v95, 4, v46
	v_lshl_or_b32 v0, v16, 4, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v12, null, v45, v45, v9
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v17, 4, v13
	v_lshl_or_b32 v17, v18, 4, v14
	v_lshl_or_b32 v18, v50, 4, v41
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v13, v12
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v15, v19, 4, v15
	v_lshl_or_b32 v19, v51, 4, v42
	v_lshl_or_b32 v29, v96, 4, v47
	v_lshl_or_b32 v30, v97, 4, v48
	v_lshl_or_b32 v31, v98, 4, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v14, -v12, v13, 1.0
	v_fmac_f32_e32 v13, v14, v13
	v_div_scale_f32 v14, vcc_lo, v9, v45, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v39, v14, v13
	v_fma_f32 v40, -v12, v39, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v13
	v_fma_f32 v12, -v12, v39, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v12, v12, v13, v39
	v_div_scale_f32 v13, null, v45, v45, v4
	v_div_fixup_f32 v9, v12, v45, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v13
	v_fma_f32 v39, -v13, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v39, v14
	v_div_scale_f32 v39, vcc_lo, v4, v45, v4
	v_mul_f32_e32 v40, v39, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v13, v40, v39
	v_fmac_f32_e32 v40, v41, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v13, v40, v39
	v_div_fmas_f32 v13, v13, v14, v40
	v_div_scale_f32 v14, null, v45, v45, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v12, v13, v45, v4
	v_rcp_f32_e32 v39, v14
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v4, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v4, v4, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v40, -v14, v39, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v5, v45, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v41, v40, v39 :: v_dual_and_b32 v4, 15, v4
	v_fma_f32 v42, -v14, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v14, -v14, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v14, v14, v39, v41
	v_div_scale_f32 v39, null, v45, v45, v6
	v_div_fixup_f32 v13, v14, v45, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v39
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v5, v10
	v_rndne_f32_e32 v10, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v39, v40, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v6, v45, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v5, 15, v5
	v_and_b32_e32 v10, 15, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v43, v40
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v43, 4, v165
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v14, v39, v45, v6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v8
	v_rndne_f32_e32 v8, v9
	v_rndne_f32_e32 v9, v12
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, v43, v3
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v11, v11
	v_and_b32_e32 v6, 15, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 15, v8
	v_and_b32_e32 v9, 15, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v11, 15, v11
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[4:7]
	ds_store_b128 v76, v[8:11] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v65
	ds_load_b128 v[8:11], v65 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v9, 4, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s0, s38, v43
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v10, 4, v6
	v_lshl_or_b32 v42, v11, 4, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s39, 0, s0
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v7, s17, 7, v44
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v8, 4, v4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v4.l, 8, v67.l
	v_and_b16 v4.h, 0xff, v66.l
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[36:37], v[5:6]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v12, s5, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v5.h, v2.l, v1.l
	v_or_b16 v5.l, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v33.l
	v_and_b16 v2.l, 0xff, v26.l
	v_lshlrev_b16 v4.l, 8, v25.l
	v_and_b16 v4.h, 0xff, v24.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 16, v43
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v6.h, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v37.l
	v_or_b16 v6.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v8, vcc_lo
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 48, v43
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v36.l
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v24, 63, v165
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[5:6], v4, s[8:11], 0 offen
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v6, 32, v43
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v4, s0, s38, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v5, null, s39, 0, s0
	v_add_co_u32 v8, s0, s38, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s39, 0, s0
	v_add_co_u32 v10, s0, s38, v10
	v_add_co_ci_u32_e64 v11, null, s39, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[36:37], v[4:5]
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_lshlrev_b16 v4.l, 8, v35.l
	v_and_b16 v4.h, 0xff, v34.l
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[36:37], v[8:9]
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_lshlrev_b16 v5.l, 8, v23.l
	v_and_b16 v5.h, 0xff, v22.l
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, 16, v12
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[10:11]
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_or_b16 v9.h, v5.h, v5.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, 32, v12
	v_mad_u64_u32 v[4:5], null, v4, s5, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v21.l
	v_and_b16 v2.l, 0xff, v20.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, 48, v12
	v_mad_u64_u32 v[12:13], null, v6, s5, v[7:8]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v9.l, v2.l, v1.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v5, s5, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v7, 0x80000000, v4, s3
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v4.h, 0xff, v28.l
	v_lshlrev_b16 v5.l, 8, v15.l
	v_and_b16 v5.h, 0xff, v17.l
	v_lshlrev_b16 v6.l, 8, v16.l
	v_and_b16 v6.h, 0xff, v0.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[8:9], v7, s[8:11], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_cndmask_b32_e64 v0, 0x80000000, v12, s1
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v32.l
	v_lshlrev_b16 v4.l, 8, v19.l
	v_and_b16 v4.h, 0xff, v18.l
	v_lshlrev_b16 v5.l, 8, v42.l
	v_and_b16 v5.h, 0xff, v41.l
	v_lshlrev_b16 v6.l, 8, v40.l
	v_and_b16 v6.h, 0xff, v39.l
	buffer_store_b64 v[7:8], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v0, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v2.l, v1.l
	v_or_b16 v14.l, v4.h, v4.l
	v_or_b16 v15.h, v5.h, v5.l
	v_or_b16 v15.l, v6.h, v6.l
	v_dual_cndmask_b32 v4, 0x80000000, v13 :: v_dual_and_b32 v5, 2, v43
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s1, s18, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v64.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[14:15], v4, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v44
	v_mov_b16_e32 v1.l, v27.h
	v_add3_u32 v0, v0, v5, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s1, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, v24, v3
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v10, s6, s38, v24
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s18, s0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, s39, 0, s6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v165
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[36:37], v[10:11]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cmp_eq_u32_e64 s1, 0, v2
	v_add_lshl_u32 v1, v1, s17, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 192
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 192
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29752
; TotalNumSgprs: 42
; NumVgprs: 256
; ScratchSize: 192
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 192
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 47
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
