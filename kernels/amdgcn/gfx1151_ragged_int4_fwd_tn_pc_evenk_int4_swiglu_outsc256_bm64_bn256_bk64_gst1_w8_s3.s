	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
	v_mov_b32_e32 v160, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v70, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v160
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s20, 0xff
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
	v_rcp_iflag_f32_e32 v0, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v0
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
	s_sub_i32 s6, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s6
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s6, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s5, s3
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s4, s4, 31
	s_mul_i32 s9, s7, s5
	s_add_i32 s17, s7, 1
	s_sub_i32 s16, s8, s9
	s_load_b256 s[8:15], s[0:1], 0x20
	s_sub_i32 s18, s16, s5
	s_cmp_ge_u32 s16, s5
	s_cselect_b32 s7, s17, s7
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s7, 1
	s_cmp_ge_u32 s16, s5
	s_cselect_b32 s5, s17, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s4
	s_sub_i32 s30, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s30, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s6
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s8, s10, s2
	s_addc_u32 s9, s11, s3
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[28:29], s[6:7], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[22:23], s[8:9], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s8, s12, s2
	s_addc_u32 s9, s13, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s14, s2
	s_addc_u32 s3, s15, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[24:25], s[8:9], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[26:27], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s2, s22, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v1, null, s23, 0, s2
	v_add_nc_u32_e32 v4, s22, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[26:27], v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cmp_gt_i32 s21, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s22, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x40
	s_load_b128 s[16:19], s[0:1], 0x10
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v169, 15, v160
	v_dual_mov_b32 v10, 0 :: v_dual_lshlrev_b32 v1, 1, v160
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v170, 0x80, v160
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v151, 0
	v_mov_b32_e32 v133, 0
	v_mov_b32_e32 v131, 0
	s_lshl_b32 s29, s30, 8
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s31, s20, 1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s34, s[0:1], 0x50
	v_lshrrev_b32_e32 v7, 1, v160
	scratch_store_b32 off, v4, off offset:360 ; 4-byte Folded Spill
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_lshrrev_b32_e32 v4, 6, v160
	v_lshrrev_b32_e32 v3, 7, v170
	.loc	1 1058 13                       ; ragged.py:1058:13
	v_add_nc_u32_e32 v147, 0, v169
	v_and_b32_e32 v7, 0x70, v7
	.loc	1 1058 19 is_stmt 0             ; ragged.py:1058:19
	s_mul_i32 s35, s21, s28
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v9, 28, v4
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_or_b32_e32 v12, 20, v4
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_or_b32_e32 v8, 12, v4
	v_add_nc_u32_e32 v149, v147, v7
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_lshlrev_b32_e32 v7, 1, v3
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_and_b32_e32 v0, 0xfe, v1
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_lshl_b32 s5, s5, 8
	s_lshl_b32 s4, s4, 8
	v_or_b32_e32 v13, 22, v3
	v_lshl_add_u32 v7, s35, 1, v7
	v_or_b32_e32 v5, 0x300, v160
	v_or_b32_e32 v6, 0x700, v160
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[237:238], null, v9, s34, v[2:3]
	v_or_b32_e32 v9, 24, v4
	v_or_b32_e32 v10, 0x3f0, v160
	v_or_b32_e32 v11, 0x7f0, v160
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s1, s31, s21
	s_mov_b32 s7, 0x31027000
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_mad_u64_u32 v[130:131], null, s34, v9, v[2:3]
	v_or_b32_e32 v9, 16, v4
	v_mad_u64_u32 v[131:132], null, s34, v12, v[2:3]
	v_add_nc_u32_e32 v12, 61, v7
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[132:133], null, s34, v9, v[2:3]
	v_mad_u64_u32 v[133:134], null, v8, s34, v[2:3]
	v_mul_lo_u32 v8, s20, v12
	v_or_b32_e32 v9, 8, v4
	v_or_b32_e32 v12, 4, v4
	.loc	1 1068 35                       ; ragged.py:1068:35
	s_mul_i32 s1, s1, s28
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_mad_u64_u32 v[134:135], null, s34, v9, v[2:3]
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v8, v8, s5, v0
	v_mad_u64_u32 v[135:136], null, s34, v12, v[2:3]
	v_or_b32_e32 v12, 30, v3
	v_add_nc_u32_e32 v9, 57, v7
	v_mad_u64_u32 v[136:137], null, s34, v4, v[2:3]
	v_subrev_nc_u32_e32 v4, s4, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v8, s20, v12
	v_mul_lo_u32 v9, s20, v9
	v_add_nc_u32_e32 v2, 53, v7
	v_or_b32_e32 v12, 28, v3
	v_add_nc_u32_e32 v4, 1, v4
	.loc	1 1058 13 is_stmt 0             ; ragged.py:1058:13
	s_mov_b32 s0, 0
	s_add_u32 s3, s1, s20
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_mul_lo_u32 v2, s20, v2
	v_lshlrev_b32_e32 v8, 1, v8
	scratch_store_b32 off, v4, off offset:196 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 49, v7
	v_add3_u32 v9, v9, s5, v0
	v_mul_lo_u32 v12, s20, v12
	s_lshl_b32 s33, s34, 5
	s_lshl_b32 s34, s20, 6
	v_mul_lo_u32 v4, s20, v4
	v_subrev_nc_u32_e32 v9, s4, v9
	v_add3_u32 v2, v2, s5, v0
	s_mov_b32 s35, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v9, 1, v9
	v_subrev_nc_u32_e32 v2, s4, v2
	v_add3_u32 v4, v4, s5, v0
	scratch_store_b32 off, v8, off offset:200 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v8, 45, v7
	v_add_nc_u32_e32 v2, 1, v2
	scratch_store_b32 off, v9, off offset:204 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v9, 1, v12
	v_subrev_nc_u32_e32 v4, s4, v4
	v_or_b32_e32 v12, 24, v3
	v_mul_lo_u32 v8, s20, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v4, 1, v4
	scratch_store_b32 off, v9, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v9, 26, v3
	v_mul_lo_u32 v12, s20, v12
	v_add3_u32 v8, v8, s5, v0
	v_mul_lo_u32 v9, s20, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v8, s4, v8
	v_lshlrev_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v9, 1, v9
	scratch_store_b32 off, v2, off offset:212 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 41, v7
	v_add_nc_u32_e32 v8, 1, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:220
	scratch_store_b32 off, v9, off offset:216
	v_add_nc_u32_e32 v9, 37, v7
	v_mul_lo_u32 v2, s20, v2
	v_mul_lo_u32 v4, s20, v13
	v_or_b32_e32 v13, 18, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v9, s20, v9
	v_mul_lo_u32 v13, s20, v13
	v_add3_u32 v2, v2, s5, v0
	v_lshlrev_b32_e32 v4, 1, v4
	scratch_store_b32 off, v12, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v12, 20, v3
	v_add3_u32 v9, v9, s5, v0
	v_subrev_nc_u32_e32 v2, s4, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 1, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:228
	scratch_store_b32 off, v169, off offset:348
	v_add_nc_u32_e32 v8, 33, v7
	scratch_store_b32 off, v2, off offset:236 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v2, s4, v9
	v_or_b32_e32 v9, 16, v3
	v_mul_lo_u32 v8, s20, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v2, 1, v2
	scratch_store_b32 off, v4, off offset:232 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s20, v12
	v_add_nc_u32_e32 v12, 29, v7
	v_mul_lo_u32 v9, s20, v9
	v_add3_u32 v8, v8, s5, v0
	scratch_store_b32 off, v2, off offset:244 ; 4-byte Folded Spill
	v_mul_lo_u32 v12, s20, v12
	v_lshlrev_b32_e32 v4, 1, v4
	v_subrev_nc_u32_e32 v2, s4, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v8, v12, s5, v0
	v_lshlrev_b32_e32 v12, 1, v13
	scratch_store_b32 off, v4, off offset:240 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 1, v2
	v_or_b32_e32 v13, 10, v3
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v12, off offset:248
	scratch_store_b32 off, v170, off offset:352
	scratch_store_b32 off, v2, off offset:252
	v_add_nc_u32_e32 v12, 21, v7
	v_lshlrev_b32_e32 v2, 1, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_lo_u32 v9, s20, v12
	v_or_b32_e32 v12, 12, v3
	v_mul_lo_u32 v12, s20, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v12, 1, v12
	scratch_store_b32 off, v2, off offset:256 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v2, s4, v8
	v_or_b32_e32 v8, 14, v3
	v_add_nc_u32_e32 v2, 1, v2
	scratch_store_b32 off, v1, off offset:356 ; 4-byte Folded Spill
	.loc	1 1068 35 is_stmt 1             ; ragged.py:1068:35
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v4, 25, v7
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add3_u32 v9, v9, s5, v0
	v_add_nc_u32_e32 v14, 13, v7
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v148, s29, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v47, v1
	.loc	1 1058 19                       ; ragged.py:1058:19
	scratch_store_b32 off, v2, off offset:260 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, s20, v8
	v_dual_mov_b32 v49, v1 :: v_dual_add_nc_u32 v8, 17, v7
	v_mov_b32_e32 v35, v1
	v_mul_lo_u32 v4, s20, v4
	v_mov_b32_e32 v53, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v8, s20, v8
	v_dual_mov_b32 v67, v1 :: v_dual_lshlrev_b32 v2, 1, v2
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v63, v1
	v_add3_u32 v4, v4, s5, v0
	v_mov_b32_e32 v57, v1
	v_add3_u32 v8, v8, s5, v0
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v59, v1
	v_subrev_nc_u32_e32 v4, s4, v4
	v_mov_b32_e32 v71, v1
	v_subrev_nc_u32_e32 v8, s4, v8
	v_mov_b32_e32 v95, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v8, 1, v8
	scratch_store_b32 off, v2, off offset:264 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 1, v4
	v_mul_lo_u32 v4, s20, v13
	v_or_b32_e32 v13, 8, v3
	scratch_store_b32 off, v8, off offset:284 ; 4-byte Folded Spill
	v_mov_b32_e32 v69, v1
	v_mov_b32_e32 v65, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_dual_mov_b32 v21, v1 :: v_dual_lshlrev_b32 v4, 1, v4
	scratch_store_b32 off, v2, off offset:268 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v2, s4, v9
	v_mul_lo_u32 v9, s20, v14
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v22, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v2, 1, v2
	scratch_store_b32 off, v12, off offset:272 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v12, 9, v7
	v_mov_b32_e32 v24, v1
	v_add3_u32 v9, v9, s5, v0
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mul_lo_u32 v12, s20, v12
	v_mov_b32_e32 v27, v1
	v_subrev_nc_u32_e32 v8, s4, v9
	v_mov_b32_e32 v83, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_add_nc_u32_e32 v8, 1, v8
	scratch_store_b32 off, v2, off offset:276 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, s20, v13
	v_add3_u32 v9, v12, s5, v0
	v_or_b32_e32 v12, 2, v3
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v73, v1
	v_subrev_nc_u32_e32 v9, s4, v9
	v_lshlrev_b32_e32 v2, 1, v2
	scratch_store_b32 off, v4, off offset:280 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 5, v7
	v_mul_lo_u32 v7, s20, v7
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v85, v1
	v_mul_lo_u32 v4, s20, v4
	v_mov_b32_e32 v75, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v87, v1
	v_mov_b32_e32 v77, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_add3_u32 v4, v4, s5, v0
	s_add_i32 s5, s5, s20
	v_mov_b32_e32 v89, v1
	v_add3_u32 v0, s5, v7, v0
	v_mul_lo_u32 v7, s20, v12
	v_subrev_nc_u32_e32 v4, s4, v4
	v_mov_b32_e32 v79, v1
	v_mov_b32_e32 v91, v1
	v_subrev_nc_u32_e32 v0, s4, v0
	v_mov_b32_e32 v81, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v93, v1
	v_mov_b32_e32 v40, v1
	v_add_nc_u32_e32 v0, 1, v0
	scratch_store_b32 off, v2, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 6, v3
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_mov_b32_e32 v43, v1
	v_mul_lo_u32 v2, s20, v2
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v54, v1
	v_lshlrev_b32_e32 v2, 1, v2
	scratch_store_b32 off, v8, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v8, 4, v3
	v_mul_lo_u32 v3, s20, v3
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v60, v1
	v_mul_lo_u32 v8, s20, v8
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v64, v1
	v_mov_b32_e32 v66, v1
	v_lshlrev_b32_e32 v0, 1, v3
	scratch_store_b32 off, v2, off offset:296 ; 4-byte Folded Spill
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v2, 1, v9
	v_mov_b32_e32 v9, v1
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v5
	scratch_store_b32 off, v2, off offset:300 ; 4-byte Folded Spill
	v_dual_mov_b32 v5, v1 :: v_dual_lshlrev_b32 v2, 1, v8
	v_mov_b32_e32 v8, v1
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	scratch_store_b32 off, v2, off offset:304 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 1, v4
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v10
	scratch_store_b32 off, v2, off offset:308 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v2, 1, v7
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v10, v1
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v11
	scratch_store_b32 off, v2, off offset:312 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v68, v1
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v160
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v70, v1
	v_mov_b32_e32 v72, v1
	v_mov_b32_e32 v74, v1
	v_mov_b32_e32 v76, v1
	v_mov_b32_e32 v78, v1
	v_mov_b32_e32 v80, v1
	v_mov_b32_e32 v82, v1
	v_mov_b32_e32 v84, v1
	v_mov_b32_e32 v86, v1
	v_mov_b32_e32 v88, v1
	v_mov_b32_e32 v90, v1
	v_mov_b32_e32 v92, v1
	v_mov_b32_e32 v94, v1
	v_mov_b32_e32 v96, v1
	v_mov_b32_e32 v97, v1
	v_mov_b32_e32 v98, v1
	v_mov_b32_e32 v99, v1
	v_mov_b32_e32 v100, v1
	v_mov_b32_e32 v101, v1
	v_mov_b32_e32 v102, v1
	v_mov_b32_e32 v103, v1
	v_mov_b32_e32 v104, v1
	v_mov_b32_e32 v105, v1
	v_mov_b32_e32 v106, v1
	v_mov_b32_e32 v107, v1
	v_mov_b32_e32 v108, v1
	v_mov_b32_e32 v109, v1
	v_mov_b32_e32 v110, v1
	v_mov_b32_e32 v111, v1
	v_mov_b32_e32 v112, v1
	v_mov_b32_e32 v113, v1
	v_mov_b32_e32 v114, v1
	v_mov_b32_e32 v115, v1
	v_mov_b32_e32 v116, v1
	v_mov_b32_e32 v117, v1
	v_mov_b32_e32 v118, v1
	v_mov_b32_e32 v119, v1
	v_mov_b32_e32 v120, v1
	v_mov_b32_e32 v121, v1
	v_mov_b32_e32 v122, v1
	v_mov_b32_e32 v123, v1
	v_mov_b32_e32 v124, v1
	v_mov_b32_e32 v125, v1
	v_mov_b32_e32 v126, v1
	v_mov_b32_e32 v127, v1
	v_dual_mov_b32 v128, v1 :: v_dual_add_nc_u32 v189, v0, v160
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v160, off offset:344
	scratch_store_b32 off, v0, off offset:340
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v0, s22, v136
	v_add_nc_u32_e32 v129, s22, v135
	v_add_nc_u32_e32 v137, s22, v134
	v_add_nc_u32_e32 v139, s22, v132
	v_add_nc_u32_e32 v138, s22, v133
	v_add_nc_u32_e32 v140, s22, v131
	v_add_nc_u32_e32 v141, s22, v130
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_add_nc_u32_e32 v142, s22, v237
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	v_cndmask_b32_e64 v129, 0x80000000, v129, s2
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	s_clause 0x7
	buffer_load_u8 v143, v0, s[4:7], 0 offen
	buffer_load_u8 v144, v129, s[4:7], 0 offen
	buffer_load_u8 v137, v137, s[4:7], 0 offen
	buffer_load_u8 v139, v139, s[4:7], 0 offen
	buffer_load_u8 v140, v140, s[4:7], 0 offen
	buffer_load_u8 v141, v141, s[4:7], 0 offen
	buffer_load_u8 v142, v142, s[4:7], 0 offen
	buffer_load_u8 v138, v138, s[4:7], 0 offen
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v237, s33, v237
	v_add_nc_u32_e32 v130, s33, v130
	v_add_nc_u32_e32 v131, s33, v131
	v_add_nc_u32_e32 v132, s33, v132
	v_add_nc_u32_e32 v133, s33, v133
	v_add_nc_u32_e32 v134, s33, v134
	v_add_nc_u32_e32 v135, s33, v135
	v_add_nc_u32_e32 v136, s33, v136
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s35, s35, 32
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add3_u32 v192, v0, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, s1, v192
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v192, s3, v192
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v211, v0, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v191, v0, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, s1, v191
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v191, s3, v191
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v212, v0, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v129, v0, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, s1, v129
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v129, s3, v129
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v213, v0, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v0, v0, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v145, s1, v0
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v0, s3, v0
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v214, v145, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v145, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v188, v145, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v145, s1, v188
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v188, s3, v188
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v215, v145, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v145, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v187, v145, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v145, s1, v187
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v187, s3, v187
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v216, v145, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v145, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v186, v145, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v145, s1, v186
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v186, s3, v186
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v217, v145, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v145, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v185, v145, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v145, s1, v185
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v185, s3, v185
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v218, v145, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v145, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v184, v145, s0, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v145, s1, v184
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v219, v145, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v145, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v183, v145, s0, v148
	v_add_nc_u32_e32 v145, s1, v183
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v220, v145, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v145, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v182, v145, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v145, s1, v182
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v182, s3, v182
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v221, v145, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v145, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v181, v145, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v145, s1, v181
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v181, s3, v181
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v222, v145, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v145, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v180, v145, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v145, s1, v180
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v180, s3, v180
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v223, v145, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v145, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v179, v145, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v145, s1, v179
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v179, s3, v179
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v224, v145, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v145, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v178, v145, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v145, s1, v178
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v178, s3, v178
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v225, v145, s[12:15], 0 offen
	.loc	1 1070 38 is_stmt 0             ; ragged.py:1070:38
	scratch_load_b32 v145, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v177, v145, s0, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v145, s1, v177
	.loc	1 1096 25 is_stmt 1             ; ragged.py:1096:25
	v_add_nc_u32_e32 v177, s3, v177
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u16 v226, v145, s[12:15], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v145, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v145, v143
	ds_store_b8 v145, v144 offset:256
	ds_store_b8 v145, v137 offset:512
	ds_store_b8 v145, v139 offset:1024
	ds_store_b8 v145, v140 offset:1280
	scratch_load_b32 v137, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v137, v138
	ds_store_b8 v145, v141 offset:1536
	scratch_load_b32 v137, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v137, v142
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v137, v147 offset:320
	ds_load_u8 v138, v147 offset:256
	ds_load_u8 v143, v147 offset:336
	ds_load_u8 v144, v147 offset:272
	ds_load_u8 v141, v147 offset:352
	ds_load_u8 v142, v147 offset:288
	ds_load_u8 v139, v147 offset:368
	ds_load_u8 v140, v147 offset:304
	scratch_load_b32 v227, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v147 offset:448
	ds_load_u8 v145, v147 offset:384
	ds_load_u8 v198, v147 offset:464
	ds_load_u8 v199, v147 offset:400
	ds_load_u8 v195, v147 offset:480
	ds_load_u8 v196, v147 offset:416
	ds_load_u8 v193, v147 offset:496
	ds_load_u8 v194, v147 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v138, v145, v138, 0xc0c0004
	ds_load_u8 v145, v147 offset:64
	ds_load_u8 v146, v147
	ds_load_u8 v203, v147 offset:80
	ds_load_u8 v201, v147 offset:96
	ds_load_u8 v197, v147 offset:112
	ds_load_u8 v206, v147 offset:16
	ds_load_u8 v202, v147 offset:32
	ds_load_u8 v200, v147 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v144, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v142, v196, v195, 0xc0c0004
	v_lshl_or_b32 v138, v138, 16, v137
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v140, v194, v193, 0xc0c0004
	v_lshl_or_b32 v144, v144, 16, v143
	v_lshl_or_b32 v142, v142, 16, v141
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v140, v140, 16, v139
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v147 offset:192
	ds_load_u8 v150, v147 offset:128
	ds_load_u8 v209, v147 offset:208
	ds_load_u8 v210, v147 offset:144
	ds_load_u8 v207, v147 offset:224
	ds_load_u8 v208, v147 offset:160
	ds_load_u8 v204, v147 offset:240
	ds_load_u8 v205, v147 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v198, v206, v203, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v195, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v193, v200, v197, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v146, v150, v146, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v199, v210, v209, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v196, v208, v207, 0xc0c0004
	v_lshl_or_b32 v137, v146, 16, v145
	ds_load_u8 v155, v147 offset:960
	ds_load_u8 v159, v147 offset:896
	ds_load_u8 v145, v147 offset:1024
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v194, v205, v204, 0xc0c0004
	v_lshl_or_b32 v143, v199, 16, v198
	v_lshl_or_b32 v141, v196, 16, v195
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v139, v194, 16, v193
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v145, off offset:128 ; 4-byte Folded Spill
	ds_load_u8 v160, v147 offset:976
	ds_load_u8 v150, v147 offset:912
	ds_load_u8 v255, v147 offset:992
	ds_load_u8 v190, v147 offset:928
	ds_load_u8 v254, v147 offset:944
	ds_load_u8 v166, v147 offset:832
	ds_load_u8 v168, v147 offset:768
	ds_load_u8 v153, v147 offset:848
	ds_load_u8 v156, v147 offset:784
	ds_load_u8 v145, v147 offset:864
	ds_load_u8 v151, v147 offset:800
	ds_load_u8 v146, v147 offset:880
	ds_load_u8 v158, v147 offset:816
	ds_load_u8 v171, v147 offset:704
	ds_load_u8 v173, v147 offset:640
	ds_load_u8 v162, v147 offset:720
	ds_load_u8 v163, v147 offset:656
	ds_load_u8 v157, v147 offset:736
	ds_load_u8 v161, v147 offset:672
	ds_load_u8 v152, v147 offset:752
	ds_load_u8 v154, v147 offset:688
	ds_load_u8 v174, v147 offset:576
	ds_load_u8 v175, v147 offset:512
	ds_load_u8 v170, v147 offset:592
	ds_load_u8 v172, v147 offset:528
	ds_load_u8 v167, v147 offset:608
	ds_load_u8 v169, v147 offset:544
	ds_load_u8 v164, v147 offset:624
	ds_load_u8 v165, v147 offset:560
	ds_load_u8 v176, v147 offset:1216
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v146, v158, v146, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v176, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1280
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v176, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v176, off offset:148 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v176, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v176, off offset:140 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v176, off offset:144 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v176, off offset:132 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v176, off offset:136 ; 4-byte Folded Spill
	ds_load_u8 v241, v147 offset:1152
	ds_load_u8 v245, v147 offset:1088
	ds_load_u8 v176, v147 offset:1104
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v176, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v176, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v176, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1056
	s_waitcnt vmcnt(0)
	ds_load_u8 v227, v227
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v176, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1136
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v227, off        ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1968
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v176, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1072
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v227, off offset:4 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1920
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v176, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v250, v147 offset:1472
	ds_load_u8 v176, v147 offset:1536
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v227, off offset:84 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1856
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v176, off offset:8 ; 4-byte Folded Spill
	ds_load_u8 v242, v147 offset:1488
	ds_load_u8 v243, v147 offset:1424
	ds_load_u8 v239, v147 offset:1504
	ds_load_u8 v240, v147 offset:1440
	ds_load_u8 v176, v147 offset:1520
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v227, off offset:96 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1872
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v176, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1456
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v227, off offset:48 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1808
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v176, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v252, v147 offset:1408
	ds_load_u8 v253, v147 offset:1344
	ds_load_u8 v249, v147 offset:1360
	ds_load_u8 v251, v147 offset:1296
	ds_load_u8 v247, v147 offset:1376
	ds_load_u8 v248, v147 offset:1312
	ds_load_u8 v244, v147 offset:1392
	ds_load_u8 v246, v147 offset:1328
	ds_load_u8 v176, v147 offset:1984
	s_waitcnt lgkmcnt(9)
	scratch_store_b32 off, v227, off offset:60 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1888
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v176, off offset:56 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:2000
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v227, off offset:36 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1824
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v176, off offset:20 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1936
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v227, off offset:40 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1904
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v176, off offset:28 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:2016
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v227, off offset:24 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1840
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v176, off offset:12 ; 4-byte Folded Spill
	ds_load_u8 v176, v147 offset:1952
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v227, off offset:32 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1728
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v176, off offset:16 ; 4-byte Folded Spill
	scratch_load_b32 v176, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1792
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:116 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:72 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:76 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:64 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:68 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:44 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:52 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1664
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:120 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1600
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:124 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1616
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:104 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1552
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:112 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:92 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:100 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:80 ; 4-byte Folded Spill
	ds_load_u8 v227, v147 offset:1584
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v227, off offset:88 ; 4-byte Folded Spill
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(0)
	ds_load_u8 v176, v176
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v189, v211
	ds_store_b16 v189, v212 offset:512
	ds_store_b16 v189, v213 offset:1024
	ds_store_b16 v189, v214 offset:1536
	ds_store_b16 v189, v215 offset:2048
	ds_store_b16 v189, v216 offset:2560
	ds_store_b16 v189, v217 offset:3072
	ds_store_b16 v189, v218 offset:3584
	ds_store_b16 v189, v219 offset:4096
	ds_store_b16 v189, v220 offset:4608
	ds_store_b16 v189, v221 offset:5120
	ds_store_b16 v189, v222 offset:5632
	ds_store_b16 v189, v223 offset:6144
	ds_store_b16 v189, v224 offset:6656
	ds_store_b16 v189, v225 offset:7168
	ds_store_b16 v189, v226 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v197, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v211, v149 offset:1280
	ds_load_u8 v212, v149 offset:1024
	ds_load_u8 v213, v149 offset:1920
	ds_load_u8 v214, v149 offset:1664
	ds_load_u8 v215, v149 offset:1408
	ds_load_u8 v216, v149 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v211, v212, v211, 0xc0c0004
	ds_load_u8 v212, v149 offset:1792
	ds_load_u8 v217, v149 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v194, v214, v213, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v193, v216, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v194, v194, 16, v193
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v212, v217, v212, 0xc0c0004
	ds_load_u8 v217, v149 offset:256
	ds_load_u8 v218, v149
	ds_load_u8 v219, v149 offset:896
	ds_load_u8 v220, v149 offset:640
	ds_load_u8 v221, v149 offset:384
	ds_load_u8 v222, v149 offset:128
	v_lshl_or_b32 v212, v212, 16, v211
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	ds_load_u8 v218, v149 offset:768
	ds_load_u8 v223, v149 offset:512
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v196, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v195, v222, v221, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v196, 16, v195
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v195, off, off offset:300
	scratch_load_b32 v196, off, off offset:292
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[193:194], v[137:138], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[193:194], v[143:144], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[193:194], v[141:142], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[193:194], v[139:140], v[121:128] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v193, off, off offset:316
	scratch_load_b32 v194, off, off offset:308
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v223, v218, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v211, v218, 16, v217
	v_wmma_i32_16x16x16_iu4 v[65:72], v[211:212], v[137:138], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[211:212], v[143:144], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[211:212], v[141:142], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[211:212], v[139:140], v[113:120] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v197, s0, v197
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x2
	buffer_load_u8 v197, v197, s[12:15], 0 offen
	buffer_load_u8 v198, v0, s[12:15], 0 offen
	buffer_load_u8 v188, v188, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v193, s0, v193
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x1
	buffer_load_u8 v193, v193, s[12:15], 0 offen
	buffer_load_u8 v192, v192, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s0, v0
	.loc	1 1095 35                       ; ragged.py:1095:35
	buffer_load_u8 v199, v0, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v194, s0, v194
	.loc	1 1095 35                       ; ragged.py:1095:35
	buffer_load_u8 v194, v194, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s0, v0
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x2
	buffer_load_u8 v200, v0, s[12:15], 0 offen
	buffer_load_u8 v187, v187, s[12:15], 0 offen
	buffer_load_u8 v186, v186, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v195, s0, v195
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x2
	buffer_load_u8 v195, v195, s[12:15], 0 offen
	buffer_load_u8 v191, v191, s[12:15], 0 offen
	buffer_load_u8 v129, v129, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s0, v0
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x1
	buffer_load_u8 v201, v0, s[12:15], 0 offen
	buffer_load_u8 v185, v185, s[12:15], 0 offen
	v_lshlrev_b16 v0.l, 8, v193.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v208.l, v192.l, v0.l
	v_lshlrev_b16 v0.l, 8, v194.l
	s_waitcnt vmcnt(3)
	v_or_b16 v208.h, v191.l, v0.l
	v_lshlrev_b16 v0.l, 8, v195.l
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v209.l, v129.l, v0.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v129, s3, v183
	scratch_load_b32 v183, off, off offset:252 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v196, s0, v196
	.loc	1 1095 35                       ; ragged.py:1095:35
	buffer_load_u8 v196, v196, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v183, s0, v183
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v0.l, 8, v196.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v209.h, v198.l, v0.l
	v_lshlrev_b16 v0.l, 8, v197.l
	v_or_b16 v210.l, v188.l, v0.l
	v_lshlrev_b16 v0.l, 8, v199.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v210.h, v187.l, v0.l
	v_lshlrev_b16 v0.l, 8, v200.l
	v_or_b16 v211.l, v186.l, v0.l
	v_lshlrev_b16 v0.l, 8, v201.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v211.h, v185.l, v0.l
	.loc	1 1096 25                       ; ragged.py:1096:25
	v_add_nc_u32_e32 v0, s3, v184
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x1
	buffer_load_u8 v183, v183, s[12:15], 0 offen
	buffer_load_u8 v184, v0, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	.loc	1 1095 35                       ; ragged.py:1095:35
	buffer_load_u8 v185, v0, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x2
	buffer_load_u8 v186, v0, s[12:15], 0 offen
	buffer_load_u8 v129, v129, s[12:15], 0 offen
	buffer_load_u8 v182, v182, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	.loc	1 1095 35                       ; ragged.py:1095:35
	buffer_load_u8 v187, v0, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x2
	buffer_load_u8 v188, v0, s[12:15], 0 offen
	buffer_load_u8 v181, v181, s[12:15], 0 offen
	buffer_load_u8 v180, v180, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	.loc	1 1095 35                       ; ragged.py:1095:35
	buffer_load_u8 v191, v0, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x2
	buffer_load_u8 v192, v0, s[12:15], 0 offen
	buffer_load_u8 v179, v179, s[12:15], 0 offen
	buffer_load_u8 v178, v178, s[12:15], 0 offen
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s0, v0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_add_i32 s0, s0, s34
	s_cmp_lt_i32 s35, s21
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x1
	buffer_load_u8 v193, v0, s[12:15], 0 offen
	buffer_load_u8 v177, v177, s[12:15], 0 offen
	v_lshlrev_b16 v0.l, 8, v183.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v212.l, v184.l, v0.l
	v_lshlrev_b16 v0.l, 8, v185.l
	v_or_b16 v212.h, v129.l, v0.l
	v_lshlrev_b16 v0.l, 8, v186.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v213.l, v182.l, v0.l
	v_lshlrev_b16 v0.l, 8, v187.l
	v_or_b16 v213.h, v181.l, v0.l
	v_lshlrev_b16 v0.l, 8, v188.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v214.l, v180.l, v0.l
	v_lshlrev_b16 v0.l, 8, v191.l
	v_or_b16 v214.h, v179.l, v0.l
	v_lshlrev_b16 v0.l, 8, v192.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v215.l, v178.l, v0.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v0.l, 8, v193.l
	s_waitcnt vmcnt(0)
	v_or_b16 v215.h, v177.l, v0.l
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v216, v149 offset:3328
	ds_load_u8 v217, v149 offset:3072
	ds_load_u8 v218, v149 offset:3840
	ds_load_u8 v219, v149 offset:3584
	ds_load_u8 v220, v149 offset:3968
	ds_load_u8 v221, v149 offset:3712
	ds_load_u8 v222, v149 offset:3456
	ds_load_u8 v223, v149 offset:3200
	ds_load_u8 v224, v149 offset:2304
	ds_load_u8 v225, v149 offset:2048
	ds_load_u8 v226, v149 offset:2816
	ds_load_u8 v227, v149 offset:2560
	ds_load_u8 v228, v149 offset:2944
	ds_load_u8 v229, v149 offset:2688
	ds_load_u8 v230, v149 offset:2432
	ds_load_u8 v231, v149 offset:2176
	ds_load_u8 v201, v149 offset:5376
	ds_load_u8 v202, v149 offset:5120
	ds_load_u8 v203, v149 offset:5888
	ds_load_u8 v204, v149 offset:5632
	ds_load_u8 v193, v149 offset:6016
	ds_load_u8 v194, v149 offset:5760
	ds_load_u8 v195, v149 offset:5504
	ds_load_u8 v196, v149 offset:5248
	ds_load_u8 v205, v149 offset:4352
	ds_load_u8 v206, v149 offset:4096
	ds_load_u8 v207, v149 offset:4864
	ds_load_u8 v232, v149 offset:4608
	ds_load_u8 v197, v149 offset:4992
	ds_load_u8 v198, v149 offset:4736
	ds_load_u8 v199, v149 offset:4480
	ds_load_u8 v200, v149 offset:4224
	ds_load_u8 v183, v149 offset:7424
	ds_load_u8 v184, v149 offset:7168
	ds_load_u8 v185, v149 offset:7936
	ds_load_u8 v186, v149 offset:7680
	ds_load_u8 v0, v149 offset:8064
	ds_load_u8 v129, v149 offset:7808
	ds_load_u8 v177, v149 offset:7552
	ds_load_u8 v178, v149 offset:7296
	ds_load_u8 v187, v149 offset:6400
	ds_load_u8 v188, v149 offset:6144
	ds_load_u8 v191, v149 offset:6912
	ds_load_u8 v192, v149 offset:6656
	ds_load_u8 v179, v149 offset:7040
	ds_load_u8 v180, v149 offset:6784
	ds_load_u8 v181, v149 offset:6528
	ds_load_u8 v182, v149 offset:6272
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v189, v208
	ds_store_b16_d16_hi v189, v208 offset:512
	ds_store_b16 v189, v209 offset:1024
	ds_store_b16_d16_hi v189, v209 offset:1536
	ds_store_b16 v189, v210 offset:2048
	ds_store_b16_d16_hi v189, v210 offset:2560
	ds_store_b16 v189, v211 offset:3072
	ds_store_b16_d16_hi v189, v211 offset:3584
	ds_store_b16 v189, v212 offset:4096
	ds_store_b16_d16_hi v189, v212 offset:4608
	ds_store_b16 v189, v213 offset:5120
	ds_store_b16_d16_hi v189, v213 offset:5632
	ds_store_b16 v189, v214 offset:6144
	ds_store_b16_d16_hi v189, v214 offset:6656
	ds_store_b16 v189, v215 offset:7168
	ds_store_b16_d16_hi v189, v215 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v208, v149 offset:1280
	ds_load_u8 v209, v149 offset:1024
	ds_load_u8 v210, v149 offset:1920
	ds_load_u8 v211, v149 offset:1664
	ds_load_u8 v212, v149 offset:1408
	ds_load_u8 v213, v149 offset:1152
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v0, v129, v0, 0xc0c0004
	v_perm_b32 v129, v182, v181, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v208, v209, v208, 0xc0c0004
	ds_load_u8 v209, v149 offset:1792
	ds_load_u8 v214, v149 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v210, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v212, v213, v212, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v211, v210, 16, v212
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v209, v214, v209, 0xc0c0004
	ds_load_u8 v214, v149 offset:256
	ds_load_u8 v215, v149
	ds_load_u8 v233, v149 offset:896
	ds_load_u8 v234, v149 offset:640
	ds_load_u8 v235, v149 offset:384
	ds_load_u8 v236, v149 offset:128
	v_lshl_or_b32 v209, v209, 16, v208
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v214, v215, v214, 0xc0c0004
	ds_load_u8 v215, v149 offset:768
	ds_load_u8 v238, v149 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v213, v236, v235, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v215, v238, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v208, v215, 16, v214
	v_perm_b32 v214, v234, v233, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[208:209], v[137:138], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v210, v214, 16, v213
	v_wmma_i32_16x16x16_iu4 v[49:56], v[208:209], v[139:140], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[208:209], v[141:142], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[208:209], v[143:144], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[210:211], v[137:138], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[210:211], v[139:140], v[57:64] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v137, v168, v166, 0xc0c0004
	v_perm_b32 v138, v159, v155, 0xc0c0004
	v_perm_b32 v139, v175, v174, 0xc0c0004
	v_perm_b32 v140, v173, v171, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[41:48], v[210:211], v[141:142], v[41:48] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v141, v225, v224, 0xc0c0004
	v_perm_b32 v142, v227, v226, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[25:32], v[210:211], v[143:144], v[25:32] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v143, v172, v170, 0xc0c0004
	v_perm_b32 v144, v163, v162, 0xc0c0004
	v_lshl_or_b32 v138, v138, 16, v137
	v_lshl_or_b32 v137, v140, 16, v139
	v_perm_b32 v139, v217, v216, 0xc0c0004
	v_perm_b32 v140, v219, v218, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v140, 16, v139
	v_lshl_or_b32 v139, v142, 16, v141
	v_perm_b32 v141, v156, v153, 0xc0c0004
	v_perm_b32 v142, v150, v160, 0xc0c0004
	v_perm_b32 v150, v161, v157, 0xc0c0004
	v_perm_b32 v153, v229, v228, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[65:72], v[139:140], v[137:138], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v142, v142, 16, v141
	v_lshl_or_b32 v141, v144, 16, v143
	v_perm_b32 v143, v151, v145, 0xc0c0004
	v_perm_b32 v144, v190, v255, 0xc0c0004
	v_perm_b32 v145, v169, v167, 0xc0c0004
	v_perm_b32 v151, v254, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[81:88], v[139:140], v[141:142], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v144, v144, 16, v143
	v_lshl_or_b32 v143, v150, 16, v145
	v_perm_b32 v145, v165, v164, 0xc0c0004
	v_perm_b32 v150, v154, v152, 0xc0c0004
	v_lshl_or_b32 v146, v151, 16, v146
	v_perm_b32 v151, v221, v220, 0xc0c0004
	v_perm_b32 v152, v231, v230, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[97:104], v[139:140], v[143:144], v[97:104] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v150, 16, v145
	v_perm_b32 v150, v223, v222, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[139:140], v[145:146], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v151, v151, 16, v150
	v_lshl_or_b32 v150, v153, 16, v152
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[150:151], v[137:138], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[150:151], v[141:142], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[150:151], v[143:144], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[150:151], v[145:146], v[121:128] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v139, v149 offset:3328
	ds_load_u8 v140, v149 offset:3072
	ds_load_u8 v150, v149 offset:3968
	ds_load_u8 v151, v149 offset:3712
	ds_load_u8 v152, v149 offset:3456
	ds_load_u8 v153, v149 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v149 offset:3840
	ds_load_u8 v154, v149 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v150, 16, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v154, v140, 0xc0c0004
	ds_load_u8 v154, v149 offset:2304
	ds_load_u8 v155, v149 offset:2048
	ds_load_u8 v156, v149 offset:2944
	ds_load_u8 v157, v149 offset:2688
	ds_load_u8 v158, v149 offset:2432
	ds_load_u8 v159, v149 offset:2176
	v_lshl_or_b32 v140, v140, 16, v139
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v149 offset:2816
	ds_load_u8 v160, v149 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v153, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v160, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v139, v155, 16, v154
	v_perm_b32 v154, v157, v156, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[139:140], v[143:144], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v150, v154, 16, v153
	v_wmma_i32_16x16x16_iu4 v[49:56], v[139:140], v[145:146], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[141:142], v[17:24] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v139, off, off offset:128
	scratch_load_b32 v140, off, off offset:176
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[41:48], v[150:151], v[143:144], v[41:48] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v143, off, off offset:172
	scratch_load_b32 v144, off, off offset:180
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[57:64], v[150:151], v[145:146], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[137:138], v[9:16] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	scratch_load_b32 v137, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[25:32], v[150:151], v[141:142], v[25:32] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v138, v252, v250, 0xc0c0004
	v_perm_b32 v141, v206, v205, 0xc0c0004
	v_perm_b32 v142, v232, v207, 0xc0c0004
	v_perm_b32 v153, v198, v197, 0xc0c0004
	s_waitcnt vmcnt(4)
	v_perm_b32 v139, v139, v245, 0xc0c0004
	s_waitcnt vmcnt(3)
	v_perm_b32 v140, v241, v140, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v144, off, off offset:148
	scratch_load_b32 v145, off, off offset:152
	s_waitcnt vmcnt(2)
	v_perm_b32 v137, v137, v253, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v137
	v_lshl_or_b32 v137, v140, 16, v139
	v_perm_b32 v139, v202, v201, 0xc0c0004
	v_perm_b32 v140, v204, v203, 0xc0c0004
	v_lshl_or_b32 v140, v140, 16, v139
	v_lshl_or_b32 v139, v142, 16, v141
	v_perm_b32 v141, v251, v249, 0xc0c0004
	v_perm_b32 v142, v243, v242, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[139:140], v[137:138], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v142, v142, 16, v141
	s_waitcnt vmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v145, off, off offset:164
	scratch_load_b32 v146, off, off offset:168
	v_lshl_or_b32 v141, v144, 16, v143
	v_perm_b32 v143, v248, v247, 0xc0c0004
	v_perm_b32 v144, v240, v239, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[139:140], v[141:142], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v144, v144, 16, v143
	s_waitcnt vmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v146, off, off offset:140
	scratch_load_b32 v150, off, off offset:144
	s_waitcnt vmcnt(0)
	v_perm_b32 v146, v150, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v146, 16, v145
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v146, off, off offset:184
	scratch_load_b32 v150, off, off offset:188
	v_perm_b32 v145, v246, v244, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[97:104], v[139:140], v[143:144], v[97:104] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v146, v150, v146, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v150, off, off offset:156
	scratch_load_b32 v151, off, off offset:160
	v_lshl_or_b32 v146, v146, 16, v145
	s_waitcnt vmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v151, off, off offset:132
	scratch_load_b32 v152, off, off offset:136
	s_waitcnt vmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_perm_b32 v152, v200, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v145, v151, 16, v150
	v_perm_b32 v150, v196, v195, 0xc0c0004
	v_perm_b32 v151, v194, v193, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[113:120], v[139:140], v[145:146], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	v_lshl_or_b32 v150, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[73:80], v[150:151], v[137:138], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[150:151], v[141:142], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[150:151], v[143:144], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[150:151], v[145:146], v[121:128] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v139, v149 offset:5376
	ds_load_u8 v140, v149 offset:5120
	ds_load_u8 v150, v149 offset:6016
	ds_load_u8 v151, v149 offset:5760
	ds_load_u8 v152, v149 offset:5504
	ds_load_u8 v153, v149 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v149 offset:5888
	ds_load_u8 v154, v149 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v150, 16, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v154, v140, 0xc0c0004
	ds_load_u8 v154, v149 offset:4352
	ds_load_u8 v155, v149 offset:4096
	ds_load_u8 v156, v149 offset:4992
	ds_load_u8 v157, v149 offset:4736
	ds_load_u8 v158, v149 offset:4480
	ds_load_u8 v159, v149 offset:4224
	v_lshl_or_b32 v140, v140, 16, v139
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v149 offset:4864
	ds_load_u8 v160, v149 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v153, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v160, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v139, v155, 16, v154
	v_perm_b32 v154, v157, v156, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[137:138], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v150, v154, 16, v153
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[141:142], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[139:140], v[143:144], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[139:140], v[145:146], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[137:138], v[9:16] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v137, off, off offset:96
	scratch_load_b32 v138, off, off offset:116
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[25:32], v[150:151], v[141:142], v[25:32] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v142, v192, v191, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[41:48], v[150:151], v[143:144], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[150:151], v[145:146], v[57:64] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:56
	scratch_load_b32 v139, off, off offset:84
	s_waitcnt vmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v139, off, off offset:8
	scratch_load_b32 v140, off, off offset:124
	v_lshl_or_b32 v138, v138, 16, v137
	s_waitcnt vmcnt(0)
	v_perm_b32 v139, v139, v140, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v140, off, off offset:108
	scratch_load_b32 v141, off, off offset:120
	s_waitcnt vmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	v_perm_b32 v141, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v140, 16, v139
	v_perm_b32 v139, v184, v183, 0xc0c0004
	v_perm_b32 v140, v186, v185, 0xc0c0004
	v_lshl_or_b32 v140, v140, 16, v139
	v_lshl_or_b32 v139, v142, 16, v141
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v141, off, off offset:48
	scratch_load_b32 v142, off, off offset:60
	v_wmma_i32_16x16x16_iu4 v[65:72], v[139:140], v[137:138], v[65:72] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v142, off, off offset:20
	scratch_load_b32 v143, off, off offset:28
	s_waitcnt vmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v143, off, off offset:104
	scratch_load_b32 v144, off, off offset:112
	v_lshl_or_b32 v142, v142, 16, v141
	s_waitcnt vmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v144, off, off offset:72
	scratch_load_b32 v145, off, off offset:76
	s_waitcnt vmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v144, 16, v143
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v143, off, off offset:36
	scratch_load_b32 v144, off, off offset:40
	v_wmma_i32_16x16x16_iu4 v[81:88], v[139:140], v[141:142], v[81:88] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v144, off, off offset:12
	scratch_load_b32 v145, off, off offset:16
	s_waitcnt vmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v145, off, off offset:92
	scratch_load_b32 v146, off, off offset:100
	v_lshl_or_b32 v144, v144, 16, v143
	s_waitcnt vmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v146, off, off offset:64
	scratch_load_b32 v150, off, off offset:68
	s_waitcnt vmcnt(0)
	v_perm_b32 v146, v150, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v146, 16, v145
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v145, off, off offset:80
	scratch_load_b32 v146, off, off offset:88
	v_wmma_i32_16x16x16_iu4 v[97:104], v[139:140], v[143:144], v[97:104] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v146, off, off offset:44
	scratch_load_b32 v150, off, off offset:52
	s_waitcnt vmcnt(0)
	v_perm_b32 v146, v150, v146, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v150, off, off offset:24
	scratch_load_b32 v151, off, off offset:32
	v_lshl_or_b32 v145, v146, 16, v145
	s_waitcnt vmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v151, off, off
	scratch_load_b32 v152, off, off offset:4
	s_waitcnt vmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_perm_b32 v152, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v146, v151, 16, v150
	v_perm_b32 v150, v178, v177, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[113:120], v[139:140], v[145:146], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v0, 16, v150
	v_lshl_or_b32 v150, v152, 16, v129
	v_wmma_i32_16x16x16_iu4 v[73:80], v[150:151], v[137:138], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[150:151], v[141:142], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[150:151], v[143:144], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[150:151], v[145:146], v[121:128] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	ds_load_u8 v0, v149 offset:7424
	ds_load_u8 v129, v149 offset:7168
	ds_load_u8 v150, v149 offset:8064
	ds_load_u8 v151, v149 offset:7808
	ds_load_u8 v152, v149 offset:7552
	ds_load_u8 v153, v149 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	ds_load_u8 v129, v149 offset:7936
	ds_load_u8 v139, v149 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v139, v129, 0xc0c0004
	ds_load_u8 v139, v149 offset:6400
	ds_load_u8 v140, v149 offset:6144
	ds_load_u8 v154, v149 offset:7040
	ds_load_u8 v155, v149 offset:6784
	ds_load_u8 v156, v149 offset:6528
	ds_load_u8 v157, v149 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v149 offset:6912
	ds_load_u8 v158, v149 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v158, v140, 0xc0c0004
	v_lshl_or_b32 v140, v129, 16, v0
	v_perm_b32 v0, v153, v152, 0xc0c0004
	v_perm_b32 v129, v151, v150, 0xc0c0004
	v_perm_b32 v150, v157, v156, 0xc0c0004
	v_perm_b32 v152, v155, v154, 0xc0c0004
	v_lshl_or_b32 v139, v158, 16, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v151, v129, 16, v0
	v_lshl_or_b32 v150, v152, 16, v150
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[141:142], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[139:140], v[143:144], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[139:140], v[145:146], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[137:138], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[150:151], v[141:142], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[150:151], v[143:144], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[150:151], v[145:146], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v135, v91
	v_cvt_f32_i32_e32 v134, v94
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v91, v1
	v_cvt_f32_i32_e32 v94, v3
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v3, off, off offset:360
	scratch_load_b32 v160, off, off offset:344
	scratch_load_b32 v169, off, off offset:348
	scratch_load_b32 v170, off, off offset:352
	scratch_load_b32 v1, off, off offset:356
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v0, v65
	v_cvt_f32_i32_e32 v145, v66
	v_cvt_f32_i32_e32 v158, v67
	v_cvt_f32_i32_e32 v146, v68
	v_cvt_f32_i32_e32 v141, v69
	v_cvt_f32_i32_e32 v142, v70
	v_cvt_f32_i32_e32 v143, v71
	v_cvt_f32_i32_e32 v147, v72
	v_cvt_f32_i32_e32 v144, v73
	v_cvt_f32_i32_e32 v138, v74
	v_cvt_f32_i32_e32 v139, v75
	v_cvt_f32_i32_e32 v140, v76
	v_cvt_f32_i32_e32 v129, v77
	v_cvt_f32_i32_e32 v132, v78
	v_cvt_f32_i32_e32 v131, v79
	v_cvt_f32_i32_e32 v130, v80
	v_cvt_f32_i32_e32 v166, v81
	v_cvt_f32_i32_e32 v165, v82
	v_cvt_f32_i32_e32 v168, v83
	v_cvt_f32_i32_e32 v167, v84
	v_cvt_f32_i32_e32 v150, v85
	v_cvt_f32_i32_e32 v149, v86
	v_cvt_f32_i32_e32 v152, v87
	v_cvt_f32_i32_e32 v153, v88
	v_cvt_f32_i32_e32 v148, v89
	v_cvt_f32_i32_e32 v136, v90
	v_cvt_f32_i32_e32 v137, v92
	v_cvt_f32_i32_e32 v82, v93
	v_cvt_f32_i32_e32 v133, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v162, v97
	v_cvt_f32_i32_e32 v161, v98
	v_cvt_f32_i32_e32 v164, v99
	v_cvt_f32_i32_e32 v163, v100
	v_cvt_f32_i32_e32 v155, v101
	v_cvt_f32_i32_e32 v154, v102
	v_cvt_f32_i32_e32 v156, v103
	v_cvt_f32_i32_e32 v157, v104
	v_cvt_f32_i32_e32 v151, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v107, v108
	v_cvt_f32_i32_e32 v81, v109
	v_cvt_f32_i32_e32 v101, v110
	v_cvt_f32_i32_e32 v100, v111
	v_cvt_f32_i32_e32 v99, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v159, v115
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v109, v117
	v_cvt_f32_i32_e32 v110, v118
	v_cvt_f32_i32_e32 v111, v119
	v_cvt_f32_i32_e32 v112, v120
	v_cvt_f32_i32_e32 v108, v121
	v_cvt_f32_i32_e32 v95, v122
	v_cvt_f32_i32_e32 v97, v123
	v_cvt_f32_i32_e32 v98, v124
	v_cvt_f32_i32_e32 v70, v125
	v_cvt_f32_i32_e32 v104, v126
	v_cvt_f32_i32_e32 v103, v127
	v_cvt_f32_i32_e32 v102, v128
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v92, v2
	v_cvt_f32_i32_e32 v93, v4
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v72, v6
	v_cvt_f32_i32_e32 v73, v7
	v_cvt_f32_i32_e32 v74, v8
	v_cvt_f32_i32_e32 v75, v9
	v_cvt_f32_i32_e32 v67, v10
	v_cvt_f32_i32_e32 v68, v11
	v_cvt_f32_i32_e32 v69, v12
	v_cvt_f32_i32_e32 v8, v13
	v_cvt_f32_i32_e32 v66, v14
	v_cvt_f32_i32_e32 v65, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v89, v17
	v_cvt_f32_i32_e32 v90, v18
	v_cvt_f32_i32_e32 v87, v19
	v_cvt_f32_i32_e32 v88, v20
	v_cvt_f32_i32_e32 v79, v21
	v_cvt_f32_i32_e32 v78, v22
	v_cvt_f32_i32_e32 v77, v23
	v_cvt_f32_i32_e32 v76, v24
	v_cvt_f32_i32_e32 v80, v25
	v_cvt_f32_i32_e32 v18, v26
	v_cvt_f32_i32_e32 v17, v27
	v_cvt_f32_i32_e32 v15, v28
	v_cvt_f32_i32_e32 v7, v29
	v_cvt_f32_i32_e32 v21, v30
	v_cvt_f32_i32_e32 v20, v31
	v_cvt_f32_i32_e32 v19, v32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v83, v35
	v_cvt_f32_i32_e32 v84, v36
	v_cvt_f32_i32_e32 v32, v37
	v_cvt_f32_i32_e32 v31, v38
	v_cvt_f32_i32_e32 v30, v39
	v_cvt_f32_i32_e32 v29, v40
	v_cvt_f32_i32_e32 v28, v41
	v_cvt_f32_i32_e32 v14, v42
	v_cvt_f32_i32_e32 v13, v43
	v_cvt_f32_i32_e32 v12, v44
	v_cvt_f32_i32_e32 v6, v45
	v_cvt_f32_i32_e32 v24, v46
	v_cvt_f32_i32_e32 v23, v47
	v_cvt_f32_i32_e32 v22, v48
	v_cvt_f32_i32_e32 v37, v49
	v_cvt_f32_i32_e32 v36, v50
	v_cvt_f32_i32_e32 v33, v51
	v_cvt_f32_i32_e32 v34, v52
	v_cvt_f32_i32_e32 v41, v53
	v_cvt_f32_i32_e32 v40, v54
	v_cvt_f32_i32_e32 v39, v55
	v_cvt_f32_i32_e32 v38, v56
	v_cvt_f32_i32_e32 v35, v57
	v_cvt_f32_i32_e32 v11, v58
	v_cvt_f32_i32_e32 v10, v59
	v_cvt_f32_i32_e32 v9, v60
	v_cvt_f32_i32_e32 v5, v61
	v_cvt_f32_i32_e32 v27, v62
	v_cvt_f32_i32_e32 v26, v63
	v_cvt_f32_i32_e32 v25, v64
.LBB0_7:                                ; %._crit_edge
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 5, v160
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v4, 0xf0, v160
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 28, v1
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s17, 0xffff
	s_mov_b32 s15, 0x31027000
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v2, 32, v2
	v_lshl_add_u32 v42, v4, 2, 0
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_mov_b32 s12, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v45, v42, v2, v1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s22, v169
	v_add_co_ci_u32_e64 v2, null, s23, 0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v42, 1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[1:2]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s1, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, 0, s1
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_lshlrev_b32 v43, 1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[1:2]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 32, v169
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s4, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, 0, s4
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v44, 1, v1
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s1, s20, 31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[1:2]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v169
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s1, s20, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, 0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v46, 1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[26:27], v[1:2]
	.loc	1 1120 21 is_stmt 1             ; ragged.py:1120:21
	v_or_b32_e32 v1, s29, v160
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[1:2], null, s31, s28, v[1:2]
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v2, 0x80000000, v43, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v43, 0x80000000, v44, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s6, s1, 1
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v44, 0x80000000, v46, vcc_lo
	s_clause 0x3
	buffer_load_u16 v42, v42, s[12:15], 0 offen
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	buffer_load_u16 v46, v43, s[12:15], 0 offen
	buffer_load_u16 v47, v44, s[12:15], 0 offen
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_lshlrev_b32_e32 v43, 1, v1
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	buffer_load_u16 v43, v43, s[12:15], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v44, 16, v42
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v42, 16, v46
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v46, v158, v44
	v_mul_f32_e32 v48, v145, v44
	v_mul_f32_e32 v49, v0, v44
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v45, v43
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v43, 16, v2
	v_lshlrev_b32_e32 v2, 16, v47
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v51, v165, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v145, v4, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v52, v167, v43 :: v_dual_mul_f32 v117, v114, v2
	v_mul_f32_e32 v64, v115, v2
	v_mul_f32_e32 v118, v113, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[113:116], v145
	ds_load_b128 v[123:126], v145 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v53, v168, v43
	v_mul_f32_e32 v133, v133, v43
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v89, v89, v43
	v_mul_f32_e32 v17, v17, v43
	v_mul_f32_e32 v15, v15, v43
	v_mul_f32_e32 v7, v7, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v57, v49, v113
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v47, v146, v44 :: v_dual_mul_f32 v58, v48, v114
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v60, v46, v115 :: v_dual_mul_f32 v51, v51, v114
	v_mul_f32_e32 v52, v52, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v59, v47, v116
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v55, v164, v42
	v_mul_f32_e32 v61, v162, v42
	v_dual_mul_f32 v0, v166, v43 :: v_dual_mul_f32 v63, v159, v2
	v_dual_mul_f32 v62, v161, v42 :: v_dual_mul_f32 v49, v55, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v55, v143, v44 :: v_dual_mul_f32 v50, v0, v113
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v63, v63, v115
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v56, v163, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v54, v53, v115
	v_dual_mul_f32 v46, v61, v113 :: v_dual_mul_f32 v115, v150, v43
	v_mul_f32_e32 v47, v62, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v53, v118, v113 :: v_dual_mul_f32 v48, v56, v116
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v127, v157, v42 :: v_dual_mul_f32 v56, v142, v44
	v_mul_f32_e32 v109, v109, v2
	v_dual_mul_f32 v113, v153, v43 :: v_dual_mul_f32 v62, v64, v116
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v64, v141, v44 :: v_dual_mul_f32 v121, v55, v125
	v_mul_f32_e32 v142, v154, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v61, v117, v114 :: v_dual_mul_f32 v0, v147, v44
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v143, v112, v2
	v_dual_mul_f32 v128, v156, v42 :: v_dual_mul_f32 v55, v115, v123
	v_mul_f32_e32 v141, v155, v42
	v_dual_mul_f32 v146, v111, v2 :: v_dual_mul_f32 v109, v109, v123
	v_mul_f32_e32 v147, v110, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v119, v64, v123
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v114, v152, v43 :: v_dual_mul_f32 v111, v142, v124
	v_mul_f32_e32 v116, v149, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v120, v56, v124 :: v_dual_mul_f32 v115, v146, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v122, v0, v126 :: v_dual_mul_f32 v117, v114, v125
	v_dual_mul_f32 v56, v116, v124 :: v_dual_mul_f32 v149, v107, v42
	v_mul_f32_e32 v118, v113, v126
	v_dual_mul_f32 v110, v141, v123 :: v_dual_mul_f32 v95, v95, v2
	v_dual_mul_f32 v112, v128, v125 :: v_dual_mul_f32 v107, v105, v42
	v_dual_mul_f32 v114, v127, v126 :: v_dual_mul_f32 v123, v148, v43
	v_mul_f32_e32 v113, v147, v124
	v_dual_mul_f32 v116, v143, v126 :: v_dual_mul_f32 v147, v136, v43
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v0, v144, v44 :: v_dual_mul_f32 v97, v97, v2
	v_mul_f32_e32 v124, v140, v44
	v_dual_mul_f32 v125, v139, v44 :: v_dual_mul_f32 v108, v108, v2
	v_mul_f32_e32 v128, v151, v42
	v_mul_f32_e32 v126, v138, v44
	v_mul_f32_e32 v146, v137, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[137:140], v145 offset:512
	ds_load_b128 v[141:144], v145 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v148, v135, v43
	v_mul_f32_e32 v98, v98, v2
	v_dual_mul_f32 v101, v101, v42 :: v_dual_mul_f32 v130, v130, v44
	v_dual_mul_f32 v99, v99, v42 :: v_dual_mul_f32 v96, v96, v43
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v85, v85, v42
	v_dual_mul_f32 v91, v91, v44 :: v_dual_mul_f32 v150, v36, v2
	v_mul_f32_e32 v71, v71, v44
	v_mul_f32_e32 v37, v37, v2
	v_mul_f32_e32 v151, v33, v2
	v_mul_f32_e32 v30, v30, v42
	v_mul_f32_e32 v31, v31, v42
	v_mul_f32_e32 v29, v29, v42
	v_dual_mul_f32 v41, v41, v2 :: v_dual_mul_f32 v68, v68, v44
	v_mul_f32_e32 v18, v18, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v64, v0, v137 :: v_dual_mul_f32 v95, v95, v138
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v0, v132, v44 :: v_dual_mul_f32 v127, v123, v137
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v107, v107, v139
	v_mul_f32_e32 v105, v108, v137
	v_mul_f32_e32 v123, v128, v137
	v_dual_mul_f32 v137, v124, v140 :: v_dual_mul_f32 v124, v147, v138
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v147, v70, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v70, v0, v142
	.loc	1 1124 41                       ; ragged.py:1124:41
	v_add_lshl_u32 v0, v1, s20, 1
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v106, v106, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v136, v125, v139
	v_dual_mul_f32 v97, v97, v139 :: v_dual_mul_f32 v98, v98, v140
	.loc	1 1124 41                       ; ragged.py:1124:41
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v104, v104, v2
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v135, v126, v138
	v_dual_mul_f32 v125, v148, v139 :: v_dual_mul_f32 v126, v146, v140
	v_dual_mul_f32 v108, v149, v140 :: v_dual_mul_f32 v139, v102, v2
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v128, v131, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v106, v106, v138
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v138, v129, v44 :: v_dual_mul_f32 v129, v134, v43
	v_dual_mul_f32 v134, v103, v2 :: v_dual_mul_f32 v1, v93, v44
	v_mul_f32_e32 v140, v82, v43
	v_mul_f32_e32 v146, v81, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v101, v101, v142 :: v_dual_mul_f32 v132, v130, v144
	v_mul_f32_e32 v103, v99, v144
	v_mul_f32_e32 v99, v147, v141
	v_mul_f32_e32 v81, v104, v142
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v100, v100, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v131, v128, v143
	v_mul_f32_e32 v130, v96, v144
	v_mul_f32_e32 v82, v134, v143
	v_mul_f32_e32 v96, v139, v144
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v144, v83, v42
	v_dual_mul_f32 v32, v32, v42 :: v_dual_mul_f32 v67, v67, v44
	v_mul_f32_e32 v13, v13, v42
	v_mul_f32_e32 v35, v35, v2
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s12, s8
	.loc	1 1124 41                       ; ragged.py:1124:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_store_b32 v45, v0
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v45, v92, v44 :: v_dual_mul_f32 v92, v90, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v128, v129, v142
	v_mul_f32_e32 v129, v133, v143
	v_dual_mul_f32 v133, v138, v141 :: v_dual_mul_f32 v102, v100, v143
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v142, v87, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v104, v140, v141 :: v_dual_mul_f32 v143, v86, v42
	v_mul_f32_e32 v100, v146, v141
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[138:141], v145
	ds_load_b128 v[146:149], v145 offset:16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v94, v44
	v_mul_f32_e32 v84, v84, v42
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v72, v72, v44 :: v_dual_mul_f32 v93, v1, v141
	v_mul_f32_e32 v1, v73, v44
	v_dual_mul_f32 v73, v79, v43 :: v_dual_mul_f32 v90, v0, v140
	v_mul_f32_e32 v0, v74, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v134, v91, v138 :: v_dual_mul_f32 v79, v77, v43
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v91, v71, v146
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v34, v34, v2 :: v_dual_mul_f32 v77, v0, v149
	v_mul_f32_e32 v88, v88, v43
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v94, v45, v139
	v_dual_mul_f32 v86, v89, v138 :: v_dual_mul_f32 v89, v142, v140
	v_mul_f32_e32 v45, v143, v138
	v_mul_f32_e32 v83, v85, v139
	v_mul_f32_e32 v85, v144, v140
	v_dual_mul_f32 v87, v92, v139 :: v_dual_mul_f32 v36, v37, v138
	v_dual_mul_f32 v37, v150, v139 :: v_dual_mul_f32 v84, v84, v141
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v139, v39, v2
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v33, v34, v141
	v_mul_f32_e32 v88, v88, v141
	v_dual_mul_f32 v34, v151, v140 :: v_dual_mul_f32 v71, v73, v146
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v92, v76, v43
	v_mul_f32_e32 v138, v40, v2
	v_mul_f32_e32 v140, v38, v2
	v_mul_f32_e32 v74, v78, v43
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v76, v1, v148
	v_mul_f32_e32 v40, v29, v149
	v_dual_mul_f32 v29, v41, v146 :: v_dual_mul_f32 v78, v72, v147
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v1, v140, v149 :: v_dual_mul_f32 v72, v74, v147
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v75, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v38, v31, v147
	v_mul_f32_e32 v31, v139, v148
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v41, v69, v44 :: v_dual_mul_f32 v74, v92, v149
	v_mul_f32_e32 v143, v10, v2
	v_mul_f32_e32 v69, v80, v43
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v39, v30, v148
	v_dual_mul_f32 v30, v138, v147 :: v_dual_mul_f32 v75, v12, v42
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v142, v11, v2
	v_mul_f32_e32 v144, v9, v2
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_load_b128 v[9:12], v145 offset:512
	ds_load_b128 v[138:141], v145 offset:528
	v_mul_f32_e32 v32, v32, v146
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v28, v28, v42
	v_dual_mul_f32 v14, v14, v42 :: v_dual_mul_f32 v73, v79, v148
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v146, v69, v9
	v_dual_mul_f32 v92, v67, v10 :: v_dual_mul_f32 v67, v17, v11
	v_mul_f32_e32 v17, v13, v11
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v13, v16, v44 :: v_dual_mul_f32 v16, v19, v43
	v_mul_f32_e32 v19, v24, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v69, v18, v10
	v_mul_f32_e32 v145, v0, v9
	v_mul_f32_e32 v28, v28, v9
	v_mul_f32_e32 v147, v35, v9
	v_dual_mul_f32 v79, v68, v11 :: v_dual_mul_f32 v80, v41, v12
	v_mul_f32_e32 v68, v15, v12
	v_mul_f32_e32 v9, v143, v11
	v_mul_f32_e32 v35, v14, v10
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v15, v20, v43
	v_mul_f32_e32 v14, v21, v43
	v_mul_f32_e32 v20, v23, v42
	v_mul_f32_e32 v21, v22, v42
	v_mul_f32_e32 v22, v27, v2
	v_mul_f32_e32 v23, v26, v2
	v_mul_f32_e32 v24, v25, v2
	v_dual_mul_f32 v2, v5, v2 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v6, v6, v42 :: v_dual_mul_f32 v23, v23, v140
	v_mul_f32_e32 v8, v8, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v26, v21, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v21, v6, v138 :: v_dual_mul_f32 v18, v75, v12
	v_dual_mul_f32 v27, v24, v141 :: v_dual_mul_f32 v24, v7, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v11, v66, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v0, v142, v10
	v_dual_mul_f32 v10, v144, v12 :: v_dual_mul_f32 v19, v19, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v5, 0xbfb8aa3b, v145 :: v_dual_mul_f32 v12, v65, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v25, v8, v138
	v_dual_mul_f32 v11, v11, v139 :: v_dual_mul_f32 v16, v16, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v5
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v15, v15, v140
	v_mul_f32_e32 v13, v13, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v5, v5, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v7, v6
	v_fma_f32 v8, -v6, v7, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, v8, v7
	v_div_scale_f32 v8, vcc_lo, v145, v5, v145
	v_mul_f32_e32 v41, v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v6, v41, v8
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_dual_mul_f32 v12, v12, v140 :: v_dual_fmac_f32 v41, v42, v7
	v_mul_f32_e32 v22, v22, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v6, v41, v8
	v_div_fmas_f32 v6, v6, v7, v41
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v6, v5, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_mul_f32_e32 v6, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v64, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_mul_f32_e32 v20, v20, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v7, v7
	v_ldexp_f32 v7, v7, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v8, null, v7, v7, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v8
	v_fma_f32 v42, -v8, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v11, v7, v11
	v_mul_f32_e32 v43, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v8, v43, v42
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_dual_mul_f32 v14, v14, v139 :: v_dual_fmac_f32 v43, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v8, v43, v42
	v_div_fmas_f32 v8, v8, v41, v43
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v41, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_mul_f32_e32 v2, v2, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v41, v41, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v12, v41, v12
	v_mul_f32_e32 v65, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v42, v65, v44
	v_fmac_f32_e32 v65, v66, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v65, v44
	v_div_fmas_f32 v42, v42, v43, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v13
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v6, v6, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v43, v43, v13
	v_rcp_f32_e32 v44, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v6, v44, 1.0
	v_fmac_f32_e32 v44, v65, v44
	v_div_scale_f32 v65, vcc_lo, v13, v43, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v65, v44
	v_fma_f32 v75, -v6, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v75, v44
	v_fma_f32 v6, -v6, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v44, v6, v44, v66
	v_div_fixup_f32 v6, v8, v7, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v146
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v146
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v7, v7, v8
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v8, null, v7, v7, v146
	v_rcp_f32_e32 v11, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v8, v11, 1.0
	v_fmac_f32_e32 v11, v65, v11
	v_div_scale_f32 v65, vcc_lo, v146, v7, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v65, v11
	v_fma_f32 v75, -v8, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v75, v11
	v_fma_f32 v8, -v8, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v11, v8, v11, v66
	v_div_fixup_f32 v8, v42, v41, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v12, 0xbfb8aa3b, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v7, v11, v7, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v11, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v12, null, v41, v41, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v12
	v_fma_f32 v65, -v12, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v65, v42
	v_div_scale_f32 v65, vcc_lo, v14, v41, v14
	v_mul_f32_e32 v66, v65, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v12, v66, v65
	v_fmac_f32_e32 v66, v75, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v66, v65
	v_div_fmas_f32 v42, v12, v42, v66
	v_div_fixup_f32 v12, v44, v43, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v13, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v13, v13, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v13, v13, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v43
	v_fma_f32 v65, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v65, v44
	v_div_scale_f32 v65, vcc_lo, v15, v13, v15
	v_mul_f32_e32 v66, v65, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v43, v66, v65
	v_fmac_f32_e32 v66, v75, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v66, v65
	v_div_fmas_f32 v43, v43, v44, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v13, v43, v13, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v15, 0xbfb8aa3b, v19
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v11, v11
	v_ldexp_f32 v11, v11, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v44, v44, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v11
	v_fma_f32 v66, -v11, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v16, v44, v16
	v_mul_f32_e32 v75, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v11, v75, v66
	v_fmac_f32_e32 v75, v138, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v75, v66
	v_div_fmas_f32 v65, v11, v65, v75
	v_div_fixup_f32 v11, v42, v41, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v14, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v14, v14
	v_ldexp_f32 v14, v14, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v14, v14, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v66, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v66, v42
	v_div_scale_f32 v66, vcc_lo, v28, v14, v28
	v_mul_f32_e32 v75, v66, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v41, v75, v66
	v_fmac_f32_e32 v75, v138, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v75, v66
	v_div_fmas_f32 v41, v41, v42, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v14, v41, v14, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, null, v42, v42, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v15
	v_fma_f32 v66, -v15, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v66, v43
	v_div_scale_f32 v66, vcc_lo, v19, v42, v19
	v_mul_f32_e32 v75, v66, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v15, v75, v66
	v_fmac_f32_e32 v75, v138, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v75, v66
	v_div_fmas_f32 v43, v15, v43, v75
	v_div_fixup_f32 v15, v65, v44, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v16, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v44, v44, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v16
	v_fma_f32 v66, -v16, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v20, v44, v20
	v_mul_f32_e32 v75, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v16, v75, v66
	v_fmac_f32_e32 v75, v138, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v75, v66
	v_div_fmas_f32 v65, v16, v65, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v16, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v28, v28, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v16
	v_fma_f32 v66, -v16, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v66, v41
	v_div_scale_f32 v66, vcc_lo, v26, v28, v26
	v_mul_f32_e32 v75, v66, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v16, v75, v66
	v_fmac_f32_e32 v75, v138, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v75, v66
	v_div_fmas_f32 v41, v16, v41, v75
	v_div_fixup_f32 v16, v43, v42, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v19, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v19, null, v42, v42, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v19
	v_fma_f32 v66, -v19, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v66, v43
	v_div_scale_f32 v66, vcc_lo, v147, v42, v147
	v_mul_f32_e32 v75, v66, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v19, v75, v66
	v_fmac_f32_e32 v75, v138, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v75, v66
	v_div_fmas_f32 v43, v19, v43, v75
	v_div_fixup_f32 v19, v65, v44, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v20, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v44, v44, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v20
	v_fma_f32 v66, -v20, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v22, v44, v22
	v_mul_f32_e32 v75, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v20, v75, v66
	v_fmac_f32_e32 v75, v138, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v75, v66
	v_div_fmas_f32 v65, v20, v65, v75
	v_div_fixup_f32 v20, v41, v28, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v26, v26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v28
	v_fma_f32 v66, -v28, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v66, v41
	v_div_scale_f32 v66, vcc_lo, v23, v26, v23
	v_mul_f32_e32 v75, v66, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v28, v75, v66
	v_fmac_f32_e32 v75, v138, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v75, v66
	v_div_fmas_f32 v66, v28, v41, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v41, 0xbfb8aa3b, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v43, v42, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v43, v43, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v75, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v75, v42
	v_div_scale_f32 v75, vcc_lo, v27, v43, v27
	v_mul_f32_e32 v138, v75, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v41, v138, v75
	v_fmac_f32_e32 v138, v139, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v138, v75
	v_div_fmas_f32 v75, v41, v42, v138
	v_div_fixup_f32 v41, v65, v44, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v75, v43, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v93
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v134
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v22, v22, v134
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v42, v44, 1.0
	v_fmac_f32_e32 v44, v65, v44
	v_div_scale_f32 v65, vcc_lo, v134, v22, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v65, v44
	v_fma_f32 v139, -v42, v138, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v44
	v_fma_f32 v42, -v42, v138, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v44, v42, v44, v138
	v_div_fixup_f32 v42, v66, v26, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v44, v22, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v44, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v23, v23, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v26
	v_fma_f32 v66, -v26, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v94, v23, v94
	v_mul_f32_e32 v138, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v26, v138, v66
	v_fmac_f32_e32 v138, v139, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v138, v66
	v_div_fmas_f32 v26, v26, v65, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v93
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v27, v27, v93
	v_rcp_f32_e32 v66, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v65, v66, 1.0
	v_fmac_f32_e32 v66, v75, v66
	v_div_scale_f32 v75, vcc_lo, v93, v27, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v138, v75, v66
	v_div_fixup_f32 v23, v26, v23, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v139, -v65, v138, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v66
	v_fma_f32 v65, -v65, v138, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v65, v65, v66, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v44, v44
	v_ldexp_f32 v44, v44, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, null, v66, v66, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v75, v44
	v_fma_f32 v134, -v44, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v134, v75
	v_div_scale_f32 v134, vcc_lo, v90, v66, v90
	v_mul_f32_e32 v138, v134, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v44, v138, v134
	v_fmac_f32_e32 v138, v139, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v44, v138, v134
	v_div_fmas_f32 v75, v44, v75, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v91
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v44
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, null, v26, v26, v91
	v_rcp_f32_e32 v94, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v44, v94, 1.0
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v91, v26, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v134, v94
	v_fma_f32 v139, -v44, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v94
	v_fma_f32 v44, -v44, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v94, v44, v94, v138
	v_div_fixup_f32 v44, v65, v27, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v78
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v78
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v27, v27, v78
	v_rcp_f32_e32 v93, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v65, v93, 1.0
	v_fmac_f32_e32 v93, v134, v93
	v_div_scale_f32 v134, vcc_lo, v78, v27, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v134, v93
	v_fma_f32 v139, -v65, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v93
	v_fma_f32 v65, -v65, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v93, v65, v93, v138
	v_div_fixup_f32 v65, v75, v66, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v66, 0xbfb8aa3b, v76
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v76
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v90, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v90, v90, v76
	v_rcp_f32_e32 v75, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v66, v75, 1.0
	v_fmac_f32_e32 v75, v134, v75
	v_div_scale_f32 v134, vcc_lo, v76, v90, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v134, v75
	v_fma_f32 v139, -v66, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v75
	v_fma_f32 v66, -v66, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v134, v66, v75, v138
	v_div_fixup_f32 v66, v94, v26, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v77
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v77
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v26, v26, v77
	v_rcp_f32_e32 v91, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v75, v91, 1.0
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, vcc_lo, v77, v26, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v94, v91
	v_fma_f32 v139, -v75, v138, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v91
	v_fma_f32 v75, -v75, v138, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v91, v75, v91, v138
	v_div_fixup_f32 v75, v93, v27, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v77, v91, v26, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v27, v27, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v93, v78
	v_fma_f32 v94, -v78, v93, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v92, v27, v92
	v_div_fixup_f32 v76, v134, v90, v76
	v_mul_f32_e32 v138, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v78, v138, v94
	v_fmac_f32_e32 v138, v139, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v78, v138, v94
	v_div_fmas_f32 v78, v78, v93, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v78, v78, v27, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v27, 0xbfb8aa3b, v80 :: v_dual_fmac_f32 v26, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v90, null, v26, v26, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v93, -v90, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, vcc_lo, v79, v26, v79
	v_mul_f32_e32 v94, v93, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v90, v94, v93
	v_fmac_f32_e32 v94, v134, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v90, v94, v93
	v_div_fmas_f32 v90, v90, v91, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v79, v90, v26, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v26, 0xbfb8aa3b, v86 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v27, v27, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v80, v27, v80
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v91, v94, v93
	v_fmac_f32_e32 v94, v134, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v92, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v80, v91, v27, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v25
	v_exp_f32_e32 v92, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v92, v92, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v93, null, v92, v92, v25
	v_rcp_f32_e32 v94, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v93, v94, 1.0
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v25, v92, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v134, v94
	v_fma_f32 v139, -v93, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v94
	v_fma_f32 v93, -v93, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v93, v93, v94, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v27
	v_fma_f32 v91, -v27, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v86, v26, v86
	v_mul_f32_e32 v94, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v27, v94, v91
	v_fmac_f32_e32 v94, v134, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v94, v91
	v_div_fmas_f32 v27, v27, v90, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v90, 0xbfb8aa3b, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v86, v27, v26, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v87
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v90, v90, v91
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v91, 1.0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v90, null, v91, v91, v87
	v_rcp_f32_e32 v94, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v90, v94, 1.0
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v87, v91, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v134, v94
	v_fma_f32 v139, -v90, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v94
	v_fma_f32 v90, -v90, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v94, v90, v94, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v90, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v87, v94, v91, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v90, v90
	v_ldexp_f32 v90, v90, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v134, 1.0, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v90, null, v134, v134, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v138, v90
	v_fma_f32 v139, -v90, v138, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v138
	v_div_scale_f32 v139, vcc_lo, v88, v134, v88
	v_mul_f32_e32 v140, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v90, v140, v139
	v_fmac_f32_e32 v140, v141, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v90, v140, v139
	v_div_fmas_f32 v138, v90, v138, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v90, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v88, v138, v134, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v89
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v90, v90, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v139, 1.0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v90, null, v139, v139, v89
	v_rcp_f32_e32 v140, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v90, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v89, v139, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v90, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v90, -v90, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v140, v90, v140, v142
	v_div_fixup_f32 v90, v93, v92, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v89, v140, v139, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v91, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v91, v27
	v_div_scale_f32 v91, vcc_lo, v71, v25, v71
	v_mul_f32_e32 v92, v91, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v26, v92, v91
	v_fmac_f32_e32 v92, v93, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v92, v91
	v_div_fmas_f32 v26, v26, v27, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v71, v26, v25, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_mul_f32_e32 v25, 0xbfb8aa3b, v67
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v72
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v91
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v91, null, v27, v27, v72
	v_rcp_f32_e32 v92, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v91, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v72, v27, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v134, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v134, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v92, 0xbfb8aa3b, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v91, v91, v27, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v92, v92
	v_ldexp_f32 v92, v92, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v93, null, v92, v92, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v94, v93
	v_fma_f32 v134, -v93, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v73, v92, v73
	v_mul_f32_e32 v138, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v93, v138, v134
	v_fmac_f32_e32 v138, v139, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v93, v138, v134
	v_div_fmas_f32 v93, v93, v94, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v94, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v92, v93, v92, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v94
	v_cndmask_b32_e64 v94, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v74
	v_exp_f32_e32 v94, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v94, v94, v134
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v134, null, v94, v94, v74
	v_rcp_f32_e32 v138, v134
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v134, v138, 1.0
	v_fmac_f32_e32 v138, v139, v138
	v_div_scale_f32 v139, vcc_lo, v74, v94, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v139, v138
	v_fma_f32 v141, -v134, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v138
	v_fma_f32 v134, -v134, v140, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v134, v134, v138, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v138, 0xbfb8aa3b, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v74, v134, v94, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v138
	v_cndmask_b32_e64 v138, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v138, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v138, v138
	v_ldexp_f32 v138, v138, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v138, 1.0, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v138, v138, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v140, v139
	v_fma_f32 v141, -v139, v140, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v69, v138, v69
	v_mul_f32_e32 v142, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v139, v142, v141
	v_fmac_f32_e32 v142, v143, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v139, v142, v141
	v_div_fmas_f32 v139, v139, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v73, v139, v138, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v69, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v69, v27
	v_div_scale_f32 v69, vcc_lo, v67, v25, v67
	v_mul_f32_e32 v72, v69, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v26, v72, v69
	v_fmac_f32_e32 v72, v93, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v72, v69
	v_div_fmas_f32 v26, v26, v27, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v27, v27, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v69
	v_fma_f32 v93, -v69, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v93, v72
	v_div_scale_f32 v93, vcc_lo, v68, v27, v68
	v_mul_f32_e32 v94, v93, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v69, v94, v93
	v_fmac_f32_e32 v94, v134, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v94, v93
	v_div_fmas_f32 v69, v69, v72, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v72, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v93, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v72, v72
	v_ldexp_f32 v72, v72, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v93, null, v72, v72, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v94, v93
	v_fma_f32 v134, -v93, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v134, v94
	v_div_scale_f32 v134, vcc_lo, v24, v72, v24
	v_mul_f32_e32 v138, v134, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v93, v138, v134
	v_fmac_f32_e32 v138, v139, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v93, v138, v134
	v_div_fmas_f32 v134, v93, v94, v138
	v_div_fixup_f32 v93, v26, v25, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v94, v69, v27, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v134, v72, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v104, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v67, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v67, v27
	v_div_scale_f32 v67, vcc_lo, v45, v25, v45
	v_mul_f32_e32 v68, v67, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v26, v68, v67
	v_fmac_f32_e32 v68, v69, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v68, v67
	v_div_fmas_f32 v26, v26, v27, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v26, v25, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_mul_f32_e32 v25, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v83
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v27, v27, v83
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v83, v27, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v69, v68
	v_fma_f32 v139, -v67, v138, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v68
	v_fma_f32 v67, -v67, v138, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v67, v67, v68, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v83, v67, v27, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v138, v69
	v_fma_f32 v139, -v69, v138, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v138
	v_div_scale_f32 v139, vcc_lo, v84, v68, v84
	v_mul_f32_e32 v140, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v69, v140, v139
	v_fmac_f32_e32 v140, v141, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v140, v139
	v_div_fmas_f32 v69, v69, v138, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v138, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v84, v69, v68, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v138
	v_cndmask_b32_e64 v138, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, 0xbfb8aa3b, v85
	v_exp_f32_e32 v138, v138
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v138, v138, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v138, 1.0, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v138, v138, v85
	v_rcp_f32_e32 v140, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v139, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v85, v138, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v139, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v139, v139, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v85, v139, v138, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v49, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v67, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v67, v27
	v_div_scale_f32 v67, vcc_lo, v32, v25, v32
	v_mul_f32_e32 v68, v67, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v26, v68, v67
	v_fmac_f32_e32 v68, v69, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v68, v67
	v_div_fmas_f32 v26, v26, v27, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v27, v27, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v38, v27, v38
	v_mul_f32_e32 v72, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v67, v72, v69
	v_fmac_f32_e32 v72, v134, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v72, v69
	v_div_fmas_f32 v67, v67, v68, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v67, v27, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v39
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v39
	v_rcp_f32_e32 v72, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v69, v72, 1.0
	v_fmac_f32_e32 v72, v134, v72
	v_div_scale_f32 v134, vcc_lo, v39, v68, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v134, v72
	v_fma_f32 v139, -v69, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v72
	v_fma_f32 v69, -v69, v138, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v72, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v72, 0xbfb8aa3b, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v69, v68, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v72, v72
	v_ldexp_f32 v72, v72, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v134, null, v72, v72, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v138, v134
	v_fma_f32 v139, -v134, v138, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v139, v138
	v_div_scale_f32 v139, vcc_lo, v40, v72, v40
	v_mul_f32_e32 v140, v139, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v134, v140, v139
	v_fmac_f32_e32 v140, v141, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v134, v140, v139
	v_div_fmas_f32 v134, v134, v138, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v138, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v40, v134, v72, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v138
	v_cndmask_b32_e64 v138, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, 0xbfb8aa3b, v35
	v_exp_f32_e32 v138, v138
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v138, v138, v139
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v138, 1.0, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v139, null, v138, v138, v35
	v_rcp_f32_e32 v140, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v139, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v35, v138, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v139, -v139, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v139, v139, v140, v142
	v_div_fixup_f32 v140, v26, v25, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v134, v139, v138, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v32, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v32, v27
	v_div_scale_f32 v32, vcc_lo, v17, v25, v17
	v_mul_f32_e32 v35, v32, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v26, v35, v32
	v_fmac_f32_e32 v35, v67, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v35, v32
	v_div_fmas_f32 v26, v26, v27, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v27, v27, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v35, v32
	v_fma_f32 v67, -v32, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v67, v35
	v_div_scale_f32 v67, vcc_lo, v18, v27, v18
	v_mul_f32_e32 v68, v67, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v32, v68, v67
	v_fmac_f32_e32 v68, v69, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v68, v67
	v_div_fmas_f32 v32, v32, v35, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v35, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v35, v35, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v35, v35, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v21, v35, v21
	v_mul_f32_e32 v72, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, -v67, v72, v69
	v_fmac_f32_e32 v72, v138, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v72, v69
	v_div_fmas_f32 v67, v67, v68, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v69
	v_fma_f32 v138, -v69, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v138, v72
	v_div_scale_f32 v138, vcc_lo, v36, v68, v36
	v_mul_f32_e32 v139, v138, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v69, v139, v138
	v_fmac_f32_e32 v139, v141, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v139, v138
	v_div_fmas_f32 v69, v69, v72, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v72, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v72, v72
	v_ldexp_f32 v72, v72, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v138, null, v72, v72, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v139, v138
	v_fma_f32 v141, -v138, v139, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v141, v139
	v_div_scale_f32 v141, vcc_lo, v37, v72, v37
	v_mul_f32_e32 v142, v141, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v138, v142, v141
	v_fmac_f32_e32 v142, v143, v139
	v_div_fixup_f32 v143, v69, v68, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v138, -v138, v142, v141
	v_div_fixup_f32 v141, v32, v27, v18
	v_div_fmas_f32 v138, v138, v139, v142
	v_div_fixup_f32 v139, v26, v25, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v17, 0xbfb8aa3b, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v142, v67, v35, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v138, v138, v72, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v33
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v17, v17, v33
	v_rcp_f32_e32 v21, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v18, v21, 1.0
	v_fmac_f32_e32 v21, v25, v21
	v_div_scale_f32 v25, vcc_lo, v33, v17, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v25, v21
	v_fma_f32 v27, -v18, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v21
	v_fma_f32 v18, -v18, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v18, v21, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v145, v18, v17, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_mul_f32_e32 v17, 0xbfb8aa3b, v1
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v21, v21, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v34, v21, v34
	v_mul_f32_e32 v32, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v25, v32, v27
	v_fmac_f32_e32 v32, v35, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v32, v27
	v_div_fmas_f32 v25, v25, v26, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v144, v25, v21, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v29
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v29
	v_rcp_f32_e32 v32, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v27, v32, 1.0
	v_fmac_f32_e32 v32, v35, v32
	v_div_scale_f32 v35, vcc_lo, v29, v26, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v35, v32
	v_fma_f32 v37, -v27, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v32
	v_fma_f32 v27, -v27, v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v32, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v32, 0xbfb8aa3b, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v146, v27, v26, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v32, v32
	v_ldexp_f32 v32, v32, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v32, v32, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v37, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v30, v32, v30
	v_mul_f32_e32 v67, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v35, v67, v37
	v_fmac_f32_e32 v67, v68, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v35, v67, v37
	v_div_fmas_f32 v35, v35, v36, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v36, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v147, v35, v32, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v31
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v36, v36, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v36, v36, v31
	v_rcp_f32_e32 v67, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v37, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v31, v36, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v72, -v37, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v72, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v72, v60, v65 :: v_dual_mul_f32 v65, v137, v80
	v_mul_f32_e32 v60, v50, v86
	v_mul_f32_e32 v50, v48, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v37, v69, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v59, v44
	v_mul_f32_e32 v59, v51, v87
	v_mul_f32_e32 v51, v47, v83
	v_mul_f32_e32 v47, v107, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v37, v37, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v58, v23
	v_dual_mul_f32 v67, v135, v78 :: v_dual_mul_f32 v58, v52, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v148, v37, v36, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v37, v119, v66 :: v_dual_mul_f32 v66, v136, v79
	v_mul_f32_e32 v23, v130, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v15, v103, v20 :: v_dual_mul_f32 v52, v46, v45
	v_mul_f32_e32 v20, v110, v140
	v_mul_f32_e32 v46, v108, v141
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v106, v134
	v_mul_f32_e32 v44, v61, v138
	v_mul_f32_e32 v45, v53, v143
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v61, 8, v160
	v_and_b32_e32 v78, 0x60, v160
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v17, v18
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v17, v17, v1
	v_rcp_f32_e32 v21, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v18, v21, 1.0
	v_fmac_f32_e32 v21, v25, v21
	v_div_scale_f32 v25, vcc_lo, v1, v17, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v25, v21
	v_fma_f32 v27, -v18, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v21
	v_fma_f32 v18, -v18, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v18, v21, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v149, v18, v17, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v17, v114, v40 :: v_dual_mul_f32 v18, v112, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v21, v21, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v0, v21, v0
	v_mul_f32_e32 v29, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v29, v27
	v_fmac_f32_e32 v29, v30, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v29, v27
	v_div_fmas_f32 v25, v25, v26, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v25, v21, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v25, v70, v6
	v_dual_mul_f32 v70, v57, v22 :: v_dual_mul_f32 v21, v128, v11
	v_mul_f32_e32 v22, v129, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v70|, |v69|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v54, v89
	v_mul_f32_e32 v54, v126, v94
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v9
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v24|, |v21|, |v22|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v13, v101, v16 :: v_dual_mul_f32 v16, v100, v142
	v_mul_f32_e32 v11, v113, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v29, v27
	v_fma_f32 v30, -v27, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v9, v26, v9
	v_mul_f32_e32 v31, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v27, v31, v30
	v_fmac_f32_e32 v31, v32, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v31, v30
	v_div_fmas_f32 v27, v27, v29, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v29, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v150, v27, v26, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v131, v8
	v_dual_mul_f32 v27, v132, v12 :: v_dual_mul_f32 v12, v109, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v40, v97, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v8, v116, v149 :: v_dual_mul_f32 v9, v115, v148
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v29, v29
	v_ldexp_f32 v29, v29, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, null, v29, v29, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v30
	v_fma_f32 v32, -v30, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v10, v29, v10
	v_mul_f32_e32 v33, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v30, v33, v32
	v_fmac_f32_e32 v33, v34, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v30, v33, v32
	v_div_fmas_f32 v30, v30, v31, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v31, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v151, v30, v29, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v29, v118, v74 :: v_dual_mul_f32 v30, v117, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v98, v151
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v31, v31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v34, -v32, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v2, v31, v2
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v32, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v120, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v32, v35, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v122, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v32, v33, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v121, v76
	v_mul_f32_e32 v33, v55, v71
	v_dual_mul_f32 v55, v125, v93 :: v_dual_lshlrev_b32 v76, 1, v170
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v10, v32, v31, v2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v133, v90
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, |v68|, |v37|, |v36|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v56, v91
	v_mul_f32_e32 v56, v124, v73
	v_mul_f32_e32 v10, v99, v10
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, |v32|, |v25|, |v26|
	v_max3_f32 v1, v1, |v72|, v2
	v_max3_f32 v2, |v67|, |v66|, |v65|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v2, v2, v5, |v27|
	v_max3_f32 v5, |v35|, |v34|, |v64|
	v_max3_f32 v75, v1, v5, v2
	v_max_f32_e64 v2, |v60|, |v59|
	v_max3_f32 v5, |v58|, |v33|, |v31|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v1, v127, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v2, |v57|, v5
	v_max3_f32 v5, |v56|, |v55|, |v54|
	v_max3_f32 v5, v5, v6, |v23|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v6, |v30|, |v29|, |v1|
	v_max3_f32 v71, v2, v6, v5
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v2, v123, v14
	v_dual_mul_f32 v14, v102, v19 :: v_dual_mul_f32 v19, v111, v38
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v5, |v52|, |v51|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v105, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v7, |v16|, |v13|, |v14|
	v_max3_f32 v6, |v50|, |v20|, |v19|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v5, v5, |v49|, v6
	v_max3_f32 v6, |v48|, |v47|, |v46|
	v_max3_f32 v6, v6, v7, |v15|
	v_max3_f32 v7, |v18|, |v17|, |v2|
	s_delay_alu instid0(VALU_DEP_1)
	v_max3_f32 v73, v5, v7, v6
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v96, v43
	v_mul_f32_e32 v43, v62, v145
	v_dual_mul_f32 v5, v81, v41 :: v_dual_mul_f32 v6, v82, v42
	v_mul_f32_e32 v42, v63, v144
	v_mul_f32_e32 v41, v95, v0
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v45|, |v44|
	v_max3_f32 v28, |v43|, |v12|, |v11|
	v_max3_f32 v53, |v10|, |v5|, |v6|
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v0, v0, |v42|, v28
	v_max3_f32 v28, |v41|, |v40|, |v39|
	v_max3_f32 v28, v28, v53, |v7|
	v_max3_f32 v53, |v9|, |v8|, |v38|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v0, v0, v53, v28
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v28, v75, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v53, v71, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v53, v53, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v79, v75, v28
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v28, v73, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v71, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v28, v28, v28
	v_max_f32_e32 v81, v73, v28
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v28, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v28, v28
	v_max_f32_e32 v82, v0, v28
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v160
	v_and_b32_e32 v28, 4, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v53, v0, 9, 0
	v_lshlrev_b32_e32 v74, 5, v0
	v_lshl_add_u32 v63, v28, 6, 0
	v_lshl_add_u32 v0, v0, 4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v53, v28, 2, v53
	v_xor_b32_e32 v62, v74, v78
	v_lshlrev_b32_e32 v28, 5, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v53, v61, 4, v53
	v_add3_u32 v53, v53, v76, v62
	v_lshrrev_b32_e32 v62, 3, v170
	ds_store_b128 v53, v[79:82]
	v_lshlrev_b32_e32 v53, 4, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v53, 0x680, v53, v74
	v_xor_b32_e32 v53, v53, v78
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v53, v63, v62, v53
	ds_load_b128 v[79:82], v53
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v62, v79
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v79, v79
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v63, v80
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v80, v80
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v71, v81
	v_mov_b32_dpp v62, v62 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v81, v81
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v63, v63 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v53, v82, v82
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v71, v71 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v62, v62, v62
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v63, v63, v63 :: v_dual_max_f32 v62, v73, v62
	v_dual_max_f32 v82, v82, v82 :: v_dual_max_f32 v63, v75, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v73, v62
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v53, v53, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v62, v62, v73 :: v_dual_mov_b32 v73, v63
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v73, v73
	v_max_f32_e32 v63, v63, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v73, v62
	v_mov_b32_e32 v75, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v73, v73 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v73, v73, v73
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v79, v62, v73 :: v_dual_max_f32 v62, v71, v71
	v_max_f32_e32 v80, v63, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v62, v77, v62
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v63, v63 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v63, v63, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v62, v62, v63
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v63, v63, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v81, v62, v63 :: v_dual_mov_b32 v62, v53
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v62, v62 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v53, v53, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v62, v53
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v62, v62, v62
	v_dual_max_f32 v82, v53, v62 :: v_dual_lshlrev_b32 v53, 3, v61
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v61, 0, v170
	v_lshrrev_b32_e32 v62, 1, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v0, v28, v53
	v_add3_u32 v61, v61, v62, v53
	ds_store_b128 v61, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v0
.Ltmp57:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v79, v79
	v_dual_max_f32 v28, v81, v81 :: v_dual_max_f32 v53, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v61, v82, v82 :: v_dual_max_f32 v0, 0x2b8cbccc, v0
	v_max_f32_e32 v61, 0x2b8cbccc, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v62, null, 0x40e00000, 0x40e00000, v0
	v_rcp_f32_e32 v63, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v62, v63, 1.0
	v_fmac_f32_e32 v63, v71, v63
	v_div_scale_f32 v71, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v71, v63
	v_fma_f32 v75, -v62, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v75, v63
	v_fma_f32 v62, -v62, v73, v71
	v_max_f32_e32 v71, 0x2b8cbccc, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v63, v62, v63, v73
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v63, 0x40e00000, v0
	v_rcp_f32_e32 v62, v28
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v63.h, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v73, -v28, v62, 1.0
	v_fmac_f32_e32 v62, v73, v62
	v_div_scale_f32 v73, vcc_lo, v71, 0x40e00000, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v73, v62
	v_fma_f32 v77, -v28, v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v77, v62
	v_fma_f32 v28, -v28, v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v73, v28, v62, v75
	v_max_f32_e32 v75, 0x2b8cbccc, v53
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v28
	v_fma_f32 v62, -v28, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v62, v53
	v_div_scale_f32 v62, vcc_lo, v75, 0x40e00000, v75
	v_mul_f32_e32 v77, v62, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v28, v77, v62
	v_fmac_f32_e32 v77, v79, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v77, v62
	v_div_fmas_f32 v77, v28, v53, v77
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v28
	v_fma_f32 v62, -v28, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v62, v53
	v_div_scale_f32 v62, vcc_lo, v61, 0x40e00000, v61
	v_mul_f32_e32 v79, v62, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v28, v79, v62
	v_fmac_f32_e32 v79, v80, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v79, v62
	v_div_fmas_f32 v62, v28, v53, v79
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v63.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v28, v0, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v53, 0xffff0000, v28
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v70, v79, v53, v70
	v_rcp_f32_e32 v80, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v70, v70, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v0, v80, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v69, v53, v69
	v_dual_mul_f32 v82, v81, v80 :: v_dual_and_b32 v79, 15, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v0, v82, v81
	v_fmac_f32_e32 v82, v83, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v82, v81
	v_div_fmas_f32 v80, v0, v80, v82
	v_div_scale_f32 v0, null, v53, v53, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v69, v80, v53, v69
	v_rcp_f32_e32 v81, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v0, v81, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v72, v53, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v80, 15, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v83, v82, v81
	v_fma_f32 v84, -v0, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v81
	v_fma_f32 v0, -v0, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v0, v81, v83
	v_div_scale_f32 v0, null, v53, v53, v68
	v_div_fixup_f32 v72, v81, v53, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v82, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v0, v82, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v68, v53, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v84, v83, v82 :: v_dual_and_b32 v81, 15, v69
	v_fma_f32 v85, -v0, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v82
	v_fma_f32 v0, -v0, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v0, v82, v84
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 4, v169
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v68, v82, v53, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v0, v0, v78
	v_lshlrev_b32_e32 v78, 10, v160
	v_and_b32_e32 v83, 0x1800, v78
	v_and_b32_e32 v78, 16, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v84, 6, v78
	v_add3_u32 v83, 0, v83, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v76, v83, v0, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v37
	v_rcp_f32_e32 v83, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v0, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v37, v53, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v86, -v0, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v83
	v_fma_f32 v0, -v0, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v83, v0, v83, v85
	v_div_scale_f32 v0, null, v53, v53, v36
	v_div_fixup_f32 v37, v83, v53, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v84, v0
	v_fma_f32 v85, -v0, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v85, vcc_lo, v36, v53, v36
	v_mul_f32_e32 v86, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v0, v86, v85
	v_fmac_f32_e32 v86, v87, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v86, v85
	v_div_fmas_f32 v84, v0, v84, v86
	v_div_scale_f32 v0, null, v53, v53, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v36, v84, v53, v36
	v_rcp_f32_e32 v85, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v0, v85, 1.0
	v_fmac_f32_e32 v85, v86, v85
	v_div_scale_f32 v86, vcc_lo, v35, v53, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v86, v85
	v_fma_f32 v88, -v0, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v85
	v_fma_f32 v0, -v0, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v85, v0, v85, v87
	v_div_scale_f32 v0, null, v53, v53, v34
	v_rcp_f32_e32 v86, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v0, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v34, v53, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v0, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v0, -v0, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v86, v0, v86, v88
	v_div_scale_f32 v0, null, v53, v53, v64
	v_rcp_f32_e32 v87, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v0, v87, 1.0
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v64, v53, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v88, v87
	v_fma_f32 v90, -v0, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v87
	v_fma_f32 v0, -v0, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v87, v89
	v_div_scale_f32 v87, null, v53, v53, v67
	v_div_fixup_f32 v0, v0, v53, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v88, v87
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v87, v88, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v67, v53, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v91, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v88
	v_fma_f32 v87, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v88, v90
	v_div_scale_f32 v88, null, v53, v53, v66
	v_div_fixup_f32 v64, v87, v53, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v89, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v68
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v88, v89, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v66, v53, v66
	v_dual_mul_f32 v91, v90, v89 :: v_dual_and_b32 v82, 15, v67
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
	v_lshlrev_b32_e32 v0, 6, v160
	ds_store_b128 v76, v[79:82]
	ds_store_b128 v76, v[64:67] offset:512
	s_waitcnt lgkmcnt(0)
	v_and_or_b32 v0, 0x1b00, v0, v74
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v4, v0, v4, 0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v53, v53, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[64:67], v4
	ds_load_b128 v[79:82], v4 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v68, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v69, -v0, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v32, v53, v32
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v79, 4, v64
	v_lshl_or_b32 v65, v80, 4, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v70, v69, v68
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v81, 4, v66
	v_lshl_or_b32 v67, v82, 4, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v72, -v0, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v68
	v_fma_f32 v0, -v0, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v0, v68, v70
	v_div_scale_f32 v0, null, v53, v53, v25
	v_div_fixup_f32 v32, v69, v53, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v68, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v0, v68, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v68, v70, v68
	v_div_scale_f32 v70, vcc_lo, v25, v53, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v70, v68
	v_fma_f32 v74, -v0, v72, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v74, v68
	v_fma_f32 v0, -v0, v72, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v70, v0, v68, v72
	v_div_scale_f32 v0, null, v53, v53, v26
	v_div_fixup_f32 v25, v70, v53, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v68, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v72, -v0, v68, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v68, v72, v68
	v_div_scale_f32 v72, vcc_lo, v26, v53, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v72, v68
	v_fma_f32 v79, -v0, v74, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v79, v68
	v_fma_f32 v0, -v0, v74, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v72, v0, v68, v74
	v_div_scale_f32 v0, null, v53, v53, v27
	v_div_fixup_f32 v26, v72, v53, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v0
	v_fma_f32 v74, -v0, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v74, v68
	v_div_scale_f32 v74, vcc_lo, v27, v53, v27
	v_mul_f32_e32 v79, v74, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v0, v79, v74
	v_fmac_f32_e32 v79, v80, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v79, v74
	v_div_fmas_f32 v74, v0, v68, v79
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v77, 0x40e00000, v75
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v68.h, v63.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_fixup_f32 v27, v74, v53, v27
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v68.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v0, v0, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v68, 0xffff0000, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v67.l
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v75, null, v68, v68, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v75
	v_fma_f32 v79, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v79, v77
	v_div_scale_f32 v79, vcc_lo, v60, v68, v60
	v_mul_f32_e32 v80, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v75, v80, v79
	v_fmac_f32_e32 v80, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v80, v79
	v_div_fmas_f32 v81, v75, v77, v80
	v_div_scale_f32 v75, null, v68, v68, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v60, v81, v68, v60
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v75, v77, 1.0
	v_fmac_f32_e32 v77, v79, v77
	v_div_scale_f32 v79, vcc_lo, v59, v68, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v77
	v_fma_f32 v82, -v75, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v82, v77
	v_fma_f32 v75, -v75, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v75, v77, v80
	v_div_scale_f32 v75, null, v68, v68, v57
	v_div_fixup_f32 v59, v82, v68, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v75
	v_fma_f32 v79, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v79, v77
	v_div_scale_f32 v79, vcc_lo, v57, v68, v57
	v_mul_f32_e32 v80, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v75, v80, v79
	v_fmac_f32_e32 v80, v87, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v80, v79
	v_div_fmas_f32 v87, v75, v77, v80
	v_div_scale_f32 v75, null, v68, v68, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v81, v87, v68, v57
	v_rcp_f32_e32 v77, v75
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v79, v77
	v_div_scale_f32 v79, vcc_lo, v58, v68, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v57, 15, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v80, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v75, v80, v79
	v_fmac_f32_e32 v80, v88, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v80, v79
	v_div_fmas_f32 v88, v75, v77, v80
	v_div_scale_f32 v75, null, v68, v68, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v82, v88, v68, v58
	v_rcp_f32_e32 v77, v75
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v60, v82
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v58, v58, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v75, v77, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v79, v77
	v_div_scale_f32 v79, vcc_lo, v33, v68, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v58
	v_and_b32_e32 v59, 15, v59
	v_and_b32_e32 v60, 15, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v80, v79, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v75, v80, v79
	v_fmac_f32_e32 v80, v89, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v80, v79
	v_div_fmas_f32 v75, v75, v77, v80
	v_div_scale_f32 v77, null, v68, v68, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v79, v77
	v_fma_f32 v80, -v77, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v31, v68, v31
	v_mul_f32_e32 v89, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v77, v89, v80
	v_fmac_f32_e32 v89, v90, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v77, v89, v80
	v_div_fmas_f32 v77, v77, v79, v89
	v_div_scale_f32 v79, null, v68, v68, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v80, v79
	v_fma_f32 v89, -v79, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v89, vcc_lo, v30, v68, v30
	v_mul_f32_e32 v90, v89, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v79, v90, v89
	v_fmac_f32_e32 v90, v91, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v79, v90, v89
	v_div_fmas_f32 v79, v79, v80, v90
	v_div_scale_f32 v80, null, v68, v68, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v80
	v_fma_f32 v90, -v80, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v29, v68, v29
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v80, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v80, v91, v90
	v_div_fmas_f32 v80, v80, v89, v91
	v_div_scale_f32 v89, null, v68, v68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v91, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v1, v68, v1
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v89, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_scale_f32 v90, null, v68, v68, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v1, v89, v68, v1
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v1, v1
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v1, v1, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v90, v91, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v56, v68, v56
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v87, 15, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v68, v68, v55
	v_div_fixup_f32 v56, v90, v68, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v92, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v56, v56, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v55, v68, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v88, 15, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v91, v94, v93
	v_fmac_f32_e32 v94, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	v_div_scale_f32 v92, null, v68, v68, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v55, v91, v68, v55
	v_rcp_f32_e32 v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v1, v55
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v1, v1, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v92, v93, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v54, v68, v54
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v89, 15, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v95, v94, v93
	v_fma_f32 v96, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v93
	v_fma_f32 v92, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v92, v92, v93, v95
	v_div_fixup_f32 v54, v92, v68, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v1, v54
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v1, v1, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v1, v1
	v_and_b32_e32 v90, 15, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v1, null, v68, v68, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[57:60]
	ds_store_b128 v76, v[87:90] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v54, v1
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v55, -v1, v54, 1.0
	v_fmac_f32_e32 v54, v55, v54
	v_div_scale_f32 v55, vcc_lo, v24, v68, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v55, v54
	v_fma_f32 v57, -v1, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v54
	v_fma_f32 v1, -v1, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v55, v1, v54, v56
	v_div_scale_f32 v1, null, v68, v68, v21
	v_rcp_f32_e32 v54, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v1, v54, 1.0
	v_fmac_f32_e32 v54, v56, v54
	v_div_scale_f32 v56, vcc_lo, v21, v68, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v56, v54
	v_fma_f32 v58, -v1, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v54
	v_fma_f32 v1, -v1, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v56, v1, v54, v57
	v_div_scale_f32 v1, null, v68, v68, v22
	v_rcp_f32_e32 v54, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v1, v54, 1.0
	v_fmac_f32_e32 v54, v57, v54
	v_div_scale_f32 v57, vcc_lo, v22, v68, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v57, v54
	v_fma_f32 v59, -v1, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v54
	v_fma_f32 v1, -v1, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v57, v1, v54, v58
	v_div_scale_f32 v1, null, v68, v68, v23
	v_rcp_f32_e32 v54, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v1, v54, 1.0
	v_fmac_f32_e32 v54, v58, v54
	v_div_scale_f32 v58, vcc_lo, v23, v68, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v59, v58, v54
	v_fma_f32 v60, -v1, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v60, v54
	v_fma_f32 v1, -v1, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v58, v1, v54, v59
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v1, v73, 0x40e00000, v71
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v63.l, v1.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v54, 1, v63
	v_add3_u32 v1, v1, v54, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v54, 0xffff0000, v1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_and_b16 v1.l, 0xff, v66.l
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v59, null, v54, v54, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v60, v59
	v_fma_f32 v71, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v71, v60
	v_div_scale_f32 v71, vcc_lo, v52, v54, v52
	v_mul_f32_e32 v73, v71, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v59, v73, v71
	v_fmac_f32_e32 v73, v81, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v73, v71
	v_div_fmas_f32 v73, v59, v60, v73
	v_div_scale_f32 v59, null, v54, v54, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v52, v73, v54, v52
	v_rcp_f32_e32 v60, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v59, v60, 1.0
	v_fmac_f32_e32 v60, v71, v60
	v_div_scale_f32 v71, vcc_lo, v51, v54, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v71, v60
	v_fma_f32 v82, -v59, v81, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v60
	v_fma_f32 v59, -v59, v81, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v59, v60, v81
	v_div_scale_f32 v59, null, v54, v54, v49
	v_div_fixup_f32 v51, v81, v54, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v60, v59
	v_fma_f32 v71, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v71, v60
	v_div_scale_f32 v71, vcc_lo, v49, v54, v49
	v_mul_f32_e32 v82, v71, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v59, v82, v71
	v_fmac_f32_e32 v82, v87, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v82, v71
	v_div_fmas_f32 v82, v59, v60, v82
	v_div_scale_f32 v59, null, v54, v54, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v73, v82, v54, v49
	v_rcp_f32_e32 v60, v59
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v49, v49, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v71, v60
	v_div_scale_f32 v71, vcc_lo, v50, v54, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v49, 15, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v87, v71, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v59, v87, v71
	v_fmac_f32_e32 v87, v88, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v87, v71
	v_div_fmas_f32 v87, v59, v60, v87
	v_div_scale_f32 v59, null, v54, v54, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v81, v87, v54, v50
	v_rcp_f32_e32 v60, v59
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v52, v81
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v50, v50, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v59, v60, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v71, v60
	v_div_scale_f32 v71, vcc_lo, v20, v54, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v50
	v_and_b32_e32 v51, 15, v51
	v_and_b32_e32 v52, 15, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v71, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v59, v88, v71
	v_fmac_f32_e32 v88, v89, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v88, v71
	v_div_fmas_f32 v59, v59, v60, v88
	v_div_scale_f32 v60, null, v54, v54, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v20, v59, v54, v20
	v_rcp_f32_e32 v71, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v60, v71, 1.0
	v_fmac_f32_e32 v71, v88, v71
	v_div_scale_f32 v88, vcc_lo, v19, v54, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v88, v71
	v_fma_f32 v90, -v60, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v71
	v_fma_f32 v60, -v60, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v60, v60, v71, v89
	v_div_scale_f32 v71, null, v54, v54, v18
	v_div_fixup_f32 v19, v60, v54, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v71
	v_fma_f32 v89, -v71, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v18, v54, v18
	v_mul_f32_e32 v90, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v71, v90, v89
	v_fmac_f32_e32 v90, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v90, v89
	v_div_fmas_f32 v71, v71, v88, v90
	v_div_scale_f32 v88, null, v54, v54, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v71, v54, v18
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v17, v54, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v99, v88, v89, v91
	v_div_scale_f32 v88, null, v54, v54, v2
	v_div_fixup_f32 v17, v99, v54, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v2, v54, v2
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v91, v90
	v_div_fmas_f32 v88, v88, v89, v91
	v_div_scale_f32 v89, null, v54, v54, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v2, v88, v54, v2
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v2, v2
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v2, v2, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v89, v90, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v48, v54, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v87, 15, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v90
	v_fma_f32 v89, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_scale_f32 v90, null, v54, v54, v47
	v_div_fixup_f32 v48, v89, v54, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v91, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v48, v48, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v90, v91, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v47, v54, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v93, v92, v91 :: v_dual_and_b32 v88, 15, v48
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v54, v54, v46
	v_div_fixup_f32 v47, v90, v54, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v92, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v2, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v2, v2, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v2, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v46, v54, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v94, v93, v92 :: v_dual_and_b32 v89, 15, v2
	v_fma_f32 v95, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v91, v91, v92, v94
	v_div_fixup_f32 v46, v91, v54, v46
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[91:94], v4
	ds_load_b128 v[95:98], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v2, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v2, v2, s0, 0x40e00000
	v_cvt_i32_f32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v90, 15, v2
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v62, 0x40e00000, v61
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[49:52]
	ds_store_b128 v76, v[87:90] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v63.l, v2.h
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v46, 1, v63
	v_add3_u32 v2, v2, v46, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v46, null, v54, v54, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v47, v46
	v_fma_f32 v48, -v46, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v16, v54, v16
	v_mul_f32_e32 v49, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v46, v49, v48
	v_fmac_f32_e32 v49, v50, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v46, v49, v48
	v_div_fmas_f32 v51, v46, v47, v49
	v_div_scale_f32 v46, null, v54, v54, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v47, v46
	v_fma_f32 v48, -v46, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v13, v54, v13
	v_mul_f32_e32 v49, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v46, v49, v48
	v_fmac_f32_e32 v49, v50, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v46, v49, v48
	v_div_fmas_f32 v52, v46, v47, v49
	v_div_scale_f32 v46, null, v54, v54, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v47, v46
	v_fma_f32 v48, -v46, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v14, v54, v14
	v_mul_f32_e32 v49, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v46, v49, v48
	v_fmac_f32_e32 v49, v50, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v46, v49, v48
	v_div_fmas_f32 v61, v46, v47, v49
	v_div_scale_f32 v46, null, v54, v54, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v47, v46
	v_fma_f32 v48, -v46, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v15, v54, v15
	v_mul_f32_e32 v49, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v46, v49, v48
	v_fmac_f32_e32 v49, v50, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v46, v49, v48
	v_div_fmas_f32 v62, v46, v47, v49
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v46, 0xffff0000, v2
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_lshlrev_b16 v2.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v47, null, v46, v46, v45
	v_rcp_f32_e32 v48, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v47, v48, 1.0
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v45, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v50, v49, v48
	v_fma_f32 v63, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v63, v48
	v_fma_f32 v47, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v47, v47, v48, v50
	v_div_scale_f32 v48, null, v46, v46, v44
	v_div_fixup_f32 v45, v47, v46, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v49, v48
	v_fma_f32 v50, -v48, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, vcc_lo, v44, v46, v44
	v_mul_f32_e32 v63, v50, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v48, v63, v50
	v_fmac_f32_e32 v63, v73, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v48, v63, v50
	v_div_fmas_f32 v48, v48, v49, v63
	v_div_scale_f32 v49, null, v46, v46, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v44, v48, v46, v44
	v_rcp_f32_e32 v50, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v49, v50, 1.0
	v_fmac_f32_e32 v50, v63, v50
	v_div_scale_f32 v63, vcc_lo, v42, v46, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v63, v50
	v_fma_f32 v81, -v49, v73, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v81, v50
	v_fma_f32 v49, -v49, v73, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v49, v49, v50, v73
	v_div_scale_f32 v50, null, v46, v46, v43
	v_div_fixup_f32 v47, v49, v46, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v63, v50
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v45
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v50, v63, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v63, v73, v63
	v_div_scale_f32 v73, vcc_lo, v43, v46, v43
	v_dual_mul_f32 v81, v73, v63 :: v_dual_and_b32 v42, 15, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v50, v81, v73
	v_fmac_f32_e32 v81, v82, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v50, v81, v73
	v_div_fmas_f32 v50, v50, v63, v81
	v_div_scale_f32 v63, null, v46, v46, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v48, v50, v46, v43
	v_rcp_f32_e32 v73, v63
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v45, v48
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v43, v43, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v63, v73, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v73, v81, v73
	v_div_scale_f32 v81, vcc_lo, v12, v46, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v43, 15, v43
	v_and_b32_e32 v44, 15, v44
	v_and_b32_e32 v45, 15, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v82, v81, v73
	v_div_fixup_f32 v31, v77, v68, v31
	v_div_fixup_f32 v30, v79, v68, v30
	v_div_fixup_f32 v29, v80, v68, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v63, v82, v81
	v_fmac_f32_e32 v82, v87, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v63, v82, v81
	v_div_fmas_f32 v63, v63, v73, v82
	v_div_scale_f32 v73, null, v46, v46, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v12, v63, v46, v12
	v_rcp_f32_e32 v81, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v73, v81, 1.0
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v11, v46, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v82, v81
	v_fma_f32 v88, -v73, v87, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v81
	v_fma_f32 v73, -v73, v87, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v73, v81, v87
	v_div_scale_f32 v81, null, v46, v46, v9
	v_div_fixup_f32 v11, v73, v46, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v82, v81
	v_fma_f32 v87, -v81, v82, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, vcc_lo, v9, v46, v9
	v_mul_f32_e32 v88, v87, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v81, v88, v87
	v_fmac_f32_e32 v88, v89, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v81, v88, v87
	v_div_fmas_f32 v100, v81, v82, v88
	v_div_scale_f32 v81, null, v46, v46, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v9, v100, v46, v9
	v_rcp_f32_e32 v82, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v81, v82, 1.0
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, vcc_lo, v8, v46, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v82
	v_fma_f32 v89, -v81, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v82
	v_fma_f32 v81, -v81, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v101, v81, v82, v88
	v_div_scale_f32 v81, null, v46, v46, v38
	v_div_fixup_f32 v8, v101, v46, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v82, v81
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v8, v8, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v81, v82, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v8, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, vcc_lo, v38, v46, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v8, 15, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v87, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v81, v88, v87
	v_fmac_f32_e32 v88, v89, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v81, v88, v87
	v_div_fmas_f32 v81, v81, v82, v88
	v_div_scale_f32 v82, null, v46, v46, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v38, v81, v46, v38
	v_rcp_f32_e32 v87, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v82, v87, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v41, v46, v41
	v_dual_mul_f32 v89, v88, v87 :: v_dual_and_b32 v38, 15, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v82, v89, v88
	v_fmac_f32_e32 v89, v90, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v89, v88
	v_div_fmas_f32 v82, v82, v87, v89
	v_div_scale_f32 v87, null, v46, v46, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v41, v82, v46, v41
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v87, v88, 1.0
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v40, v46, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v102, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v102, v88
	v_fma_f32 v87, -v87, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v88, v90
	v_div_scale_f32 v88, null, v46, v46, v39
	v_div_fixup_f32 v40, v87, v46, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v89, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v40, v40, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v39, v46, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v40, 15, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v102, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v88, v102, v90
	v_fmac_f32_e32 v102, v103, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v102, v90
	v_div_fmas_f32 v88, v88, v89, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v47, v88, v46, v39
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v41
	v_rndne_f32_e32 v41, v47
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v39, v39, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[47:50], v4
	ds_load_b128 v[87:90], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v41, v41
	v_and_b32_e32 v39, 15, v39
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v41, 15, v41
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[42:45]
	ds_store_b128 v76, v[38:41] offset:512
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v86, v53, v34
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v85, v53, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v36
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v39, 15, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v36, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v36, v36
	v_and_b32_e32 v34, 15, v34
	v_and_b32_e32 v35, 15, v35
	v_and_b32_e32 v37, 15, v37
	v_and_b32_e32 v40, 15, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v36, 15, v36
	v_and_b32_e32 v38, 15, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[42:45], v4
	ds_load_b128 v[81:84], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v75, v68, v33
	v_div_fixup_f32 v33, v55, v68, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v29, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v41, 15, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[34:37]
	ds_store_b128 v76, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v4
	ds_load_b128 v[38:41], v4 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v33, v51, v54, v16
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v17
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v33, null, v46, v46, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v29, v29
	v_and_b32_e32 v24, 15, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v17, v17
	v_and_b32_e32 v16, 15, v16
	v_and_b32_e32 v29, 15, v29
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v38, 4, v34
	v_lshl_or_b32 v26, v39, 4, v35
	v_lshl_or_b32 v27, v40, 4, v36
	v_lshl_or_b32 v34, v41, 4, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v56, v68, v21
	v_div_fixup_f32 v40, v57, v68, v22
	v_div_fixup_f32 v41, v58, v68, v23
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v32
	v_rndne_f32_e32 v22, v31
	v_rndne_f32_e32 v23, v30
	v_rndne_f32_e32 v30, v39
	v_rndne_f32_e32 v31, v40
	v_rndne_f32_e32 v32, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v52, v54, v13
	v_div_fixup_f32 v40, v61, v54, v14
	v_div_fixup_f32 v41, v62, v54, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v20
	v_rndne_f32_e32 v14, v19
	v_rndne_f32_e32 v15, v18
	v_rndne_f32_e32 v18, v39
	v_rndne_f32_e32 v19, v40
	v_rndne_f32_e32 v20, v41
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_and_b32_e32 v21, 15, v21
	v_and_b32_e32 v22, 15, v22
	v_and_b32_e32 v23, 15, v23
	v_and_b32_e32 v13, 15, v13
	v_and_b32_e32 v14, 15, v14
	v_and_b32_e32 v15, 15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v39, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v30, 15, v30
	v_and_b32_e32 v31, 15, v31
	v_and_b32_e32 v32, 15, v32
	v_and_b32_e32 v17, 15, v17
	v_and_b32_e32 v18, 15, v18
	v_and_b32_e32 v19, 15, v19
	v_and_b32_e32 v20, 15, v20
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[21:24]
	ds_store_b128 v76, v[29:32] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v4
	ds_load_b128 v[29:32], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[13:16]
	ds_store_b128 v76, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v4
	ds_load_b128 v[17:20], v4 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v40, -v33, v39, 1.0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v35, v95, 4, v91
	v_lshl_or_b32 v36, v96, 4, v92
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v10, v46, v10
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v97, 4, v93
	v_lshl_or_b32 v38, v98, 4, v94
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v41, v40, v39
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v29, 4, v21
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v23, v31, 4, v23
	v_lshl_or_b32 v24, v32, 4, v24
	v_lshl_or_b32 v29, v87, 4, v47
	v_lshl_or_b32 v30, v88, 4, v48
	v_lshl_or_b32 v13, v17, 4, v13
	v_lshl_or_b32 v17, v81, 4, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v42, -v33, v41, v40
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v14, v18, 4, v14
	v_lshl_or_b32 v18, v82, 4, v43
	v_lshl_or_b32 v15, v19, 4, v15
	v_lshl_or_b32 v19, v83, 4, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v41, v42, v39
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v20, 4, v16
	v_lshl_or_b32 v20, v84, 4, v45
	v_lshl_or_b32 v31, v89, 4, v49
	v_lshl_or_b32 v32, v90, 4, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v33, -v33, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v33, v33, v39, v41
	v_div_scale_f32 v39, null, v46, v46, v5
	v_div_fixup_f32 v10, v33, v46, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v5, v46, v5
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_scale_f32 v40, null, v46, v46, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v33, v39, v46, v5
	v_rcp_f32_e32 v41, v40
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v5, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v42, -v40, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v5, v5
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v6, v46, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v5, 15, v5
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v43, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v40, v43, v42
	v_fmac_f32_e32 v43, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v43, v42
	v_div_fmas_f32 v40, v40, v41, v43
	v_div_scale_f32 v41, null, v46, v46, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v39, v40, v46, v6
	v_rcp_f32_e32 v42, v41
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v11, v39
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v6, v6, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v11, v11, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v6, v6
	v_cvt_i32_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v7, v46, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v6, 15, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v44, v43, v42 :: v_dual_and_b32 v11, 15, v11
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v41, v41, v42, v44
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v42, 4, v160
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v40, v41, v46, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v9
	v_rndne_f32_e32 v9, v10
	v_rndne_f32_e32 v10, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_rndne_f32_e32 v12, v40
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v7, v7, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v12, v12
	v_and_b32_e32 v7, 15, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 15, v9
	v_and_b32_e32 v10, 15, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v12, 15, v12
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v76, v[5:8]
	ds_store_b128 v76, v[9:12] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v4
	ds_load_b128 v[9:12], v4 offset:1024
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_and_b16 v4.l, 0xff, v64.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v33, v9, 4, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s0, s22, v42
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v10, 4, v6
	v_lshl_or_b32 v40, v11, 4, v7
	v_lshl_or_b32 v41, v12, 4, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s23, 0, s0
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, s22, v42
	v_lshl_or_b32 v7, s30, 7, v43
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 32, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[5:6]
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_or_b16 v5.h, v1.l, v0.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v12, s6, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v5.l, v4.l, v2.l
	v_lshlrev_b16 v0.l, 8, v34.l
	v_and_b16 v1.l, 0xff, v27.l
	v_lshlrev_b16 v2.l, 8, v26.l
	v_and_b16 v4.l, 0xff, v25.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v6.h, v1.l, v0.l
	v_lshlrev_b16 v0.l, 8, v38.l
	v_or_b16 v6.l, v4.l, v2.l
	v_cndmask_b32_e32 v4, 0x80000000, v8, vcc_lo
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 48, v42
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_and_b16 v1.l, 0xff, v37.l
	v_lshlrev_b16 v2.l, 8, v36.l
	buffer_store_b64 v[5:6], v4, s[12:15], 0 offen
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v42
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v8, s0, s22, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v9, null, s23, 0, s0
	v_add_co_u32 v5, s4, s22, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s23, 0, s4
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_and_b16 v4.l, 0xff, v35.l
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v10, s0, s22, v10
	v_add_co_ci_u32_e64 v11, null, s23, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[8:9]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[24:25], v[5:6]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[5:6]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, 16, v12
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v8.h, v1.l, v0.l
	v_or_b16 v8.l, v4.l, v2.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 32, v12
	v_add_nc_u32_e32 v12, 48, v12
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v24.l
	v_and_b16 v1.l, 0xff, v23.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[5:6], null, v5, s6, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v2.l, 8, v22.l
	v_and_b16 v4.l, 0xff, v21.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s4, s5
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[24:25], v[10:11]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[10:11]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v9, s6, v[7:8]
	v_mad_u64_u32 v[11:12], null, v12, s6, v[7:8]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v9.h, v1.l, v0.l
	v_or_b16 v9.l, v4.l, v2.l
	v_cndmask_b32_e64 v7, 0x80000000, v5, s4
	v_lshlrev_b16 v4.h, 8, v16.l
	v_and_b16 v5.l, 0xff, v15.l
	v_lshlrev_b16 v5.h, 8, v14.l
	v_and_b16 v6.l, 0xff, v13.l
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v1.l, 0xff, v31.l
	v_lshlrev_b16 v2.l, 8, v30.l
	v_and_b16 v4.l, 0xff, v29.l
	buffer_store_b64 v[8:9], v7, s[12:15], 0 offen
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.l, v5.h
	v_lshlrev_b16 v4.h, 8, v41.l
	v_and_b16 v5.l, 0xff, v40.l
	v_lshlrev_b16 v5.h, 8, v39.l
	v_and_b16 v6.l, 0xff, v33.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v7.h, v1.l, v0.l
	v_or_b16 v7.l, v4.l, v2.l
	v_lshlrev_b16 v0.l, 8, v20.l
	v_and_b16 v1.l, 0xff, v19.l
	v_lshlrev_b16 v2.l, 8, v18.l
	v_and_b16 v4.l, 0xff, v17.l
	v_cndmask_b32_e64 v12, 0x80000000, v10, s1
	v_or_b16 v10.h, v5.l, v4.h
	v_or_b16 v10.l, v6.l, v5.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v9.h, v1.l, v0.l
	v_or_b16 v9.l, v4.l, v2.l
	v_cndmask_b32_e32 v4, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v42
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s20, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v12, s[12:15], 0 offen
	buffer_store_b64 v[9:10], v4, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v43
	v_mov_b16_e32 v2.l, v0.h
	v_mov_b16_e32 v1.l, v28.h
	v_add3_u32 v0, v5, v6, v43
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s20, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v160
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s30, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 368
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
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 368
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 35068
; TotalNumSgprs: 38
; NumVgprs: 256
; ScratchSize: 368
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 38
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 368
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 91
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
