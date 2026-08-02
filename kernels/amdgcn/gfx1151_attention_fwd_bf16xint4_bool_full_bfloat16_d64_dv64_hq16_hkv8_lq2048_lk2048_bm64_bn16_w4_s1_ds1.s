	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x5c
	s_load_b64 s[8:9], s[0:1], 0x6c
	v_dual_mov_b32 v16, 0x6420 :: v_dual_and_b32 v15, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	v_mov_b32_e32 v42, 0x7531
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[40:41], s[0:1], 0x10
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v15
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s21, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s21, v2
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s26, s21, s2
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x28
	s_load_b64 s[24:25], s[0:1], 0x38
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v86, 0x60, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[81:82], null, s28, v2, v[1:2]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s28, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s10, s28, 4
	s_lshl_b32 s11, s28, 5
	s_mul_i32 s12, s28, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s37, s5, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s28, s26, v[81:82]
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s36, s4
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v30, v33 :: v_dual_and_b32 v45, 1, v0
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v88, 16, v0
	v_dual_mov_b32 v44, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v2, s10, 1
	v_add_lshl_u32 v4, v2, s11, 1
	v_add_lshl_u32 v2, v2, s12, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v5, 0x80000000, v3, s2
	v_cndmask_b32_e64 v9, 0x80000000, v4, s2
	v_cndmask_b32_e64 v10, 0x80000000, v2, s2
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[36:39], 0 offen
	buffer_load_b128 v[5:8], v5, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v9, s[36:39], 0 offen
	buffer_load_b128 v[38:41], v10, s[36:39], 0 offen
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	v_cmp_eq_u32_e64 s1, 0, v45
	v_dual_mov_b32 v43, 0x5410 :: v_dual_lshlrev_b32 v48, 1, v0
	v_dual_mov_b32 v28, v33 :: v_dual_and_b32 v85, 15, v0
	v_dual_mov_b32 v24, v33 :: v_dual_lshlrev_b32 v15, 4, v15
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s4, s0, 4
	v_cndmask_b32_e64 v16, 0x7531, v16, s1
	v_cmp_eq_u32_e64 s0, 0, v88
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v52, 7, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_i32 v46, v0, 0, 1
	v_dual_mov_b32 v32, v33 :: v_dual_lshlrev_b32 v47, 4, v0
	v_dual_mov_b32 v18, v33 :: v_dual_and_b32 v49, 0x70, v0
	v_dual_mov_b32 v20, v33 :: v_dual_lshlrev_b32 v53, 5, v0
	v_dual_mov_b32 v22, v33 :: v_dual_and_b32 v57, 0x70, v48
	v_cndmask_b32_e64 v43, 0x1054, v43, s0
	v_lshl_or_b32 v89, v85, 7, v15
	v_cndmask_b32_e64 v15, 0x6420, v42, s1
	v_lshl_or_b32 v16, v16, 8, v16
	v_cndmask_b32_e64 v42, 0x3276, v44, s0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v87, 1, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s2, s3, 0x10007
	v_bfe_u32 v51, v0, 4, 1
	v_bfe_i32 v54, v0, 2, 1
	v_dual_mov_b32 v29, v33 :: v_dual_lshlrev_b32 v56, 3, v45
	v_dual_mov_b32 v31, v33 :: v_dual_and_b32 v52, 0x700, v52
	v_dual_mov_b32 v19, v33 :: v_dual_and_b32 v46, 0x90, v46
	v_dual_mov_b32 v23, v33 :: v_dual_and_b32 v16, 0x750031, v16
	v_dual_mov_b32 v10, v33 :: v_dual_lshlrev_b32 v45, 6, v45
	v_dual_mov_b32 v12, v33 :: v_dual_and_b32 v53, 0x160, v53
	v_lshrrev_b32_e32 v49, 2, v49
	s_add_i32 s5, s3, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v47, v47, v57
	v_lshl_or_b32 v43, v43, 8, v43
	v_lshl_or_b32 v42, v42, 8, v42
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v55, s21, v87
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s5, s5, 0x80000
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v50, 4, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s5, s5
	v_dual_mov_b32 v13, v33 :: v_dual_and_b32 v42, 0x760076, v42
	v_mov_b32_e32 v14, v33
	v_and_or_b32 v51, v48, 30, v51
	v_and_or_b32 v91, v48, 60, v45
	v_xor_b32_e32 v44, v46, v49
	v_add_nc_u32_e32 v45, 0, v52
	v_and_or_b32 v92, 0x90, v54, v53
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v93, 0, v47
	v_lshl_or_b32 v46, v86, 6, v89
	v_and_b32_e32 v43, 0x540054, v43
	v_lshl_or_b32 v16, v16, 4, v16
	.loc	1 758 19                        ; attention.py:758:19
	s_ashr_i32 s5, s5, 1
	v_mul_lo_u32 v54, s9, v55
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s10, s31, s4
	.loc	1 937 33                        ; attention.py:937:33
	s_lshl3_add_u32 s4, s4, s5
	v_dual_mov_b32 v21, v33 :: v_dual_lshlrev_b32 v90, 2, v51
	v_mov_b32_e32 v11, v33
	v_xor_b32_e32 v47, 16, v89
	v_xor_b32_e32 v48, 32, v89
	v_xor_b32_e32 v49, 48, v89
	v_xor_b32_e32 v51, 64, v89
	v_xor_b32_e32 v52, 0x50, v89
	v_xor_b32_e32 v53, 0x60, v89
	v_add_nc_u32_e32 v94, v45, v44
	v_xor_b32_e32 v44, 0x70, v89
	v_xor_b32_e32 v45, 16, v92
	v_lshl_or_b32 v95, s4, 10, v50
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v50, 0, v46
	v_lshl_or_b32 v42, v42, 4, v42
	v_and_b32_e32 v105, 0x7050301, v16
	v_mov_b32_e32 v16, v33
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v55
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s8, s8, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v55, v46, 16, 0
	v_xad_u32 v57, v46, 32, 0
	s_add_i32 s8, s8, s10
	v_xad_u32 v58, v46, 48, 0
	v_xad_u32 v59, v46, 64, 0
	v_xad_u32 v61, 0x50, v46, 0
	v_xad_u32 v65, 0x60, v46, 0
	v_xad_u32 v69, 0x70, v46, 0
	v_add_nc_u32_e32 v96, 0, v47
	v_add_nc_u32_e32 v97, 0, v48
	v_add_nc_u32_e32 v98, 0, v49
	v_add_nc_u32_e32 v99, 0, v51
	v_add_nc_u32_e32 v100, 0, v52
	v_dual_mov_b32 v112, 0xff800000 :: v_dual_add_nc_u32 v101, 0, v53
	v_add_nc_u32_e32 v102, 0, v44
	v_dual_mov_b32 v110, 0xff800000 :: v_dual_add_nc_u32 v103, 0, v45
	v_add3_u32 v104, s8, v56, v54
	v_and_b32_e32 v84, 0x7060706, v42
	v_lshl_or_b32 v15, v15, 8, v15
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v82, 2, v85
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v26, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v15, 0x750031, v15
	v_xor_b32_e32 v107, 4, v90
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s3, s29, v82
	v_xor_b32_e32 v108, 64, v91
	v_mov_b32_e32 v111, 0xff800000
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s30, s30, 0x3fb8aa3b
	s_mov_b32 s27, 0
	s_mov_b32 s33, 0x76543210
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b64 s[22:23], s[46:47]
	s_and_b32 s37, s7, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	.loc	1 937 32                        ; attention.py:937:32
	s_lshl_b32 s31, s4, 11
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s34, s4, 7
	s_mov_b32 s36, s6
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v93, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v93, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v93, v[34:37] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v93, v[38:41] offset:6144
	v_mov_b32_e32 v2, v33
	v_lshl_or_b32 v43, v43, 4, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v4, v33
	v_lshl_or_b32 v15, v15, 4, v15
	v_and_b32_e32 v83, 0x5040504, v43
	ds_load_b128 v[41:44], v50
	ds_load_b128 v[45:48], v55
	ds_load_b128 v[49:52], v57
	ds_load_b128 v[53:56], v58
	ds_load_b128 v[57:60], v59
	ds_load_b128 v[61:64], v61
	ds_load_b128 v[65:68], v65
	ds_load_b128 v[69:72], v69
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v3, v33 :: v_dual_and_b32 v106, 0x7050301, v15
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v15, v33
	v_mov_b32_e32 v5, v33
	v_mov_b32_e32 v6, v33
	v_mov_b32_e32 v7, v33
	v_mov_b32_e32 v8, v33
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 944 30 is_stmt 1              ; attention.py:944:30
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v40, 8, v37
	.loc	1 962 34                        ; attention.py:962:34
	v_lshrrev_b32_e32 v113, 8, v36
	v_and_b16 v39.l, 0xff, v36.l
	v_and_b16 v39.h, 0xff, v36.h
	v_lshrrev_b32_e32 v114, 24, v36
	v_and_b16 v36.l, 0xff, v37.l
	v_and_b16 v36.h, 0xff, v37.h
	v_lshrrev_b32_e32 v115, 24, v37
	v_and_b16 v37.l, 0xff, v113.l
	v_and_b16 v37.h, 0xff, v40.l
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s4, s27, 4
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s6, 0, v114.l
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s4, s4, s34
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s9, 0, v115.l
	v_cmp_ne_u16_e64 s10, 0, v37.l
	v_cmp_ne_u16_e64 s12, 0, v37.h
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s5, s27, 1
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s4, s4, s29
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v34, s5, v95
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v38, s4, v82, 1
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s4, 0, v39.l
	v_cmp_ne_u16_e64 s5, 0, v39.h
	v_cmp_ne_u16_e64 s7, 0, v36.l
	v_cmp_ne_u16_e64 s8, 0, v36.h
	.loc	1 962 25 is_stmt 0              ; attention.py:962:25
	s_and_b32 s6, s2, s6
	s_and_b32 s9, s2, s9
	s_and_b32 s11, s2, s10
	s_and_b32 s10, s2, s12
	v_cndmask_b32_e64 v36, 0, 1, s6
	v_cndmask_b32_e64 v40, 0, 1, s9
	v_cndmask_b32_e64 v114, 0, 1, s11
	v_cndmask_b32_e64 v115, 0, 1, s10
	s_and_b32 s4, s2, s4
	s_and_b32 s5, s2, s5
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	v_cndmask_b32_e64 v39, 0, 1, s4
	v_cndmask_b32_e64 v37, 0, 1, s5
	v_cndmask_b32_e64 v116, 0, 1, s7
	v_cndmask_b32_e64 v113, 0, 1, s8
	v_lshlrev_b16 v36.l, 8, v36.l
	v_lshlrev_b16 v36.h, 8, v40.l
	v_lshlrev_b16 v37.h, 8, v114.l
	v_lshlrev_b16 v39.h, 8, v115.l
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v112
	.loc	1 962 25                        ; attention.py:962:25
	v_or_b16 v40.h, v37.l, v36.l
	v_or_b16 v36.h, v113.l, v36.h
	v_or_b16 v40.l, v39.l, v37.h
	v_or_b16 v36.l, v116.l, v39.h
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v113, v111, v111
	.loc	1 962 25                        ; attention.py:962:25
	s_delay_alu instid0(VALU_DEP_2)
	v_perm_b32 v37, v36, v40, v105
	v_perm_b32 v39, v36, v40, v106
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v40, s30, v73 :: v_dual_mul_f32 v73, s30, v74
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[34:35], null, v34, s29, v[82:83]
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v35, 0x80000000, v38, s3
	.loc	1 962 25                        ; attention.py:962:25
	ds_bpermute_b32 v37, v90, v37
	ds_bpermute_b32 v39, v107, v39
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v74, s30, v75 :: v_dual_mul_f32 v75, s30, v76
	v_mul_f32_e32 v76, s30, v77
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v38, 0x80000000, v34, s3
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[34:35], v35, s[44:47], 0 offen
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v38, v38, s[40:43], 0 offen
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v77, s30, v78 :: v_dual_mul_f32 v78, s30, v79
	v_dual_mul_f32 v79, s30, v80 :: v_dual_max_f32 v80, v110, v110
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b16_e32 v36.l, 0
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 962 25                        ; attention.py:962:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v119.h, v36.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v123.h, v36.l
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v110, v39, v37, s0
	v_cndmask_b32_e64 v37, v37, v39, s0
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v124.h, v36.l
	v_mov_b16_e32 v125.h, v36.l
	v_mov_b16_e32 v39.h, v36.l
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b32_e32 v127, 0x100, v110
	v_and_b32_e32 v129, 0x100, v37
	v_and_b32_e32 v130, 0x1000000, v37
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v114.l, v36.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v115.h, v36.l
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s13, 0, v127
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v116.h, v36.l
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s17, 0, v130
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v120.h, v36.l
	v_mov_b16_e32 v117.h, v36.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v73, v73, 0xff800000, s13
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b32_e32 v126, 1, v110
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v122.h, v36.l
	v_mov_b16_e32 v118.h, v36.l
	v_mov_b16_e32 v121.h, v36.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v135.h, v36.l
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s12, 1, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v40, 0xff800000, v40, s12
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b32_e32 v131, 0x1000000, v110
	v_cmp_eq_u32_e64 s19, 0, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v75, v75, 0xff800000, s19
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b32_e32 v128, 1, v37
	v_and_b32_e32 v37, 0x10000, v37
	v_cmp_eq_u32_e64 s14, 1, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s16, 0, v37
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v76, 0xff800000, v76, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v37, v78, 0xff800000, s16
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b32_e32 v110, 0x10000, v110
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v78, v79, 0xff800000, s17
	v_cndmask_b32_e64 v79, v76, v40, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s18, 0, v110
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v128, v37, v78
.Ltmp2:
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s15, 0, v129
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v133, v78, v75, s0
	v_cndmask_b32_e64 v134, v75, v78, s0
	v_cndmask_b32_e64 v74, v74, 0xff800000, s18
	v_cndmask_b32_e64 v110, v40, v76, s0
	v_cndmask_b32_e64 v77, v77, 0xff800000, s15
	ds_bpermute_b32 v79, v91, v79
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v129, v40, v73, v74
.Ltmp4:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v131, v37, v74, s0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v130, v75, v76, v77
.Ltmp6:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v126, v77, v73, s0
	v_cndmask_b32_e64 v127, v73, v77, s0
	v_cndmask_b32_e64 v132, v74, v37, s0
	ds_bpermute_b32 v110, v108, v110
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v128, v129, v130, v128
.Ltmp8:
	.loc	1 967 26                        ; attention.py:967:26
	ds_bpermute_b32 v126, v91, v126
	ds_bpermute_b32 v127, v108, v127
	ds_bpermute_b32 v130, v91, v131
	ds_bpermute_b32 v131, v108, v132
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v129, v128, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 967 26                        ; attention.py:967:26
	ds_bpermute_b32 v132, v91, v133
	ds_bpermute_b32 v133, v108, v134
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v134.h, v36.l
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v143, v112, v128, v129
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v129.h, v36.l
	v_mov_b16_e64 v128.h, v36.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v136, v112, v143
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v73, v73, v143
	v_sub_f32_e32 v74, v74, v143
	v_sub_f32_e32 v37, v37, v143
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v137, v110, v79, s1
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v136, v136
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v138, v79, v110, s1
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v139, v127, v126, s1
	v_cndmask_b32_e64 v126, v126, v127, s1
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v127, v131, v130, s1
	v_cndmask_b32_e64 v130, v130, v131, s1
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v37, v37
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v131, v133, v132, s1
	v_cndmask_b32_e64 v140, v132, v133, s1
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v133, v133, v133 :: v_dual_max_f32 v132, v132, v132
	v_max3_f32 v79, v79, v110, v139
	v_max3_f32 v110, v126, v127, v130
.Ltmp12:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v73, v73
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v144, 0, v136, s20
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v132, v132, v133
.Ltmp14:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v112, v37, 0, s16
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v40, v40, v143
	v_sub_f32_e32 v75, v75, v143
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v27, v27, v144
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v79, v79, v110, v132
.Ltmp16:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v76, v76, v143
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v40, v40
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v37, v73, 0, s13
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v74, v74
.Ltmp17:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v73, v79
.Ltmp18:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v75, v75
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v77, v77, v143
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v123.l, v37.h
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v76, v76
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v73, v73 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v22, v22, v144
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v40, 0, v40, s12
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v123, 1, v123
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v74, v74, 0, s18
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v73, v73, v73 :: v_dual_mul_f32 v26, v26, v144
.Ltmp22:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v75, v75, 0, s19
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v124.l, v40.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v125.l, v74.h
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v73, v79, v73
.Ltmp24:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v29, v29, v144
	v_mul_f32_e32 v24, v24, v144
	v_mul_f32_e32 v11, v11, v144
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v39.l, v75.h
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v110, v80, v73
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v28, v28, v144
	v_mul_f32_e32 v30, v30, v144
	v_mul_f32_e32 v31, v31, v144
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v32, v32, v144 :: v_dual_sub_f32 v131, v131, v110
	v_dual_mul_f32 v17, v17, v144 :: v_dual_sub_f32 v132, v139, v110
	v_dual_mul_f32 v18, v18, v144 :: v_dual_sub_f32 v133, v140, v110
	v_dual_mul_f32 v19, v19, v144 :: v_dual_sub_f32 v126, v126, v110
	v_dual_mul_f32 v21, v21, v144 :: v_dual_sub_f32 v130, v130, v110
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v79, v137, v110
	v_sub_f32_e32 v80, v138, v110
	v_sub_f32_e32 v127, v127, v110
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v131, v131
	v_exp_f32_e32 v133, v133
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_dual_max_f32 v145, v113, v73 :: v_dual_mul_f32 v14, v14, v144
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v132, 0, v132, s5
	v_cndmask_b32_e64 v126, 0, v126, s6
	v_cndmask_b32_e64 v79, 0, v79, s4
	v_cndmask_b32_e64 v80, 0, v80, s11
	v_cndmask_b32_e64 v127, 0, v127, s7
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v130, 0, v130, s10
	v_cndmask_b32_e64 v131, 0, v131, s8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v133, 0, v133, s9
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v20, v20, v144
	v_mul_f32_e32 v23, v23, v144
	v_mul_f32_e32 v9, v9, v144
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v79, v79, v80 :: v_dual_add_f32 v80, v132, v126
	v_add_f32_e32 v126, v127, v130
	v_dual_add_f32 v127, v131, v133 :: v_dual_mul_f32 v12, v12, v144
.Ltmp26:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v73, v79, v80 :: v_dual_and_b32 v80, 1, v125
	v_dual_add_f32 v79, v126, v127 :: v_dual_mul_f32 v16, v16, v144
.Ltmp28:
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v125, v111, v145 :: v_dual_mul_f32 v10, v10, v144
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v73, v73, v79
.Ltmp30:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v15, v15, v144
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s12, v37, v37
	v_cmp_o_f32_e64 s13, v40, v40
	v_add3_u32 v37, v37, v123, 0x7fff
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v123, v125
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v76, 0, v76, s14
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s14, v75, v75
	v_add3_u32 v39, v75, v39, 0x7fff
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s4, 0xff800000, v111
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v77, v77, 0, s15
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v144
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s15, v74, v74
	v_add3_u32 v80, v74, v80, 0x7fff
	v_cndmask_b16 v136.h, 0x7fff, v37.h, s12
	v_cndmask_b16 v138.h, 0x7fff, v39.h, s14
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v146, 0, v123, s4
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v129.l, v76.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v144
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v78, v78, v143 :: v_dual_mul_f32 v25, v25, v144
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v128.l, v77.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v79, 1, v129
	v_mov_b16_e64 v135.l, v112.h
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v78, v78
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v138.l, 0x7fff, v80.h, s15
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v144
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v79, v76, v79, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v144
	v_mul_f32_e32 v6, v6, v144
	v_mul_f32_e32 v8, v8, v144
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v78, v78, 0, s17
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v134.l, v78.h
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v36.h, v34.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v124, 1, v124
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v111, 0xffff0000, v34
	v_mov_b16_e32 v114.h, v35.l
	v_and_b32_e32 v123, 0xffff0000, v35
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(0)
	v_bfe_i32 v39, v38, 0, 8
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v40, v40, v124, 0x7fff
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v124, v73
.Ltmp32:
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v74, 24, v38
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v34.l, 4, v38.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v34.h, v38.l, 15
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v136.l, 0x7fff, v40.h, s13
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v124, v124 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v40, 8, v38
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v35.l, v38.h, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v75, 20, v38
	v_and_b16 v34.l, v34.l, 15
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v73, v124
.Ltmp36:
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v73.l, v38.h
	v_bfe_i32 v124, v40, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v38.l, v39.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s4, 7, v34.h
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v35.h, 4, v40.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v125, v73, 0, 8
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v38.h, v40.l, 15
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v35.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v40.l, v74.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v126, v74, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v39.l, v75.l, 15
	v_lshrrev_b16 v39.h, 4, v74.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s6, 0, v38.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v38.l, v34.l, -16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v40.h, 0, -16, s4
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v35.h, v35.h, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v73.l, v124.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s4, 7, v38.h
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v74.l, v125.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v74.h, 0, -16, s5
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v40.l
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_mov_b16_e32 v75.l, v126.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v73.h, v39.l, -16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v79.l, v34.h, v40.h
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v38.l, v34.l, v38.l, s6
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s6, 0, v73.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v34.l, v35.h, -16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v34.h, 0, -16, s4
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v74.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v73.l, v35.l, v74.h
	v_cndmask_b16 v35.l, 0, -16, s5
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v75.h, v39.h, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s7, 0, v75.l
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_bfe_i32 v74, v38, 0, 16
	v_bfe_i32 v124, v79, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v34.l, v35.h, v34.l, s6
	v_cndmask_b16 v39.l, v39.l, v73.h, s4
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v35.l, v40.l, v35.l
	v_or_b16 v38.l, v38.h, v34.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v73, v73, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v40.l, v39.h, v75.h, s7
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v124
	v_bfe_i32 v34, v34, 0, 16
	v_bfe_i32 v39, v39, 0, 16
	v_bfe_i32 v35, v35, 0, 16
	v_bfe_i32 v38, v38, 0, 16
	v_cvt_f32_i32_e32 v73, v73
	v_bfe_i32 v40, v40, 0, 16
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v13, v13, v144 :: v_dual_mul_f32 v74, v36, v74
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v75, v36, v75
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	v_mul_f32_e32 v73, v114, v73
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v1, v1, v144 :: v_dual_mul_f32 v34, v111, v34
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v115.l, v74.h
	v_mov_b16_e32 v116.l, v75.h
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v39, v114, v39
	v_mul_f32_e32 v35, v123, v35
	v_dual_mul_f32 v38, v111, v38 :: v_dual_and_b32 v113, 1, v128
	v_mul_f32_e32 v40, v123, v40
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v120.l, v73.h
	v_and_b32_e32 v111, 1, v115
	v_and_b32_e32 v114, 1, v116
	v_mov_b16_e32 v117.l, v34.h
	v_mov_b16_e32 v119.l, v39.h
	v_mov_b16_e32 v122.l, v35.h
	v_mov_b16_e32 v118.l, v38.h
	v_and_b32_e32 v115, 1, v120
	v_mov_b16_e32 v121.l, v40.h
	v_cmp_o_f32_e64 s4, v74, v74
	v_add3_u32 v74, v74, v111, 0x7fff
	v_and_b32_e32 v111, 1, v117
	v_and_b32_e32 v116, 1, v119
	v_and_b32_e32 v117, 1, v122
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v144
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s5, v75, v75
	v_add3_u32 v75, v75, v114, 0x7fff
	v_and_b32_e32 v114, 1, v118
	v_cmp_o_f32_e64 s6, v73, v73
	v_add3_u32 v73, v73, v115, 0x7fff
	v_and_b32_e32 v115, 1, v121
	v_cmp_o_f32_e64 s7, v34, v34
	v_cmp_o_f32_e64 s9, v39, v39
	v_cmp_o_f32_e64 s11, v35, v35
	v_add3_u32 v34, v34, v111, 0x7fff
	v_add3_u32 v39, v39, v116, 0x7fff
	v_add3_u32 v35, v35, v117, 0x7fff
	v_cmp_o_f32_e64 s8, v38, v38
	v_add3_u32 v38, v38, v114, 0x7fff
	v_cmp_o_f32_e64 s10, v40, v40
	v_add3_u32 v40, v40, v115, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v73.h, s6
	v_cndmask_b16 v73.h, 0x7fff, v34.h, s7
	v_cndmask_b16 v34.h, 0x7fff, v39.h, s9
	v_cndmask_b16 v38.l, 0x7fff, v35.h, s11
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v35, 1, v135
	v_and_b32_e32 v39, 1, v134
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s4
	v_cndmask_b16 v74.l, 0x7fff, v75.h, s5
	v_cndmask_b16 v73.l, 0x7fff, v38.h, s8
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s5, v76, v76
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v115, 0, v92
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s10
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v40, v77, v113, 0x7fff
	v_cmp_o_f32_e64 s4, v77, v77
	v_add3_u32 v35, v112, v35, 0x7fff
	v_add3_u32 v39, v78, v39, 0x7fff
	v_cmp_o_f32_e64 s6, v78, v78
	v_cmp_o_f32_e64 s7, v112, v112
	v_cndmask_b16 v40.l, 0x7fff, v79.h, s5
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v94, v74, v73 offset1:8
	ds_store_2addr_b32 v94, v34, v38 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[73:76], v115
	ds_load_b128 v[111:114], v115 offset:512
	ds_load_b128 v[77:80], v103
	ds_load_b128 v[119:122], v115 offset:1024
	ds_load_b128 v[127:130], v115 offset:1536
	ds_load_b128 v[115:118], v103 offset:512
	ds_load_b128 v[123:126], v103 offset:1024
	ds_load_b128 v[131:134], v103 offset:1536
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s4
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s6
	v_cndmask_b16 v39.l, 0x7fff, v35.h, s7
	v_permlanex16_b32 v35, v136, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v138, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v40, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s4, s27, 16
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v142, v39, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v135, v35, v136, v83
	v_perm_b32 v136, v35, v136, v84
	v_perm_b32 v137, v34, v138, v83
	v_perm_b32 v138, v34, v138, v84
	v_perm_b32 v139, v38, v40, v83
	v_perm_b32 v140, v38, v40, v84
	v_perm_b32 v141, v142, v39, v83
	v_perm_b32 v142, v142, v39, v84
	.loc	1 903 13                        ; attention.py:903:13
	s_cmpk_lt_u32 s27, 0x7f0
	s_mov_b32 s27, s4
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[111:118], v[135:142], v[17:24]
	v_dual_mov_b32 v112, v143 :: v_dual_fmac_f32 v37, v109, v146
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[135:142], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[119:126], v[135:142], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[127:134], v[135:142], v[1:8]
	v_mov_b32_e32 v111, v145
	v_mov_b32_e32 v109, v37
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s4, s27, s31
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v40, v33
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s4, s4, s28
	.loc	1 939 32                        ; attention.py:939:32
	v_add_nc_u32_e32 v39, 0, v89
	v_add_lshl_u32 v34, s4, v81, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	buffer_load_b128 v[35:38], v34, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v34, v33
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v93, v[35:38]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[113:116], v39
	ds_load_b128 v[117:120], v96
	ds_load_b128 v[121:124], v97
	ds_load_b128 v[125:128], v98
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[129:132], v99
	ds_load_b128 v[133:136], v100
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v80, v40 :: v_dual_mov_b32 v77, v37
	v_dual_mov_b32 v78, v38 :: v_dual_mov_b32 v79, v39
	v_dual_mov_b32 v76, v36 :: v_dual_mov_b32 v75, v35
	v_dual_mov_b32 v74, v34 :: v_dual_mov_b32 v73, v33
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[137:140], v101
	ds_load_b128 v[141:144], v102
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[113:120], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[121:128], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[129:136], v[57:64], v[73:80]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[137:144], v[65:72], v[73:80]
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s5, s2
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	v_add_nc_u32_e32 v34, s27, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v35, 31, v34
	v_add_co_u32 v34, s4, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, s4
	global_load_b64 v[36:37], v[34:35], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 903 13                        ; attention.py:903:13
	v_lshlrev_b32_e32 v0, 3, v0
	v_lshrrev_b32_e32 v33, 2, v88
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.h, v36.l
	v_mov_b16_e32 v41.h, v36.l
	v_mov_b16_e32 v39.h, v36.l
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_and_b32 s25, s25, 0xffff
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_and_or_b32 v0, 0x78, v0, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v33, 1, v86
	s_mov_b32 s27, 0x31027000
	.loc	1 903 13                        ; attention.py:903:13
	ds_bpermute_b32 v38, v0, v37
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v35, v33, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v42, s21, v35
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v35, s26, v35
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v35, s29, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v42, null, v38, v38, v26
	v_div_scale_f32 v44, null, v38, v38, v25
	v_div_scale_f32 v46, null, v38, v38, v27
	v_rcp_f32_e32 v47, v42
	v_div_scale_f32 v45, null, v38, v38, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v44
	v_rcp_f32_e32 v51, v46
	v_div_scale_f32 v43, vcc_lo, v26, v38, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v49, v45
	v_div_scale_f32 v50, s6, v25, v38, v25
	v_fma_f32 v54, -v42, v47, 1.0
	v_div_scale_f32 v57, null, v38, v38, v30
	v_fma_f32 v55, -v44, v48, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v46, v51, 1.0
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v52, s7, v28, v38, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v45, v49, 1.0
	v_dual_fmac_f32 v48, v55, v48 :: v_dual_fmac_f32 v51, v58, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v55, v43, v47
	v_dual_fmac_f32 v49, v56, v49 :: v_dual_and_b32 v0, 8, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v56, v50, v48
	v_rcp_f32_e32 v59, v57
	v_fma_f32 v61, -v42, v55, v43
	v_div_scale_f32 v53, s8, v27, v38, v27
	v_mul_f32_e32 v58, v52, v49
	v_fma_f32 v62, -v44, v56, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v61, v47
	v_mul_f32_e32 v60, v53, v51
	v_div_scale_f32 v54, null, v38, v38, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v61, -v57, v59, 1.0
	v_fmac_f32_e32 v56, v62, v48
	v_fma_f32 v42, -v42, v55, v43
	v_fma_f32 v63, -v45, v58, v52
	v_fma_f32 v65, -v46, v60, v53
	v_fmac_f32_e32 v59, v61, v59
	v_fma_f32 v43, -v44, v56, v50
	v_div_fmas_f32 v42, v42, v47, v55
	v_fmac_f32_e32 v58, v63, v49
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v60, v65, v51
	v_div_fmas_f32 v43, v43, v48, v56
	v_div_fixup_f32 v26, v42, v38, v26
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v45, v58, v52
	v_fma_f32 v46, -v46, v60, v53
	v_div_fixup_f32 v25, v43, v38, v25
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v44, v49, v58
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v45, s9, v30, v38, v30
	v_div_fmas_f32 v44, v46, v51, v60
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v46, 0, v25, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v26.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v25, v42, v38, v28
	v_rcp_f32_e32 v64, v54
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_mov_b16_e32 v40.l, v46.h
	v_and_b32_e32 v28, 1, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v39, 0, v25, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v48.h, v36.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v44, v38, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v25, 1, v40
	v_add3_u32 v26, v26, v28, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v45, v59
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v26.l, v39.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v54, v64, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v46, v25, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v26.h, vcc_lo
	v_mov_b16_e32 v26.h, v36.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v57, v40, v45
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, s7, v29, v38, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v26, 1, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v44, v59
	v_div_scale_f32 v44, null, v38, v38, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v26, v39, v26, 0x7fff
	v_cmp_o_f32_e64 s8, v39, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v39, v44
	v_fmac_f32_e32 v64, v50, v64
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_and_b32_e32 v41, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v57, v40, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v43, v64
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v28.h, vcc_lo
	v_add3_u32 v28, v27, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s9
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s29, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v54, v42, v43
	v_div_fmas_f32 v40, v45, v59, v40
	s_mov_b32 vcc_lo, s7
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 48, v0
	v_or_b32_e32 v37, 16, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v41, v64
	v_div_scale_f32 v41, null, v38, v38, v31
	v_div_fixup_f32 v30, v40, v38, v30
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 32, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v54, v42, v43
	v_rcp_f32_e32 v46, v41
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v35, v0, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s6
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s29, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v43, v64, v42
	v_fma_f32 v43, -v44, v39, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_mov_b16_e32 v48.l, v30.h
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s29, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v29, v42, v38, v29
	v_fma_f32 v27, -v41, v46, 1.0
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v42, s7, v32, v38, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.l, 0x7fff, v28.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v27, v46
	v_div_scale_f32 v27, s8, v31, v38, v31
	v_mul_f32_e32 v28, v42, v39
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v27, v46
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v43.h, v36.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v44, v28, v42
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s29, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v43.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v47, -v41, v40, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v29, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v45, v39
	v_div_scale_f32 v45, null, v38, v38, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v47, v46 :: v_dual_and_b32 v47, 1, v48
	v_fma_f32 v42, -v44, v28, v42
	v_div_scale_f32 v44, null, v38, v38, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v41, v40, v27
	v_rcp_f32_e32 v41, v45
	v_div_fmas_f32 v28, v42, v39, v28
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v39, v44
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v43
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v27, v46, v40
	v_div_fixup_f32 v28, v28, v38, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v40, v30, v47, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v46.h, v36.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v45, v41, 1.0
	v_div_fixup_f32 v30, v27, v38, v31
	v_div_scale_f32 v31, s7, v18, v38, v18
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v32, v41
	v_fma_f32 v32, -v44, v39, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v27.h, 0x7fff, v40.h, vcc_lo
	v_mov_b16_e32 v40.l, v28.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v42, v31, v41 :: v_dual_fmac_f32 v39, v32, v39
	v_div_scale_f32 v32, s8, v17, v38, v17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.h, v36.l
	v_mov_b16_e32 v46.l, v30.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v47, -v45, v42, v31
	v_mul_f32_e32 v48, v32, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v43, v29, v43, 0x7fff
	v_and_b32_e32 v29, 1, v40
	v_and_b32_e32 v40, 1, v46
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v47, v41
	v_fma_f32 v46, -v44, v48, v32
	v_div_scale_f32 v47, null, v38, v38, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v28, v29, 0x7fff
	v_cmp_o_f32_e64 s10, v28, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v46, v39
	v_fma_f32 v28, -v45, v42, v31
	v_rcp_f32_e32 v31, v47
	v_div_scale_f32 v45, null, v38, v38, v19
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v32, -v44, v48, v32
	v_div_fmas_f32 v41, v28, v41, v42
	v_rcp_f32_e32 v42, v45
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v39, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v47, v31, 1.0
	v_div_scale_f32 v29, vcc_lo, v20, v38, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v40, v30, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v32, v38, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v31, v39, v31
	v_fma_f32 v32, -v45, v42, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v30, v30
	v_cndmask_b16 v27.l, 0x7fff, v43.h, s9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v17, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_dual_mul_f32 v17, v29, v31 :: v_dual_fmac_f32 v42, v32, v42
	v_div_scale_f32 v32, s8, v19, v38, v19
	v_div_fixup_f32 v18, v41, v38, v18
	v_fma_f32 v41, -v47, v17, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v44.h, v36.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v43, v32, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v28.l, 0x7fff, v40.h, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v17, v41, v31
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v30.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v45, v43, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v36.l
	v_mov_b16_e32 v44.l, v18.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v47, v17, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v41, v42
	v_div_scale_f32 v41, null, v38, v38, v22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v40, 1, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v17, v29, v31, v17
	v_fma_f32 v29, -v45, v43, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v31, v41
	v_div_scale_f32 v32, null, v38, v38, v21
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v40, v18, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v29, v29, v42, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v17, v38, v20
	v_rcp_f32_e32 v20, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v29, v38, v19
	v_fma_f32 v29, -v41, v31, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_add3_u32 v39, v30, v39, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v31, v29, v31
	v_div_scale_f32 v29, s7, v22, v38, v22
	v_fma_f32 v30, -v32, v20, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v18.h
	v_mov_b16_e32 v40.h, v36.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v43, v29, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.l, 0x7fff, v39.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v20, v30, v20
	v_div_scale_f32 v30, s8, v21, v38, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v41, v43, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v40, v30, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v18, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v44, v31
	v_div_scale_f32 v44, null, v38, v38, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v32, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v18, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v41, v43, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v41, v44
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v45, v20
	v_div_scale_f32 v45, null, v38, v38, v23
	v_div_fmas_f32 v29, v29, v31, v43
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v32, v40, v30
	v_rcp_f32_e32 v31, v45
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v19.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v44, v41, 1.0
	v_div_fixup_f32 v22, v29, v38, v22
	v_div_fmas_f32 v20, v18, v20, v40
	v_div_scale_f32 v29, vcc_lo, v24, v38, v24
	v_fmac_f32_e32 v41, v30, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v39.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v20, v38, v21
	v_fma_f32 v30, -v45, v31, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v22, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v29, v41
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v42.h, v36.l
	v_cmp_o_f32_e64 s8, v19, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v30, v31
	v_div_scale_f32 v30, s7, v23, v38, v23
	v_fma_f32 v32, -v44, v22, v29
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v40.h, v36.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v39, v30, v31 :: v_dual_fmac_f32 v22, v32, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v20.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v45, v39, v30
	v_fma_f32 v29, -v44, v22, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v39, v32, v31 :: v_dual_and_b32 v40, 1, v40
	v_div_scale_f32 v32, null, v38, v38, v10
	v_div_fmas_f32 v22, v29, v41, v22
	v_div_scale_f32 v41, null, v38, v38, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v45, v39, v30
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v30, v32
	v_div_fmas_f32 v29, v29, v31, v39
	v_rcp_f32_e32 v31, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v42, 1, v42
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v23, v29, v38, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v42, v19, v42, 0x7fff
	v_mov_b16_e32 v19.l, v21.h
	v_mov_b16_e32 v19.h, v36.l
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v32, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v42.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v30, v29, v30 :: v_dual_and_b32 v19, 1, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v19, v21, v19, 0x7fff
	v_add3_u32 v21, v20, v40, 0x7fff
	v_mov_b16_e32 v40.h, v36.l
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v22, v38, v24
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v23, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v23, s7, v10, v38, v10
	v_fma_f32 v24, -v41, v31, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v21.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v29, v23, v30
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v24, v31
	v_div_scale_f32 v24, s8, v9, v38, v9
	v_fma_f32 v39, -v32, v29, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v20.h
	v_mov_b16_e32 v21.l, v22.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v24, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.h, v36.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v39, v30
	v_div_scale_f32 v39, null, v38, v38, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v41, v42, v24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v40, 1, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v23, -v32, v29, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v32, v39
	v_dual_fmac_f32 v42, v43, v31 :: v_dual_and_b32 v21, 1, v21
	v_div_scale_f32 v43, null, v38, v38, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v23, v23, v30, v29
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v24, -v41, v42, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v30, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v20, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v10, v23, v38, v10
	v_fma_f32 v40, -v39, v32, 1.0
	v_div_fmas_f32 v23, v24, v31, v42
	v_div_scale_f32 v24, vcc_lo, v12, v38, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v20, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v9, v23, v38, v9
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v31, -v43, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.h, v36.l
	v_add3_u32 v21, v22, v21, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v30, v31, v30
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v10.h
	v_mov_b16_e32 v31.h, v36.l
	v_cmp_o_f32_e64 s7, v22, v22
	v_mov_b16_e32 v42.l, v9.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v32, v40, v32
	v_div_scale_f32 v23, s8, v11, v38, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v22, 1, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v20, v24, v32 :: v_dual_and_b32 v31, 1, v42
	v_mul_f32_e32 v41, v23, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v29.l, 0x7fff, v21.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v22, v10, v22, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v39, v20, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v20, v40, v32
	v_fma_f32 v40, -v43, v41, v23
	v_fma_f32 v24, -v39, v20, v24
	v_div_scale_f32 v39, null, v38, v38, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v40, v30
	v_div_scale_f32 v40, null, v38, v38, v13
	v_div_fmas_f32 v20, v24, v32, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v24, v39
	v_fma_f32 v23, -v43, v41, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v32, v40
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v12, v20, v38, v12
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v23, v23, v30, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v10, v9, v31, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v21, -v39, v24, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v41.h, v36.l
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v40, v32, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.l, v12.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v24, v21, v24
	v_div_scale_f32 v21, vcc_lo, v14, v38, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v20, v32
	v_div_scale_f32 v20, s7, v13, v38, v13
	v_mul_f32_e32 v9, v21, v24
	v_div_fixup_f32 v11, v23, v38, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.l, 0x7fff, v10.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v30, v20, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v10, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v39, v9, v21
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v36.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v40, v30, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v12, v10, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v9, v31, v24
	v_div_scale_f32 v31, null, v38, v38, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v42, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v11.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v39, v9, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v40, v30, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v9, v21, v24, v9
	v_rcp_f32_e32 v21, v31
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v24, null, v38, v38, v15
	v_div_fmas_f32 v20, v20, v32, v30
	v_div_fixup_f32 v9, v9, v38, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_add3_u32 v23, v11, v23, 0x7fff
	v_mov_b16_e32 v30.h, v36.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v20, v38, v13
	v_rcp_f32_e32 v13, v24
	v_fma_f32 v14, -v31, v21, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v12, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v21, v14, v21
	v_div_scale_f32 v14, s7, v16, v38, v16
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v9.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v24, v13, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.h, v36.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v32, v14, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v23.h, vcc_lo
	v_cmp_o_f32_e64 s9, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v20, v13
	v_div_scale_f32 v20, s8, v15, v38, v15
	v_fma_f32 v39, -v31, v32, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v12, 1, v12
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v23, v20, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.l, v11.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v32, v39, v21
	v_div_scale_f32 v39, null, v38, v38, v2
	v_fma_f32 v40, -v24, v23, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v12, v9, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v31, v32, v14
	v_rcp_f32_e32 v14, v39
	v_div_scale_f32 v31, null, v38, v38, v1
	v_fmac_f32_e32 v23, v40, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v9, v9, v21, v32
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v21, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v30, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v24, v23, v20
	v_div_fixup_f32 v9, v9, v38, v16
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v24, -v39, v14, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v11, v11
	v_add3_u32 v30, v11, v30, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v13, v20, v13, v23
	v_div_scale_f32 v16, vcc_lo, v2, v38, v2
	v_fmac_f32_e32 v14, v24, v14
	v_fma_f32 v20, -v31, v21, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v13, v38, v15
	v_div_scale_f32 v15, s8, v1, v38, v1
	v_mul_f32_e32 v13, v16, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v21, v20, v21
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v32, null, v38, v38, v4
	v_fma_f32 v23, -v39, v13, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v24, v15, v21
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v20.l, v9.h
	v_mov_b16_e32 v20.h, v36.l
	v_cndmask_b16 v12.l, 0x7fff, v30.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v23, v14
	v_fma_f32 v23, -v31, v24, v15
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v30.h, v36.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v16, -v39, v13, v16
	v_fmac_f32_e32 v24, v23, v21
	v_rcp_f32_e32 v23, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v20, v9, v20, 0x7fff
	v_mov_b16_e32 v30.l, v11.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v13, v16, v14, v13
	v_fma_f32 v14, -v31, v24, v15
	v_div_scale_f32 v15, null, v38, v38, v3
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v2, v13, v38, v2
	v_div_fmas_f32 v14, v14, v21, v24
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v16, -v32, v23, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v9, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v30, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v14, v38, v1
	v_fmac_f32_e32 v23, v16, v23
	v_div_scale_f32 v14, s7, v4, v38, v4
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v16, v11, v30, 0x7fff
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v14, v23
	v_fma_f32 v21, -v15, v9, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_mov_b16_e32 v30.l, v2.h
	v_mov_b16_e32 v30.h, v36.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v24, -v32, v13, v14
	v_fmac_f32_e32 v9, v21, v9
	v_div_scale_f32 v21, s8, v3, v38, v3
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v24, v23
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v20.l, 0x7fff, v16.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v24, v21, v9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v16, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v14, -v32, v13, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v11.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v15, v24, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v11.h, v36.l
	v_add3_u32 v16, v2, v16, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v13, v14, v23, v13
	v_div_scale_f32 v14, null, v38, v38, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v24, v30, v9 :: v_dual_and_b32 v11, 1, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v2, v2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v13, v38, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v13, v14
	v_fma_f32 v2, -v15, v24, v21
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v11, v1, v11, 0x7fff
	v_mov_b16_e32 v15.h, v36.l
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v2, v2, v9, v24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v1.h, 0x7fff, v16.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v16, null, v38, v38, v8
	v_div_scale_f32 v9, null, v38, v38, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v11.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v11, -v14, v13, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v23, v16
	v_div_fixup_f32 v2, v2, v38, v3
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v4, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v4, v9
	v_fmac_f32_e32 v13, v11, v13
	v_div_scale_f32 v11, vcc_lo, v6, v38, v6
	v_div_scale_f32 v32, s7, v5, v38, v5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v11, v13
	v_fma_f32 v39, -v16, v23, 1.0
	v_div_scale_f32 v24, null, v38, v38, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v9, v4, 1.0
	v_fma_f32 v40, -v14, v31, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, v39, v23
	v_div_scale_f32 v39, s8, v8, v38, v8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v15, 1, v15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v40, v13
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v43, v39, v23
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v30.h, v36.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v11, -v14, v31, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v14, -v16, v43, v39
	v_fmac_f32_e32 v4, v21, v4
	v_rcp_f32_e32 v21, v24
	v_div_fmas_f32 v11, v11, v13, v31
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v43, v14, v23
	v_mul_f32_e32 v41, v32, v4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v3, v3
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v11, v38, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v11.h, v36.l
	v_and_b32_e32 v30, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v9, v41, v32
	v_fma_f32 v42, -v24, v21, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b32_e64 v14, v18, v29, s0
	v_add3_u32 v30, v2, v30, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v40, v4
	v_fmac_f32_e32 v21, v42, v21
	v_div_scale_f32 v42, s9, v7, v38, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v9, v41, v32
	v_div_fmas_f32 v4, v9, v4, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v3, v15, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v3, -v16, v43, v39
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v15, v12, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v4, v38, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v3, v3, v23, v43
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v12, v22, v12, s0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v16, v20, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v3, v3, v38, v8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v8.l, v6.h
	v_mov_b16_e32 v8.h, v36.l
	v_cmp_o_f32_e64 s7, v4, v4
	v_cndmask_b32_e64 v10, v10, v20, s0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v11.l, v3.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v42, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v8, v6, v8, 0x7fff
	v_cmp_o_f32_e64 s8, v3, v3
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v13, -v24, v40, v42
	v_fmac_f32_e32 v40, v13, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v13.h, v36.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v5, -v24, v40, v42
	v_div_fmas_f32 v5, v5, v21, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v5, v38, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v7.l, v4.h
	v_mov_b16_e32 v7.h, v36.l
	v_cndmask_b16 v9.l, 0x7fff, v30.h, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v6, v6
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v6, v3, v11, 0x7fff
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v13.l, v5.h
	v_cmp_o_f32_e64 s9, v5, v5
	v_add3_u32 v2, v4, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v8.h, s6
	v_cndmask_b32_e64 v8, v19, v17, s0
	v_and_b32_e32 v7, 1, v13
	v_cndmask_b32_e64 v11, v17, v19, s0
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s8
	v_cndmask_b32_e64 v13, v29, v18, s0
	v_add3_u32 v4, v5, v7, 0x7fff
	v_cndmask_b32_e64 v5, v25, v27, s0
	v_cndmask_b32_e64 v7, v26, v28, s0
	v_cndmask_b32_e64 v17, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s9
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v4, v27, v25, s0
	v_cndmask_b32_e64 v6, v28, v26, s0
	v_permlanex16_b32 v3, v5, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v18, v2, v9, s0
	v_cndmask_b32_e64 v2, v9, v2, s0
	v_permlanex16_b32 v5, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v14, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v1, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v2, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v3, v4, v83
	v_perm_b32 v2, v3, v4, v84
	v_perm_b32 v3, v5, v6, v83
	v_perm_b32 v4, v5, v6, v84
	v_perm_b32 v5, v7, v8, v83
	v_perm_b32 v6, v7, v8, v84
	v_perm_b32 v7, v9, v13, v83
	v_perm_b32 v8, v9, v13, v84
	v_perm_b32 v13, v14, v17, v83
	v_perm_b32 v14, v14, v17, v84
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v35, v37, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v9, v11, v15, v83
	v_perm_b32 v10, v11, v15, v84
	v_perm_b32 v11, v12, v16, v83
	v_perm_b32 v12, v12, v16, v84
	v_perm_b32 v15, v19, v18, v83
	v_perm_b32 v16, v19, v18, v84
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v35, v34, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v35, v33, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v0, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v17, s[24:27], 0 offen
	buffer_store_b128 v[9:12], v18, s[24:27], 0 offen
	buffer_store_b128 v[13:16], v19, s[24:27], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp37:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 147
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 147
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9740
; TotalNumSgprs: 50
; NumVgprs: 147
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 147
; Occupancy: 9
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	968                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     147
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
