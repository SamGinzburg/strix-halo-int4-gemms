	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s47, s[0:1], 0x64
	s_load_b32 s58, s[0:1], 0x5c
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v11, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v45, 2, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s8, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s8
	s_sub_i32 s5, 0, s8
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 2, v11
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s4
	s_mul_hi_u32 s5, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s4, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s47
	s_mul_hi_u32 s4, s6, s9
	s_ashr_i32 s10, s5, 31
	s_mul_i32 s7, s4, s8
	s_sub_i32 s5, s6, s7
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s8
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s6, s4
	s_load_b64 s[4:5], s[0:1], 0x0
	s_xor_b32 s6, s6, s10
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s58, v1
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s10, s6, s10
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s13, s10, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s10, s10, s47
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s13, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, s13, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s12, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s46, s2, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s44, 1, v10
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, v3, s58, v[1:2]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s44
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	v_and_b32_e32 v2, 0x60, v0
	buffer_load_b32 v1, v1, s[4:7], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s47, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 2, v2
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s5, s4, s47
	s_abs_i32 s4, s4
	s_ashr_i32 s5, s5, 31
	s_mul_hi_u32 s6, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v45, v3, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s7, s6, s8
	s_add_i32 s9, s6, 1
	s_sub_i32 s4, s4, s7
	v_lshrrev_b32_e32 v50, 3, v2
	s_sub_i32 s2, s4, s8
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s8
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s5
	s_sub_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s46, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s59, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s4, s59, s2
	s_mov_b32 s2, 0
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s76, s4, 0x800
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s59, s76
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v9, 3, v2
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr9
.LBB0_3:                                ; %Flow91
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b32 s45, s[0:1], 0x60
	v_and_b32_e32 v49, 0x78, v0
	v_and_b32_e32 v48, 15, v0
	v_lshlrev_b32_e32 v46, 1, v0
	v_and_b32_e32 v47, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s13, v48
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s12, v48, 1
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	v_dual_mov_b32 v26, 0x5410 :: v_dual_lshlrev_b32 v9, 3, v11
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v1
	v_dual_mov_b32 v28, 0x7632 :: v_dual_and_b32 v13, 16, v0
	v_lshlrev_b32_e32 v6, 4, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v4, v0, 4, 1
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v47
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v3, 1, v49
	v_dual_mov_b32 v130, 0xff800000 :: v_dual_and_b32 v5, 24, v46
	v_and_b32_e32 v8, 0x70, v0
	v_dual_mov_b32 v31, 0xff800000 :: v_dual_lshlrev_b32 v14, 3, v48
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s9, 0xffff
	s_mov_b32 s60, s8
	v_cndmask_b32_e64 v19, 0x420, 0, vcc_lo
	buffer_load_u16 v12, v1, s[60:63], 0 offen
	v_bfe_i32 v22, v0, 2, 1
	v_lshlrev_b32_e32 v29, 4, v11
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v7, 24, v0
	v_lshlrev_b32_e32 v17, 5, v0
	v_and_b32_e32 v18, 28, v0
	v_lshlrev_b32_e32 v20, 3, v0
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x68
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s77, s3, 11
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v30, v48, 5, v5
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v54, 0x800, v4
	v_sub_nc_u32_e32 v55, 0x800, v3
	v_or_b32_e32 v57, s77, v4
	v_lshrrev_b32_e32 v32, 1, v8
	v_lshl_or_b32 v14, v8, 4, v14
	v_and_b32_e32 v22, 0x840, v22
	v_mad_u64_u32 v[36:37], null, s45, v3, v[9:10]
	v_cmp_eq_u32_e64 s1, 0, v13
	v_xor_b32_e32 v38, v29, v49
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_and_or_b32 v19, v20, 16, v19
	v_mov_b32_e32 v8, v1
	v_and_or_b32 v58, 0x3e0, v17, v18
	v_lshlrev_b32_e32 v18, 4, v7
	v_xor_b32_e32 v56, v6, v7
	v_cndmask_b32_e64 v37, 0x1054, v26, s1
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v39, 8, v30
	v_xor_b32_e32 v40, 16, v30
	v_or3_b32 v67, v19, v22, v18
	v_lshl_or_b32 v68, v11, 10, v38
	v_bfe_i32 v23, v0, 3, 1
	v_bfe_i32 v24, v0, 5, 1
	v_add_nc_u32_e32 v59, 0, v30
	v_xor_b32_e32 v30, 24, v30
	v_xor_b32_e32 v41, 8, v56
	v_xor_b32_e32 v42, 20, v58
	v_xor_b32_e32 v43, 24, v58
	v_xor_b32_e32 v44, 28, v58
	v_lshl_or_b32 v19, v37, 8, v37
	v_add_nc_u32_e32 v87, 0, v39
	v_add_nc_u32_e32 v88, 0, v40
	v_xor_b32_e32 v37, 32, v67
	v_xor_b32_e32 v38, 64, v67
	v_xor_b32_e32 v39, 0x60, v67
	v_xor_b32_e32 v40, 0x1b0, v68
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v15, 14, v0
	v_dual_mov_b32 v25, 0xff800000 :: v_dual_lshlrev_b32 v16, 6, v47
	v_dual_mov_b32 v26, v1 :: v_dual_and_b32 v21, 4, v0
	v_and_b32_e32 v17, 0x60, v17
	v_and_b32_e32 v20, 0x420, v23
	v_and_b32_e32 v24, 0x840, v24
	v_lshl_or_b32 v29, v2, 6, v29
	v_and_or_b32 v23, 0x410, v23, v2
	v_cndmask_b32_e64 v18, 0x3276, v28, s1
	v_add_nc_u32_e32 v89, 0, v30
	v_add_nc_u32_e32 v91, 0, v41
	v_add_nc_u32_e32 v97, 0, v42
	v_add_nc_u32_e32 v98, 0, v43
	v_add_nc_u32_e32 v99, 0, v44
	v_add_nc_u32_e32 v108, 0, v37
	v_add_nc_u32_e32 v109, 0, v38
	v_add_nc_u32_e32 v110, 0, v39
	v_add_nc_u32_e32 v113, 0, v40
	ds_load_b64 v[37:38], v59
	ds_load_b64 v[39:40], v87
	ds_load_b64 v[41:42], v88
	ds_load_b64 v[43:44], v89
	v_xor_b32_e32 v52, v45, v50
	v_lshlrev_b32_e32 v33, 2, v15
	v_dual_mov_b32 v7, v1 :: v_dual_lshlrev_b32 v34, 3, v13
	v_lshl_or_b32 v15, v15, 7, v16
	v_lshl_add_u32 v21, v21, 7, 0
	v_xor_b32_e32 v14, v14, v32
	v_xor3_b32 v17, v20, v17, v24
	v_xor_b32_e32 v20, v23, v29
	v_and_b32_e32 v19, 0x540054, v19
	v_lshl_or_b32 v18, v18, 8, v18
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s1, s12, 0x3fb8aa3b
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_xor_b32_e32 v16, 0x210, v52
	s_lshr_b32 s0, s0, 29
	v_or3_b32 v66, v15, v34, v33
	s_add_i32 s2, s3, s0
	v_xor_b32_e32 v15, 4, v58
	v_xor_b32_e32 v32, 8, v58
	v_xor_b32_e32 v33, 12, v58
	v_lshl_or_b32 v90, v11, 7, v20
	v_add_nc_u32_e32 v92, 0, v14
	v_lshl_or_b32 v11, v19, 4, v19
	v_and_b32_e32 v14, 0x760076, v18
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s2, -8
	v_mul_lo_u32 v10, v10, s15
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s2, s2, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	v_xor_b32_e32 v34, 16, v58
	v_add_nc_u32_e32 v69, 0, v16
	v_xor_b32_e32 v16, 8, v66
	v_xor_b32_e32 v22, 16, v66
	v_xor_b32_e32 v23, 24, v66
	v_xor_b32_e32 v24, 32, v66
	v_xor_b32_e32 v28, 40, v66
	v_xor_b32_e32 v29, 48, v66
	v_xor_b32_e32 v30, 56, v66
	v_xor_b32_e32 v114, 0x240, v68
	v_xor_b32_e32 v115, 0x2d0, v68
	v_xor_b32_e32 v116, 0x360, v68
	v_xor_b32_e32 v117, 0x3f0, v68
	v_add_nc_u32_e32 v93, 0, v15
	v_add_nc_u32_e32 v94, 0, v32
	v_add_nc_u32_e32 v95, 0, v33
	v_xor_b32_e32 v15, 16, v90
	v_xor_b32_e32 v18, 32, v90
	v_xor_b32_e32 v19, 48, v90
	v_xor_b32_e32 v20, 64, v90
	v_xor_b32_e32 v32, 0x50, v90
	v_xor_b32_e32 v33, 0x60, v90
	v_and_b32_e32 v118, 0x5040504, v11
	v_lshl_or_b32 v11, v14, 4, v14
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s8, s14, s8
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s2, s13, s2
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v51, 1, v0
	s_add_i32 s8, s8, s2
	v_dual_mov_b32 v2, v1 :: v_dual_lshlrev_b32 v35, 4, v47
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s45, v9
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v53, 0x800, v9
	v_or_b32_e32 v60, 16, v57
	v_or_b32_e32 v61, 18, v57
	v_or_b32_e32 v62, 20, v57
	v_or_b32_e32 v63, 22, v57
	v_or_b32_e32 v64, 24, v57
	v_or_b32_e32 v65, 26, v57
	v_or_b32_e32 v70, 28, v57
	v_or_b32_e32 v71, 30, v57
	v_or_b32_e32 v72, 32, v57
	v_or_b32_e32 v73, 34, v57
	v_or_b32_e32 v74, 36, v57
	v_or_b32_e32 v75, 38, v57
	v_or_b32_e32 v76, 40, v57
	v_or_b32_e32 v77, 42, v57
	v_or_b32_e32 v78, 44, v57
	v_or_b32_e32 v79, 46, v57
	v_or_b32_e32 v80, 48, v57
	v_or_b32_e32 v81, 50, v57
	v_or_b32_e32 v82, 52, v57
	v_or_b32_e32 v83, 54, v57
	v_or_b32_e32 v84, 56, v57
	v_or_b32_e32 v85, 58, v57
	v_or_b32_e32 v86, 60, v57
	v_add_nc_u32_e32 v96, 0, v34
	v_add_nc_u32_e32 v101, 0, v16
	v_add_nc_u32_e32 v102, 0, v22
	v_add_nc_u32_e32 v103, 0, v23
	v_add_nc_u32_e32 v104, 0, v24
	v_add_nc_u32_e32 v105, 0, v28
	v_add_nc_u32_e32 v106, 0, v29
	v_add_nc_u32_e32 v107, 0, v30
	v_add_nc_u32_e32 v114, 0, v114
	v_add_nc_u32_e32 v115, 0, v115
	v_add_nc_u32_e32 v116, 0, v116
	v_add_nc_u32_e32 v117, 0, v117
	v_add_nc_u32_e32 v119, 0, v15
	v_add_nc_u32_e32 v120, 0, v18
	v_add_nc_u32_e32 v121, 0, v19
	v_add_nc_u32_e32 v122, 0, v20
	v_add_nc_u32_e32 v123, 0, v32
	v_add_nc_u32_e32 v124, 0, v33
	v_add3_u32 v126, s8, v9, v10
	v_and_b32_e32 v127, 0x7060706, v11
	v_or_b32_e32 v129, 62, v57
	.loc	1 774 26                        ; attention.py:774:26
	s_mov_b32 s48, 0
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s78, s45, 1
	s_mul_i32 s79, s45, 3
	s_mov_b32 s80, 0x76543210
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s74, s62
	s_mov_b32 s75, s63
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s73, s7, 0xffff
	s_mov_b32 s68, s10
	s_mov_b32 s72, s6
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s69, s11
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e32 vcc_lo, s58, v35
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v128, s1, v12 :: v_dual_and_b32 v27, 0x80, v46
	v_add3_u32 v17, v21, v27, v17
	v_xor_b32_e32 v21, 0x90, v68
	v_xor_b32_e32 v27, 0x120, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v100, v17, v13
	v_xor_b32_e32 v13, 0x70, v90
	v_add_nc_u32_e32 v111, 0, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v112, 0, v27
	v_add_nc_u32_e32 v125, 0, v13
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s12, s59, s77
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s1, s59, v53
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v18, 0x800, v51
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v19, v126, s59, 1
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v153, s12, v51
	v_or_b32_e32 v21, 2, v57
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s10, s44, s1
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s2, s59, v18
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v154, 0x80000000, v19, s10
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[18:19], null, v153, s58, v[35:36]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v20, s59, v57, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s1, vcc_lo, s2
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_lt_i32_e64 s4, s59, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v132, v63, s59, 1
	v_add_lshl_u32 v21, v21, s59, 1
	v_or_b32_e32 v22, 4, v57
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v155, 0x80000000, v20, s4
	v_cndmask_b32_e64 v156, 0x80000000, v132, s4
	v_cndmask_b32_e64 v132, 0x80000000, v21, s4
	v_or_b32_e32 v23, 6, v57
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[18:21], v18, s[60:63], 0 offen
	v_or_b32_e32 v24, 8, v57
	v_or_b32_e32 v28, 10, v57
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v22, v22, s59, 1
	v_add_lshl_u32 v23, v23, s59, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v17, 0, v56
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v24, v24, s59, 1
	v_add_lshl_u32 v28, v28, s59, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s48 :: v_dual_mov_b32 v12, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v10, s49
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_cndmask_b32_e64 v28, 0x80000000, v28, s4
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v33, 14, v57
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v34, v61, s59, 1
	v_add_lshl_u32 v131, v62, s59, 1
	v_add_lshl_u32 v133, v64, s59, 1
	v_add_lshl_u32 v134, v65, s59, 1
	v_add_lshl_u32 v33, v33, s59, 1
	v_add_lshl_u32 v135, v70, s59, 1
	v_add_lshl_u32 v136, v71, s59, 1
	v_add_lshl_u32 v148, v83, s59, 1
	v_add_lshl_u32 v149, v84, s59, 1
	v_add_lshl_u32 v150, v85, s59, 1
	v_add_lshl_u32 v151, v86, s59, 1
	v_add_lshl_u32 v152, v129, s59, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v131, 0x80000000, v131, s4
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	v_cndmask_b32_e64 v157, 0x80000000, v133, s4
	v_cndmask_b32_e64 v159, 0x80000000, v134, s4
	v_cndmask_b32_e64 v160, 0x80000000, v135, s4
	v_cndmask_b32_e64 v161, 0x80000000, v136, s4
	v_cndmask_b32_e64 v177, 0x80000000, v148, s4
	v_cndmask_b32_e64 v178, 0x80000000, v149, s4
	v_cndmask_b32_e64 v183, 0x80000000, v150, s4
	v_cndmask_b32_e64 v184, 0x80000000, v151, s4
	v_cndmask_b32_e64 v185, 0x80000000, v152, s4
	v_or_b32_e32 v30, 12, v57
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v11, s50 :: v_dual_mov_b32 v14, s53
	v_dual_mov_b32 v13, s52 :: v_dual_mov_b32 v16, s55
	v_dual_mov_b32 v15, s54 :: v_dual_add_nc_u32 v158, 0, v66
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v32, v60, s59, 1
	v_add_lshl_u32 v140, v75, s59, 1
	v_add_lshl_u32 v141, v76, s59, 1
	v_add_lshl_u32 v142, v77, s59, 1
	v_add_lshl_u32 v143, v78, s59, 1
	v_add_lshl_u32 v144, v79, s59, 1
	v_add_lshl_u32 v145, v80, s59, 1
	v_add_lshl_u32 v146, v81, s59, 1
	v_add_lshl_u32 v147, v82, s59, 1
	v_add_lshl_u32 v30, v30, s59, 1
	v_add_lshl_u32 v137, v72, s59, 1
	v_add_lshl_u32 v138, v73, s59, 1
	v_add_lshl_u32 v139, v74, s59, 1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s4
	v_cndmask_b32_e64 v162, 0x80000000, v140, s4
	v_cndmask_b32_e64 v164, 0x80000000, v141, s4
	v_cndmask_b32_e64 v165, 0x80000000, v142, s4
	v_cndmask_b32_e64 v166, 0x80000000, v143, s4
	v_cndmask_b32_e64 v171, 0x80000000, v144, s4
	v_cndmask_b32_e64 v172, 0x80000000, v145, s4
	v_cndmask_b32_e64 v173, 0x80000000, v146, s4
	v_cndmask_b32_e64 v176, 0x80000000, v147, s4
	v_cndmask_b32_e64 v30, 0x80000000, v30, s4
	v_cndmask_b32_e64 v137, 0x80000000, v137, s4
	v_cndmask_b32_e64 v138, 0x80000000, v138, s4
	v_cndmask_b32_e64 v139, 0x80000000, v139, s4
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v27.l, 0
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v215.l, v27.l
	v_mov_b16_e64 v214.l, v27.l
	v_mov_b16_e64 v216.l, v27.l
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[18:19]
	ds_store_b64 v91, v[20:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[210:213], v154, s[64:67], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x5
	buffer_load_u16 v217, v155, s[68:71], 0 offen
	buffer_load_u16 v132, v132, s[68:71], 0 offen
	buffer_load_u16 v189, v22, s[68:71], 0 offen
	buffer_load_u16 v188, v23, s[68:71], 0 offen
	buffer_load_u16 v186, v24, s[68:71], 0 offen
	buffer_load_u16 v181, v28, s[68:71], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[133:136], v59 offset1:1
	ds_load_2addr_stride64_b64 v[148:151], v59 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[152:155], v87 offset1:1
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x4
	buffer_load_u16 v179, v33, s[68:71], 0 offen
	buffer_load_u16 v175, v34, s[68:71], 0 offen
	buffer_load_u16 v174, v131, s[68:71], 0 offen
	buffer_load_u16 v180, v30, s[68:71], 0 offen
	buffer_load_u16 v182, v32, s[68:71], 0 offen
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v130, v130, v130
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[140:147], v[135:136], v[37:38], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[133:134], v[37:38], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[194:201], v[148:149], v[37:38], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[202:209], v[150:151], v[37:38], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v87 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[140:147], v[154:155], v[39:40], v[140:147] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x14
	buffer_load_u16 v167, v156, s[68:71], 0 offen
	buffer_load_u16 v168, v157, s[68:71], 0 offen
	buffer_load_u16 v169, v159, s[68:71], 0 offen
	buffer_load_u16 v170, v160, s[68:71], 0 offen
	buffer_load_u16 v163, v161, s[68:71], 0 offen
	buffer_load_u16 v161, v137, s[68:71], 0 offen
	buffer_load_u16 v160, v138, s[68:71], 0 offen
	buffer_load_u16 v159, v139, s[68:71], 0 offen
	buffer_load_u16 v154, v162, s[68:71], 0 offen
	buffer_load_u16 v151, v164, s[68:71], 0 offen
	buffer_load_u16 v150, v165, s[68:71], 0 offen
	buffer_load_u16 v148, v166, s[68:71], 0 offen
	buffer_load_u16 v139, v171, s[68:71], 0 offen
	buffer_load_u16 v30, v172, s[68:71], 0 offen
	buffer_load_u16 v32, v173, s[68:71], 0 offen
	buffer_load_u16 v33, v176, s[68:71], 0 offen
	buffer_load_u16 v34, v177, s[68:71], 0 offen
	buffer_load_u16 v135, v178, s[68:71], 0 offen
	buffer_load_u16 v136, v183, s[68:71], 0 offen
	buffer_load_u16 v137, v184, s[68:71], 0 offen
	buffer_load_u16 v138, v185, s[68:71], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v88 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[152:153], v[39:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[194:201], v[9:10], v[39:40], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[202:209], v[11:12], v[39:40], v[202:209] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v88 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[13:14], v[41:42], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[15:16], v[41:42], v[140:147] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v89 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[194:201], v[9:10], v[41:42], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[202:209], v[11:12], v[41:42], v[202:209] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v89 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[13:14], v[43:44], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[15:16], v[43:44], v[140:147] neg_lo:[1,1,0]
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v131, v17
	v_cvt_f32_i32_e32 v133, v18
	v_cvt_f32_i32_e32 v192, v19
	v_cvt_f32_i32_e32 v191, v20
	v_cvt_f32_i32_e32 v190, v21
	v_mul_f32_e32 v131, v128, v131
	v_cvt_f32_i32_e32 v187, v22
	v_cvt_f32_i32_e32 v185, v23
	v_cvt_f32_i32_e32 v184, v24
	v_mul_f32_e32 v133, v128, v133
	v_mul_f32_e32 v191, v128, v191
	v_cvt_f32_i32_e32 v173, v144
	v_cvt_f32_i32_e32 v178, v141
	v_cvt_f32_i32_e32 v177, v142
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[194:201], v[9:10], v[43:44], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[202:209], v[11:12], v[43:44], v[202:209] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v176, v143
	v_cvt_f32_i32_e32 v171, v146
	v_cvt_f32_i32_e32 v172, v145
	v_cvt_f32_i32_e32 v166, v147
	v_cvt_f32_i32_e32 v165, v194
	v_cvt_f32_i32_e32 v164, v195
	v_cvt_f32_i32_e32 v162, v196
	v_mul_f32_e32 v172, v128, v172
	v_mul_f32_e32 v166, v128, v166
	v_cvt_f32_i32_e32 v183, v140
	v_cvt_f32_i32_e32 v157, v197
	v_cvt_f32_i32_e32 v156, v198
	v_cvt_f32_i32_e32 v155, v199
	v_cvt_f32_i32_e32 v149, v201
	v_cvt_f32_i32_e32 v153, v200
	v_cvt_f32_i32_e32 v141, v203
	v_cvt_f32_i32_e32 v142, v204
	v_mul_f32_e32 v155, v128, v155
	v_cvt_f32_i32_e32 v143, v205
	v_cvt_f32_i32_e32 v144, v206
	v_cvt_f32_i32_e32 v146, v208
	v_cvt_f32_i32_e32 v140, v202
	v_cvt_f32_i32_e32 v147, v209
	v_cvt_f32_i32_e32 v145, v207
	v_mul_f32_e32 v144, v128, v144
	v_mul_f32_e32 v146, v128, v146
	v_mul_f32_e32 v178, v128, v178
	v_mul_f32_e32 v176, v128, v176
	v_mul_f32_e32 v147, v128, v147
	v_mul_f32_e32 v149, v128, v149
	v_mul_f32_e32 v162, v128, v162
	v_mul_f32_e32 v164, v128, v164
	v_mul_f32_e32 v140, v128, v140
	v_mul_f32_e32 v165, v128, v165
	v_mul_f32_e32 v157, v128, v157
	v_mul_f32_e32 v142, v128, v142
	v_mul_f32_e32 v145, v128, v145
	v_mul_f32_e32 v141, v128, v141
	v_mul_f32_e32 v143, v128, v143
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(32)
	v_cndmask_b32_e64 v14, 0xff80ff80, v213, s10
	v_cndmask_b32_e64 v13, 0xff80ff80, v212, s10
	v_cndmask_b32_e64 v16, 0xff80ff80, v211, s10
	v_cndmask_b32_e64 v15, 0xff80ff80, v210, s10
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v188, 16, v188
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v215.h, v14.l
	v_mov_b16_e64 v214.h, v13.l
	v_mov_b16_e64 v216.h, v16.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e32 v10.l, v13.l
	v_mov_b16_e32 v10.h, v14.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v215
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e32 v9.l, v15.l
	v_mov_b16_e32 v9.h, v16.l
	v_mov_b16_e32 v12.l, v13.h
	v_mov_b16_e32 v12.h, v14.h
	v_mov_b16_e32 v11.l, v15.h
	v_mov_b16_e32 v11.h, v16.h
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v27.h, v15.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v214
	v_cmp_neq_f32_e64 s8, 0xff800000, v216
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s4, s10, s4
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b64 v92, v[9:10], v[11:12] offset1:16
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v11, 0, 1, s4
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v16, 0xffff0000, v16
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v27
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s7, s10, s2
	s_and_b32 s8, s10, s8
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v13, 0xffff0000, v13
	v_and_b32_e32 v15, 0xffff0000, v15
	v_and_b32_e32 v14, 0xffff0000, v14
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v12, 0, 1, s7
	v_cndmask_b32_e64 v28, 0, 1, s8
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v16
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, s10, s9
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v13
	v_cmp_neq_f32_e64 s6, 0xff800000, v15
	v_cmp_neq_f32_e64 s11, 0xff800000, v14
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[23:24], v158
	ds_load_b64 v[21:22], v101
	ds_load_b64 v[19:20], v102
	ds_load_b64 v[17:18], v103
	ds_load_b64 v[15:16], v104
	ds_load_b64 v[13:14], v105
	ds_load_b64 v[9:10], v106
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v134, 0, 1, s9
	v_or_b16 v158.h, v12.l, v11.l
	v_mov_b16_e32 v11.l, v28.l
	s_and_b32 s5, s10, s5
	s_and_b32 s6, s10, s6
	v_cndmask_b32_e64 v152, 0, 1, s5
	v_mov_b16_e64 v12.l, v134.l
	v_lshlrev_b16 v11.l, 8, v11.l
	s_and_b32 s1, s10, s1
	s_and_b32 s10, s10, s11
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.l, v27.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v28, 0, 1, s10
	v_or_b16 v158.l, v12.l, v11.l
	v_mov_b16_e64 v11.l, v152.l
	v_cndmask_b32_e64 v12, 0, 1, s6
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v134.h, v23.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v23, 0xffff0000, v23
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v193, 0, v52
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v132, 16, v132
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(27)
	v_dual_mul_f32 v23, 0x3fb8aa3b, v23 :: v_dual_lshlrev_b32 v186, 16, v186
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v167, 16, v167
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v152.l, v12.l, v11.l
	v_mov_b16_e32 v11.l, v28.l
	v_cndmask_b32_e64 v12, 0, 1, s1
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v23, v133, v132 :: v_dual_add_nc_u32 v28, 0, v67
	v_dual_mov_b32 v133, v26 :: v_dual_add_nc_u32 v132, 0, v90
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v26, 16, v189
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v189, 16, v24
	v_and_b32_e32 v24, 0xffff0000, v24
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v152.h, v12.l, v11.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[11:12], v107
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v193, v158
	ds_store_b32 v69, v152
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v158, 0x3fb8aa3b, v134
	v_dual_mov_b32 v134, v25 :: v_dual_mul_f32 v25, v128, v192
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v189, 0x3fb8aa3b, v189
	v_dual_mul_f32 v24, 0x3fb8aa3b, v24 :: v_dual_lshlrev_b32 v193, 16, v217
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v29, 0, v58
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v192.h, v19.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v189, v25, v26 :: v_dual_fmac_f32 v158, v131, v193
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v193.l, v27.l
	v_mov_b16_e64 v193.h, v17.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v131, 0, v68
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v24, v191, v188
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v188, v128, v190
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v174, 16, v174
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v190, v128, v173
	v_mul_f32_e32 v173, 0x3fb8aa3b, v193
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v19, 0xffff0000, v19
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v175, 16, v175
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v171, v128, v171 :: v_dual_lshlrev_b32 v168, 16, v168
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v19, 0x3fb8aa3b, v19 :: v_dual_lshlrev_b32 v170, 16, v170
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v17, 0xffff0000, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v173, v190, v168
	v_mad_u64_u32 v[25:26], null, s12, s45, v[36:37]
	v_fmac_f32_e32 v19, v178, v175
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v175, v128, v177
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v26.l, v27.l
	v_mov_b16_e32 v26.h, v21.l
	v_lshlrev_b32_e32 v169, 16, v169
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v17, 0x3fb8aa3b, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v191.l, v27.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v21, 0xffff0000, v21
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v26, 0x3fb8aa3b, v26 :: v_dual_lshlrev_b32 v163, 16, v163
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v17, v172, v169 :: v_dual_lshlrev_b32 v172, 16, v18
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v18, 0xffff0000, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v26, v188, v186 :: v_dual_lshlrev_b32 v181, 16, v181
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v186, v128, v187
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v191.h, v15.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v18, 0x3fb8aa3b, v18 :: v_dual_mul_f32 v21, 0x3fb8aa3b, v21
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v180, 16, v180
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v191, 0x3fb8aa3b, v191
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v18, v166, v163
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v15, 0xffff0000, v15
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v21, v186, v181
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v181, v128, v185
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v185, 16, v22
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v191, v165, v161 :: v_dual_and_b32 v22, 0xffff0000, v22
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v15, 0x3fb8aa3b, v15 :: v_dual_lshlrev_b32 v160, 16, v160
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v192.l, v27.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v22, 0x3fb8aa3b, v22 :: v_dual_mul_f32 v185, 0x3fb8aa3b, v185
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v188.l, v27.l
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v15, v164, v160 :: v_dual_lshlrev_b32 v154, 16, v154
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v164, 16, v16
	v_and_b32_e32 v16, 0xffff0000, v16
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v185, v181, v180
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v180, v128, v184
	v_mul_f32_e32 v184, v128, v183
	v_dual_mul_f32 v183, 0x3fb8aa3b, v192 :: v_dual_lshlrev_b32 v182, 16, v182
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v192, 0x3fb8aa3b, v16 :: v_dual_lshlrev_b32 v159, 16, v159
	v_mul_f32_e32 v165, 0x3fb8aa3b, v164
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v188.h, v13.l
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v16, v128, v156 :: v_dual_lshlrev_b32 v151, 16, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v192, v157, v154 :: v_dual_fmac_f32 v165, v162, v159
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v156, 0x3fb8aa3b, v188
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v150, 16, v150
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v13, 0xffff0000, v13
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v156, v16, v151 :: v_dual_lshlrev_b32 v151, 1, v25
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v16, 0x3fb8aa3b, v13
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_barrier
	ds_load_b32 v29, v29
	ds_load_b32 v152, v93
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v193, 0xffff0000, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v187.h, v9.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v16, v155, v150
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v150, 16, v14
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v14, v128, v153 :: v_dual_lshlrev_b32 v139, 16, v139
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v194, 0x3fb8aa3b, v193
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v9, 0xffff0000, v9
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v153, 0x3fb8aa3b, v150
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v187.l, v27.l
	v_mov_b16_e64 v186.l, v27.l
	v_mov_b16_e64 v186.h, v11.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v194, v149, v139 :: v_dual_fmac_f32 v153, v14, v148
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v148, 16, v10
	v_and_b32_e32 v10, 0xffff0000, v10
	v_lshlrev_b32_e32 v149, 16, v12
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v195, 0x3fb8aa3b, v187 :: v_dual_lshlrev_b32 v32, 16, v32
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v196, 0x3fb8aa3b, v9 :: v_dual_mul_f32 v199, 0x3fb8aa3b, v186
	v_mul_f32_e32 v10, 0x3fb8aa3b, v10
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v11, 0xffff0000, v11
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v135, 16, v135
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v148, 0x3fb8aa3b, v148 :: v_dual_lshlrev_b32 v137, 16, v137
	v_dual_mul_f32 v201, 0x3fb8aa3b, v149 :: v_dual_fmac_f32 v196, v141, v32
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v32, v96
	ds_load_b32 v141, v97
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v10, v143, v34 :: v_dual_and_b32 v9, 0x10000, v29
	v_fmac_f32_e32 v148, v142, v33
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v200, 0x3fb8aa3b, v11
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_waitcnt lgkmcnt(2)
	v_and_b32_e32 v11, 0x10000, v152
	ds_load_b32 v33, v98
	ds_load_b32 v142, v99
	v_cmp_ne_u32_e64 s30, 0, v9
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v201, v146, v137 :: v_dual_lshlrev_b32 v30, 16, v30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s35, 0, v11
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v22, v180, v179
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v11, 0xff800000, v189, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v146, 0x1000000, v152
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v195, v140, v30 :: v_dual_lshlrev_b32 v136, 16, v136
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v30, v94
	ds_load_b32 v140, v95
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v12, 0xffff0000, v12
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s37, 0, v146
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v200, v145, v136
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(4)
	v_and_b32_e32 v136, 0x10000, v141
	v_and_b32_e32 v145, 1, v152
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v177, 16, v20
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v146, 0xff800000, v22, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v22, 1, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_and_b32_e32 v20, 0xffff0000, v20
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v143, 1, v29
	v_cmp_ne_u32_e64 s15, 0, v136
	v_cmp_eq_u32_e64 s36, 1, v145
	v_cmp_eq_u32_e64 s27, 1, v22
	s_waitcnt lgkmcnt(3)
	v_and_b32_e32 v22, 0x1000000, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v20, 0x3fb8aa3b, v20
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s31, 1, v143
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, 0xff800000, v26, s36
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v199, v144, v135 :: v_dual_lshlrev_b32 v138, 16, v138
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s21, 0, v22
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v34, 0x10000, v140
	v_and_b32_e32 v136, 0x1000000, v140
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v20, v176, v167
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v202, 0x3fb8aa3b, v12
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v198, 0xff800000, v10, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v10.l, 8, v29.l
	v_cmp_ne_u32_e64 s17, 0, v34
	v_and_b32_e32 v34, 0x1000000, v30
	v_cmp_ne_u32_e64 s26, 0, v136
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v183, v184, v182 :: v_dual_mul_f32 v184, 0x3fb8aa3b, v177
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v10.l, 1, v10.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_ne_u32_e64 s24, 0, v34
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v186, 0xff800000, v18, s26
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v18, 1, v33
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v202, v147, v138 :: v_dual_and_b32 v135, 0x10000, v32
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s34, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v152.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, 0xff800000, v20, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s19, 1, v18
	v_and_b32_e32 v18, 1, v142
	v_and_b32_e32 v144, 0x1000000, v29
	v_and_b16 v10.l, 1, v10.l
	v_and_b32_e32 v20, 0x1000000, v141
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v184, v175, v174
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s20, 1, v18
	v_and_b32_e32 v137, 0x10000, v33
	v_cmp_eq_u16_e64 s2, 1, v10.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v10, 0xff800000, v23, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v9, 0x1000000, v142
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v199, 0xff800000, v199, s20
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v12, 0x10000, v30
	v_cmp_ne_u32_e64 s33, 0, v144
	v_cmp_ne_u32_e64 s29, 0, v20
	v_cmp_ne_u32_e64 s14, 0, v9
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v9, 0xff800000, v158, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v138, 0x10000, v142
	v_cmp_ne_u32_e64 s18, 0, v12
	v_lshrrev_b16 v13.l, 8, v30.l
	v_lshrrev_b16 v14.l, 8, v140.l
	v_lshrrev_b16 v18.l, 8, v32.l
	v_cmp_ne_u32_e64 s12, 0, v138
	v_lshrrev_b16 v18.h, 8, v141.l
	v_lshrrev_b16 v20.l, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v190, 0x3fb8aa3b, v172 :: v_dual_and_b32 v147, 1, v30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s16, 0, v135
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v138, v134, v134 :: v_dual_and_b32 v135, 1, v140
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s13, 0, v137
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v12, 0xff800000, v24, s33
	v_cndmask_b32_e64 v149, 0xff800000, v184, s18
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v24, 0x1000000, v32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v201, 0xff800000, v201, s12
	v_cndmask_b32_e64 v202, 0xff800000, v202, s14
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v137, 1, v32
	v_lshrrev_b16 v20.h, 8, v142.l
	v_and_b16 v13.l, 1, v13.l
	v_and_b16 v14.l, 1, v14.l
	v_and_b16 v18.l, 1, v18.l
	v_and_b16 v18.h, 1, v18.h
	v_and_b16 v20.l, 1, v20.l
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s11, s59, v55
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v190, v171, v170
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v188, v25, s78, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s22, 1, v147
	v_cmp_eq_u32_e64 s23, 1, v135
	v_cmp_ne_u32_e64 s28, 0, v24
	v_and_b16 v20.h, 1, v20.h
	v_cmp_eq_u16_e64 s38, 1, v13.l
	v_cmp_eq_u16_e64 s43, 1, v14.l
	v_cmp_eq_u16_e64 s42, 1, v18.l
	v_cmp_eq_u16_e64 s41, 1, v18.h
	v_cmp_eq_u16_e64 s40, 1, v20.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v18, v201, v202
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s25, 1, v137
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s11, s0, s11
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, 0xff800000, v185, s35
	v_cndmask_b32_e64 v147, 0xff800000, v183, s22
	v_cndmask_b32_e64 v183, 0xff800000, v173, s23
	v_cndmask_b32_e64 v185, 0xff800000, v190, s17
	v_cndmask_b32_e64 v187, 0xff800000, v191, s25
	v_cndmask_b32_e64 v189, 0xff800000, v165, s16
	v_cndmask_b32_e64 v190, 0xff800000, v192, s28
	v_cndmask_b32_e64 v191, 0xff800000, v156, s27
	v_cndmask_b32_e64 v193, 0xff800000, v153, s15
	v_cndmask_b32_e64 v194, 0xff800000, v194, s29
	v_cndmask_b32_e64 v195, 0xff800000, v195, s19
	v_cndmask_b32_e64 v197, 0xff800000, v148, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v34, 0x80000000, v188, s11
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v144, 0xff800000, v21, s2
	v_cndmask_b32_e64 v148, 0xff800000, v19, s38
	v_cndmask_b32_e64 v184, 0xff800000, v17, s43
	v_cndmask_b32_e64 v188, 0xff800000, v15, s42
	v_cndmask_b32_e64 v192, 0xff800000, v16, s41
	v_cndmask_b32_e64 v196, 0xff800000, v196, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v20.h
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v181.h, v27.l
	v_mov_b16_e64 v179.h, v27.l
	v_mov_b16_e64 v180.h, v27.l
	v_mov_b16_e64 v182.h, v27.l
	v_mov_b16_e64 v178.h, v27.l
	v_mov_b16_e64 v174.h, v27.l
	v_mov_b16_e64 v175.h, v27.l
	v_mov_b16_e64 v177.h, v27.l
	v_mov_b16_e64 v176.h, v27.l
	v_mov_b16_e64 v167.h, v27.l
	v_mov_b16_e64 v168.h, v27.l
	v_mov_b16_e64 v169.h, v27.l
	v_mov_b16_e64 v170.h, v27.l
	v_mov_b16_e64 v171.h, v27.l
	v_mov_b16_e64 v172.h, v27.l
	v_mov_b16_e64 v163.h, v27.l
	v_mov_b16_e64 v166.h, v27.l
	v_mov_b16_e64 v161.h, v27.l
	v_mov_b16_e64 v160.h, v27.l
	v_mov_b16_e64 v159.h, v27.l
	v_mov_b16_e64 v162.h, v27.l
	v_mov_b16_e64 v164.h, v27.l
	v_mov_b16_e64 v154.h, v27.l
	v_mov_b16_e64 v157.h, v27.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v155, v25, s45, 1
	v_add_lshl_u32 v25, v25, s79, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v13.h, v27.l
	v_mov_b16_e32 v14.h, v27.l
	v_mov_b16_e64 v139.h, v27.l
	v_mov_b16_e64 v135.h, v27.l
	v_mov_b16_e64 v136.h, v27.l
	v_mov_b16_e64 v140.h, v27.l
	v_mov_b16_e64 v141.h, v27.l
	v_mov_b16_e64 v142.h, v27.l
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v200, 0xff800000, v200, s39
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v15, v189, v190, v191
	v_max_f32_e32 v17, v198, v199
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v28, v[9:12]
	ds_store_b128 v28, v[187:190] offset:512
	ds_store_b128 v108, v[143:146]
	ds_store_b128 v108, v[191:194] offset:512
	ds_store_b128 v109, v[147:150]
	ds_store_b128 v109, v[195:198] offset:512
	ds_store_b128 v110, v[183:186]
	ds_store_b128 v110, v[199:202] offset:512
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v19, v148, v149, v150
	v_max3_f32 v20, v183, v184, v185
	v_max3_f32 v21, v186, v187, v188
	v_max_f32_e32 v32, v9, v10
	v_max3_f32 v27, v192, v193, v194
	v_max3_f32 v28, v195, v196, v197
	v_max3_f32 v33, v12, v143, v144
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v153, 0x80000000, v25, s11
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v16, v145, v146, v147
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v17, v17, v200, v18
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[23:26], v100 offset:256
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v18, v19, v20, v21
	v_max3_f32 v15, v15, v27, v28
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[27:30], v100
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v19, v32, v11, v33
.Ltmp16:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v22, 0x80000000, v151, s11
	v_cndmask_b32_e64 v151, 0x80000000, v155, s11
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s11, 0xff800000, v31
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s59, s59, 64
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v16, v19, v16, v18
.Ltmp18:
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s59, s76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v15, v16, v15, v17
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v16, v15, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v17, v26, v26
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v19, v27, v23, v28
.Ltmp22:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v137, v31, v15, v16
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v18, v30, v30
	v_max3_f32 v20, v24, v29, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v10, v137
	v_sub_f32_e32 v185, v185, v137
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v18, v17
.Ltmp26:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v11, v137
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v18, v31, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v9, v9, v137
.Ltmp27:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v17, v19, v20, v17
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v18, v18
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v143, v137
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_sub_f32 v16, v144, v137 :: v_dual_mov_b32 v31, v17
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v9, v9
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v158, v148, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s34
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v15, v15
.Ltmp29:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v31, v31 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s30
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v18, 0, v18, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v181.l, v10.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v12, v12, v137 :: v_dual_max_f32 v31, v31, v31
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v10, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v18
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v182.l, v11.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v187, v187, v137 :: v_dual_mul_f32 v2, v2, v18
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v17, v31
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v17, 1, v181
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v189, v189, v137 :: v_dual_mul_f32 v4, v4, v18
	v_dual_sub_f32 v191, v191, v137 :: v_dual_mul_f32 v6, v6, v18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v144, v10, v17, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v12
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v193, v193, v137 :: v_dual_mul_f32 v8, v8, v18
	v_sub_f32_e32 v197, v197, v137
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v18
	v_mul_f32_e32 v3, v3, v18
	v_mul_f32_e32 v5, v5, v18
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v155, v146, v137 :: v_dual_and_b32 v18, 1, v182
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v10, 0, v10, s33
	v_cndmask_b32_e64 v15, 0, v15, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v146, v11, v18, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v18, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v179.l, v9.h
	v_mov_b16_e64 v180.l, v10.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v195, v195, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v174.l, v15.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v152, v145, v137
	v_sub_f32_e32 v165, v149, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v17, 1, v180
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v16
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v16, 1, v179
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v18, 0, v18, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v149, 1, v174
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v173, v150, v137
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[19:22], v22, s[72:75], 0 offen
	buffer_load_b128 v[31:34], v34, s[72:75], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v145, v9, v16, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v16, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v176.l, v18.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v156, v147, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v147, v10, v17, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v152
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v9, v9
	v_cmp_o_f32_e64 s31, v10, v10
	v_cmp_o_f32_e64 s33, v11, v11
	v_and_b32_e32 v155, 1, v176
	v_mov_b16_e64 v178.l, v12.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v16, s37
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v199, v199, v137
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v12, v12
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v148, 1, v178
	v_mov_b16_e64 v175.l, v16.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v201, v201, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v15, v15
	v_mov_b16_e64 v177.l, v17.h
	v_add3_u32 v148, v12, v148, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[9:12], v151, s[72:75], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v150, 1, v175
	v_cmp_o_f32_e64 s36, v16, v16
	v_and_b32_e32 v152, 1, v177
	v_cmp_o_f32_e64 s37, v17, v17
	v_cmp_o_f32_e64 s38, v18, v18
	v_add3_u32 v149, v15, v149, 0x7fff
	v_add3_u32 v151, v16, v150, 0x7fff
	v_add3_u32 v150, v17, v152, 0x7fff
	v_add3_u32 v152, v18, v155, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[15:18], v153, s[72:75], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v153, v156
	v_exp_f32_e32 v174, v185
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v198, v198, v137
	v_sub_f32_e32 v183, v183, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v156, v165
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v194, v194, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v178, v189
	v_exp_f32_e32 v185, v198
	v_exp_f32_e32 v165, v183
	v_exp_f32_e32 v155, v173
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v153, s22
	v_cndmask_b32_e64 v174, 0, v174, s17
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v180, v191
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v200, v200, v137
	v_sub_f32_e32 v202, v202, v137
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v167.l, v153.h
	v_cmp_o_f32_e64 s2, v153, v153
	v_mov_b16_e64 v163.l, v174.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v186, v186, v137
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v185, 0, v185, s21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v167, 1, v167
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v165, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v163, 1, v163
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v173, v186
	v_exp_f32_e32 v186, v197
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v153, v153, v167, 0x7fff
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v167, v143
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.l, v185.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v190, v190, v137
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v178, 0, v178, s16
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v171.l, v165.h
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v167, v167 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v196, v196, v137
	v_dual_sub_f32 v184, v184, v137 :: v_dual_and_b32 v139, 1, v139
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v177, v190
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v186, 0, v186, s13
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v183, v196
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v159.l, v178.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v188, v188, v137 :: v_dual_and_b32 v171, 1, v171
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v158, v184
	v_exp_f32_e32 v184, v195
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v180, 0, v180, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v135.l, v186.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v192, v192, v137 :: v_dual_and_b32 v159, 1, v159
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v175, v188
	v_exp_f32_e32 v188, v199
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v183, 0, v183, s40
	v_cndmask_b32_e64 v177, 0, v177, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v164.l, v180.h
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v184, 0, v184, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v135, 1, v135
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v179, v192
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v13.l, v183.h
	v_mov_b16_e64 v160.l, v177.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v181, v194
	v_exp_f32_e32 v190, v201
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v156, s18
	v_cndmask_b32_e64 v175, 0, v175, s42
	v_cndmask_b32_e64 v188, 0, v188, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v14.l, v184.h
	v_and_b32_e32 v164, 1, v164
	v_and_b32_e32 v13, 1, v13
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v176, v187
	v_exp_f32_e32 v187, v200
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v160, 1, v160
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v189, v202
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v155, s24
	v_cndmask_b32_e64 v158, 0, v158, s43
	v_cndmask_b32_e64 v173, 0, v173, s26
	v_cndmask_b32_e64 v179, 0, v179, s41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v169.l, v156.h
	v_mov_b16_e64 v166.l, v175.h
	v_cmp_o_f32_e64 s23, v180, v180
	v_cmp_o_f32_e64 s26, v183, v183
	v_mov_b16_e64 v140.l, v188.h
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v164, v180, v164, 0x7fff
	v_add3_u32 v13, v183, v13, 0x7fff
	v_add3_u32 v160, v177, v160, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v181, 0, v181, s29
	v_cndmask_b32_e64 v190, 0, v190, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.l, v155.h
	v_mov_b16_e64 v170.l, v158.h
	v_mov_b16_e64 v172.l, v173.h
	v_mov_b16_e64 v162.l, v179.h
	v_cmp_o_f32_e64 s27, v184, v184
	v_and_b32_e32 v169, 1, v169
	v_and_b32_e32 v166, 1, v166
	v_and_b32_e32 v140, 1, v140
	v_add3_u32 v14, v184, v14, 0x7fff
	v_cndmask_b16 v144.h, 0x7fff, v144.h, s11
	v_cndmask_b16 v144.l, 0x7fff, v145.h, s30
	v_cndmask_b16 v160.l, 0x7fff, v164.h, s23
	v_cndmask_b16 v164.h, 0x7fff, v13.h, s26
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v167, v167
.Ltmp38:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v187, 0, v187, s39
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v182, v193
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v189, 0, v189, s14
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v156, v156
	v_cmp_o_f32_e64 s18, v175, v175
	v_mov_b16_e64 v154.l, v181.h
	v_cmp_o_f32_e64 s28, v185, v185
	v_cmp_o_f32_e64 s40, v188, v188
	v_mov_b16_e64 v142.l, v190.h
	v_and_b32_e32 v168, 1, v168
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v13, v143, v13 :: v_dual_and_b32 v170, 1, v170
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v172, 1, v172
	v_and_b32_e32 v162, 1, v162
	v_add3_u32 v156, v156, v169, 0x7fff
	v_add3_u32 v166, v175, v166, 0x7fff
	v_add3_u32 v139, v185, v139, 0x7fff
	v_add3_u32 v140, v188, v140, 0x7fff
	v_cndmask_b16 v164.l, 0x7fff, v14.h, s27
	v_permlanex16_b32 v14, v144, s80, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v136.l, v187.h
	v_add3_u32 v135, v186, v135, 0x7fff
	v_cmp_o_f32_e64 s12, v155, v155
	v_cmp_o_f32_e64 s14, v158, v158
	v_cmp_o_f32_e64 s16, v173, v173
	v_cmp_o_f32_e64 s17, v174, v174
	v_cmp_o_f32_e64 s20, v177, v177
	v_cmp_o_f32_e64 s22, v179, v179
	v_mov_b16_e64 v141.l, v189.h
	v_and_b32_e32 v154, 1, v154
	v_and_b32_e32 v142, 1, v142
	v_add3_u32 v155, v155, v168, 0x7fff
	v_add3_u32 v158, v158, v170, 0x7fff
	v_add3_u32 v168, v173, v172, 0x7fff
	v_add3_u32 v163, v174, v163, 0x7fff
	v_add3_u32 v162, v179, v162, 0x7fff
	v_cndmask_b16 v150.l, 0x7fff, v156.h, s13
	v_cndmask_b16 v156.h, 0x7fff, v166.h, s18
	v_cndmask_b16 v166.h, 0x7fff, v139.h, s28
	v_cndmask_b16 v135.l, 0x7fff, v140.h, s40
	v_perm_b32 v139, v14, v144, v118
	v_perm_b32 v140, v14, v144, v127
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v14, v13
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v136, 1, v136
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v182, 0, v182, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v165, v165
	v_cmp_o_f32_e64 s21, v178, v178
	v_cmp_o_f32_e64 s24, v181, v181
	v_cmp_o_f32_e64 s42, v190, v190
	v_and_b32_e32 v141, 1, v141
	v_add3_u32 v165, v165, v171, 0x7fff
	v_add3_u32 v159, v178, v159, 0x7fff
	v_add3_u32 v154, v181, v154, 0x7fff
	v_add3_u32 v142, v190, v142, 0x7fff
	v_cndmask_b16 v145.h, 0x7fff, v147.h, s31
	v_cndmask_b16 v145.l, 0x7fff, v146.h, s33
	v_cndmask_b16 v146.h, 0x7fff, v148.h, s34
	v_cndmask_b16 v146.l, 0x7fff, v149.h, s35
	v_cndmask_b16 v147.h, 0x7fff, v151.h, s36
	v_cndmask_b16 v147.l, 0x7fff, v150.h, s37
	v_cndmask_b16 v148.h, 0x7fff, v152.h, s38
	v_cndmask_b16 v148.l, 0x7fff, v153.h, s2
	v_cndmask_b16 v150.h, 0x7fff, v155.h, s12
	v_cndmask_b16 v152.h, 0x7fff, v158.h, s14
	v_cndmask_b16 v155.h, 0x7fff, v168.h, s16
	v_cndmask_b16 v155.l, 0x7fff, v163.h, s17
	v_cndmask_b16 v158.h, 0x7fff, v160.h, s20
	v_cndmask_b16 v160.h, 0x7fff, v162.h, s22
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v136, v187, v136, 0x7fff
	v_cmp_o_f32_e64 s29, v186, v186
	v_cmp_o_f32_e64 s39, v187, v187
	v_cmp_o_f32_e64 s41, v189, v189
	v_add3_u32 v141, v189, v141, 0x7fff
	v_cndmask_b16 v152.l, 0x7fff, v165.h, s15
	v_cndmask_b16 v158.l, 0x7fff, v159.h, s21
	v_cndmask_b16 v162.h, 0x7fff, v154.h, s24
	v_cndmask_b16 v136.l, 0x7fff, v142.h, s42
	v_permlanex16_b32 v142, v145, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v149, v146, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v151, v147, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v153, v148, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v154, v150, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v159, v155, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v165, v160, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
.Ltmp46:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v176, 0, v176, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v166.l, 0x7fff, v135.h, s29
	v_cndmask_b16 v135.h, 0x7fff, v136.h, s39
	v_cndmask_b16 v136.h, 0x7fff, v141.h, s41
	v_perm_b32 v141, v142, v145, v118
	v_perm_b32 v142, v142, v145, v127
	v_perm_b32 v143, v149, v146, v118
	v_perm_b32 v144, v149, v146, v127
	v_perm_b32 v145, v151, v147, v118
	v_perm_b32 v146, v151, v147, v127
	v_perm_b32 v147, v153, v148, v118
	v_perm_b32 v148, v153, v148, v127
	v_perm_b32 v149, v154, v150, v118
	v_perm_b32 v150, v154, v150, v127
	v_perm_b32 v153, v159, v155, v118
	v_perm_b32 v154, v159, v155, v127
	v_perm_b32 v159, v165, v160, v118
	v_perm_b32 v160, v165, v160, v127
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v165, v13, v14
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.l, v176.h
	v_mov_b16_e64 v157.l, v182.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v130, v130, v165
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v161, 1, v161
	v_and_b32_e32 v157, 1, v157
	v_cmp_o_f32_e64 s19, v176, v176
	v_cmp_o_f32_e64 s25, v182, v182
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v27, v130
	v_sub_f32_e32 v14, v28, v130
	v_sub_f32_e32 v27, v29, v130
	v_sub_f32_e32 v28, v30, v130
	v_sub_f32_e32 v23, v23, v130
	v_sub_f32_e32 v24, v24, v130
	v_sub_f32_e32 v25, v25, v130
	v_sub_f32_e32 v26, v26, v130
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v27, v27
	v_exp_f32_e32 v25, v25
	v_exp_f32_e32 v28, v28
	v_exp_f32_e32 v26, v26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v161, v176, v161, 0x7fff
	v_add3_u32 v157, v182, v157, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s9
	v_cndmask_b32_e64 v23, 0, v23, s6
	v_cndmask_b32_e64 v14, 0, v14, s8
	v_cndmask_b32_e64 v24, 0, v24, s5
	v_cndmask_b32_e64 v27, 0, v27, s7
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v28, 0, v28, s4
	v_cndmask_b32_e64 v26, 0, v26, s10
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v13, v13, v23 :: v_dual_add_f32 v14, v14, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v23, v27, v25
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v156.l, 0x7fff, v161.h, s19
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v24, v28, v26
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v162.l, 0x7fff, v157.h, s25
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v13, v13, v14
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v157, v152, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v161, v156, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v14, v23, v24
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v163, v158, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v167, v162, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v151, v157, v152, v118
	v_perm_b32 v152, v157, v152, v127
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v13, v13, v14
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v168, v164, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v169, v166, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v170, v135, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v179, v136, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v14, v13
.Ltmp60:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v155, v161, v156, v118
	v_perm_b32 v156, v161, v156, v127
	v_perm_b32 v157, v163, v158, v118
	v_perm_b32 v158, v163, v158, v127
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v161, v167, v162, v118
	v_perm_b32 v162, v167, v162, v127
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v134
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v163, v168, v164, v118
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v171, v13, v14
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v164, v168, v164, v127
	v_perm_b32 v167, v170, v135, v118
	v_perm_b32 v168, v170, v135, v127
	v_perm_b32 v170, v179, v136, v127
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v23.l, v19.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v24.l, v31.l
	v_mov_b16_e32 v26.l, v32.l
	v_mov_b16_e32 v25.l, v20.l
	v_mov_b16_e32 v20.l, v33.l
	v_mov_b16_e32 v19.l, v21.l
	v_mov_b16_e32 v28.l, v34.l
	v_mov_b16_e32 v27.l, v22.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v23.h, v9.l
	v_mov_b16_e32 v9.l, v19.h
	v_mov_b16_e32 v25.h, v10.l
	v_mov_b16_e32 v10.l, v20.h
	v_mov_b16_e32 v19.h, v11.l
	v_mov_b16_e32 v11.l, v21.h
	v_mov_b32_e32 v14, v9
	v_mov_b16_e32 v27.h, v12.l
	v_mov_b16_e32 v12.l, v22.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v24.h, v15.l
	v_mov_b16_e32 v15.l, v31.h
	v_mov_b16_e32 v26.h, v16.l
	v_mov_b16_e32 v16.l, v32.h
	v_mov_b16_e32 v28.h, v18.l
	ds_store_b64 v131, v[23:24]
	ds_store_b64 v111, v[14:15]
	v_mov_b32_e32 v15, v10
	v_mov_b16_e32 v18.l, v34.h
	v_mov_b16_e32 v20.h, v17.l
	v_mov_b16_e32 v17.l, v33.h
	ds_store_b64 v112, v[25:26]
	ds_store_b64 v113, v[15:16]
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v13, v18
	ds_store_b64 v114, v[19:20]
	ds_store_b64 v115, v[16:17]
	ds_store_b64 v116, v[27:28]
	ds_store_b64 v117, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v132
	ds_load_b128 v[13:16], v119
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v26, v171
.Ltmp66:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[17:20], v120
	ds_load_b128 v[21:24], v121
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v25, v138, v165
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[27:30], v122
	ds_load_b128 v[31:34], v123
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v165, v169, v166, v118
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v26, v26 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v166, v169, v166, v127
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v131, v134, v25
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v169, v179, v136, v118
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v26, v171, v26
.Ltmp70:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[171:174], v124
	ds_load_b128 v[175:178], v125
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v131, v131
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v132, v26
.Ltmp72:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[139:146], v[1:8]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v132, v132 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v9, 0, v131, s1
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[147:154], v[1:8]
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v26, v26, v132
.Ltmp76:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[27:34], v[155:162], v[1:8]
	v_mov_b32_e32 v31, v137
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v26, v133, v9
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[171:178], v[163:170], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v9, v50
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v25, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v26, v8
.LBB0_8:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v49
	s_mov_b32 s1, 0x76543210
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp78:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s47, s47, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v10, 0xff800000, v25, vcc_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v12, 0, v26, vcc_lo
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v48
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s45, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v11, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v9, 0, v9
.Ltmp80:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp82:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v3, 0, v3
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v1 :: v_dual_add_f32 v12, v12, v13
	v_dual_mov_b32 v16, v2 :: v_dual_mov_b32 v17, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v11 :: v_dual_and_b32 v11, 12, v45
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v14, v10 :: v_dual_add_nc_u32 v11, 0, v11
.Ltmp88:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s46, s47
	.loc	1 1025 30 is_stmt 0             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp89:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v13, v12
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v17 :: v_dual_add_f32 v2, v2, v16
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_add_f32 v1, v1, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v8 :: v_dual_max_f32 v10, v10, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v1
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_cndmask_b32 v13, 0, v6
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v9, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp99:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v4 :: v_dual_cndmask_b32 v12, 0, v5
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v3 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v14 :: v_dual_cndmask_b32 v14, 0, v7
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v7, v10
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v4
	v_add_f32_e32 v4, v3, v5
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, v9
.Ltmp109:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v2 :: v_dual_mov_b32 v16, v4
.Ltmp110:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v6 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v10, v10
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v7, v7
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v19, v14
.Ltmp116:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v9, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v5 :: v_dual_max_f32 v8, v8, v10
.Ltmp118:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v20, v15 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp119:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v9, v7 :: v_dual_mov_b32 v10, v8
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v4, v16
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v16, v11 :: v_dual_add_f32 v13, v13, v18
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v18, v13 :: v_dual_add_f32 v11, v11, v16
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v16, v11 :: v_dual_add_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_mov_b32 v18, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_add_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v19, v14
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v15
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v15, v20
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v11 :: v_dual_add_f32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v20, v16
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v19, v15
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v16, v20
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v12
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp137:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_10
; %bb.9:
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp139:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp141:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp143:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_10:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp144:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp145:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v45
	v_and_b32_e32 v4, 0xe0, v46
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_lshlrev_b32 v2, 5, v47
.Ltmp147:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp149:
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s45, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[56:59], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp150:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 218
		.amdhsa_next_free_sgpr 81
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 218
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10944
; TotalNumSgprs: 83
; NumVgprs: 218
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 218
; Occupancy: 6
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
	.byte	5                               ; Abbreviation Code
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     218
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
