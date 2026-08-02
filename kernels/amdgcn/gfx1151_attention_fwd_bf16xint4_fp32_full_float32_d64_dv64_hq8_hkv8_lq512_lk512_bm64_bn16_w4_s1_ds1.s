	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x5c
	s_load_b64 s[8:9], s[0:1], 0x6c
	v_dual_mov_b32 v7, 0x5410 :: v_dual_and_b32 v6, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	v_mov_b32_e32 v8, 0x7632
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[36:37], s[0:1], 0x10
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v6
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s26, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s27, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s26, v2
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s19, s26, s27
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v88, 0x60, v0
	s_mov_b32 s31, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v4
	s_mov_b32 s30, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[40:43], s[0:1], 0x28
	s_load_b64 s[24:25], s[0:1], 0x38
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[81:82], null, s20, v2, v[1:2]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s20, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s10, s20, 4
	s_lshl_b32 s11, s20, 5
	s_mul_i32 s12, s20, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s29, s5, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s20, s19, v[81:82]
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s28, s4
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v28, v33 :: v_dual_and_b32 v87, 15, v0
	v_dual_mov_b32 v32, v33 :: v_dual_lshlrev_b32 v53, 1, v0
	v_dual_mov_b32 v26, v33 :: v_dual_lshlrev_b32 v1, 1, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v2, s10, 1
	v_add_lshl_u32 v4, v2, s11, 1
	v_add_lshl_u32 v2, v2, s12, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v20, v33 :: v_dual_and_b32 v57, 12, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x3
	buffer_load_b128 v[34:37], v1, s[28:31], 0 offen
	buffer_load_b128 v[38:41], v3, s[28:31], 0 offen
	buffer_load_b128 v[42:45], v4, s[28:31], 0 offen
	buffer_load_b128 v[46:49], v2, s[28:31], 0 offen
	v_dual_mov_b32 v10, v33 :: v_dual_and_b32 v61, 16, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v52, 4, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v56, 64, v0
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v58, 5, v0
	v_dual_mov_b32 v18, v33 :: v_dual_and_b32 v55, 48, v0
	v_dual_mov_b32 v29, v33 :: v_dual_lshlrev_b32 v6, 4, v6
	v_dual_mov_b32 v31, v33 :: v_dual_lshlrev_b32 v90, 3, v87
	v_dual_mov_b32 v19, v33 :: v_dual_lshlrev_b32 v68, 8, v57
	v_dual_mov_b32 v12, v33 :: v_dual_and_b32 v53, 0x70, v53
	v_dual_mov_b32 v2, v33 :: v_dual_lshlrev_b32 v57, 1, v57
	s_sub_i32 s4, s3, s1
	v_cmp_eq_u32_e64 s1, 0, v61
	v_dual_mov_b32 v30, v33 :: v_dual_and_b32 v51, 3, v0
	v_dual_mov_b32 v22, v33 :: v_dual_and_b32 v59, 28, v0
	v_bfe_i32 v60, v0, 5, 1
	v_dual_mov_b32 v14, v33 :: v_dual_lshlrev_b32 v67, 1, v56
	v_dual_mov_b32 v16, v33 :: v_dual_and_b32 v69, 0x260, v58
	v_lshrrev_b32_e32 v66, 1, v55
	v_cndmask_b32_e64 v7, 0x1054, v7, s1
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v52, v52, v53
	v_lshl_or_b32 v91, v87, 7, v6
	v_lshl_or_b32 v6, v55, 6, v90
	v_lshl_or_b32 v53, v88, 2, v57
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v54, 0x70, v0
	v_dual_mov_b32 v24, v33 :: v_dual_lshlrev_b32 v89, 2, v0
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v62, 7, v0
	v_bfe_i32 v63, v0, 0, 1
	v_dual_mov_b32 v21, v33 :: v_dual_and_b32 v60, 0x120, v60
	v_lshl_or_b32 v59, v51, 5, v59
	v_cndmask_b32_e64 v8, 0x3276, v8, s1
	v_lshl_or_b32 v7, v7, 8, v7
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v95, 0, v67
	v_xor_b32_e32 v6, v6, v66
	v_or3_b32 v97, v68, v69, v53
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v50, 2, v0
	v_bfe_i32 v64, v0, 2, 1
	v_dual_mov_b32 v23, v33 :: v_dual_and_b32 v70, 0x300, v58
	v_mov_b32_e32 v11, v33
	v_dual_mov_b32 v13, v33 :: v_dual_and_b32 v58, 0x160, v58
	v_dual_mov_b32 v4, v33 :: v_dual_and_b32 v71, 0xfc, v89
	v_lshrrev_b32_e32 v56, 5, v56
	v_and_b32_e32 v61, 0x700, v62
	v_lshrrev_b32_e32 v54, 2, v54
	v_and_b32_e32 v62, 0x90, v63
	v_xor_b32_e32 v92, v59, v60
	v_and_b32_e32 v7, 0x540054, v7
	v_lshl_or_b32 v8, v8, 8, v8
	v_add_nc_u32_e32 v106, v95, v6
	v_xor_b32_e32 v6, 8, v97
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v96, 0, v52
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v65, s26, v50
	v_or3_b32 v93, v70, v71, v56
	v_xor_b32_e32 v54, v62, v54
	v_and_or_b32 v94, 0x90, v64, v58
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_lshl_or_b32 v52, v88, 6, v91
	v_or_b32_e32 v53, v92, v67
	v_lshl_or_b32 v7, v7, 4, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_add_nc_u32_e32 v113, 0, v6
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v55, 0, v61
	v_mul_lo_u32 v50, s9, v50
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s2, s0, 3
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v65
	v_xor_b32_e32 v56, 48, v91
	v_xor_b32_e32 v57, 64, v91
	v_xor_b32_e32 v58, 0x50, v91
	v_xor_b32_e32 v59, 0x60, v91
	v_xor_b32_e32 v60, 0x70, v91
	v_xor_b32_e32 v61, 32, v93
	v_xor_b32_e32 v62, 64, v93
	v_xor_b32_e32 v63, 0x60, v93
	v_xor_b32_e32 v64, 16, v94
	v_dual_mov_b32 v126, 0xff800000 :: v_dual_add_nc_u32 v65, 0, v52
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v66, v52, 16, 0
	v_xad_u32 v67, v52, 32, 0
	v_xad_u32 v68, v52, 48, 0
	v_xad_u32 v69, v52, 64, 0
	v_xad_u32 v70, 0x50, v52, 0
	v_xad_u32 v71, 0x60, v52, 0
	v_xad_u32 v72, 0x70, v52, 0
	v_xor_b32_e32 v73, 0x240, v53
	v_xor_b32_e32 v52, 16, v97
	v_xor_b32_e32 v53, 24, v97
	v_and_b32_e32 v112, 0x5040504, v7
	v_lshl_or_b32 v7, v8, 4, v8
	v_mov_b32_e32 v8, v33
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v98, v55, v54
	v_xor_b32_e32 v54, 16, v91
	v_xor_b32_e32 v55, 32, v91
	v_dual_mov_b32 v124, 0xff800000 :: v_dual_add_nc_u32 v101, 0, v56
	v_dual_mov_b32 v123, 0xff800000 :: v_dual_add_nc_u32 v102, 0, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v122, 0xff800000 :: v_dual_add_nc_u32 v99, 0, v54
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v100, 0, v55
	v_add_nc_u32_e32 v103, 0, v58
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_add_nc_u32 v104, 0, v59
	v_add_nc_u32_e32 v105, 0, v60
	v_add_nc_u32_e32 v107, 0, v61
	v_add_nc_u32_e32 v108, 0, v62
	v_add_nc_u32_e32 v109, 0, v63
	v_add_nc_u32_e32 v110, 0, v64
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v111, v51, 2, v50
	v_add_nc_u32_e32 v114, 0, v52
	v_add_nc_u32_e32 v115, 0, v53
	v_dual_mov_b32 v15, v33 :: v_dual_lshlrev_b32 v82, 2, v87
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v116, 4, v0
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s2, s23, s2
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s4, s8, s4
	v_add_nc_u32_e32 v117, 0, v73
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s1, s21, v82
	v_and_b32_e32 v118, 0x7060706, v7
	v_mov_b32_e32 v7, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v119, 0x7c, v0
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v120, s9, 5, v111
	v_lshl_or_b32 v121, s3, 8, v116
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s22, s22, 0x3fb8aa3b
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s5, s9, s26
	s_and_b32 s43, s43, 0xffff
	s_add_i32 s23, s4, s2
	s_mov_b32 s33, 0
	s_mov_b32 s34, 0x76543210
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s35, s3, 5
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_and_b32 s29, s7, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s44, s42
	s_mov_b32 s42, s30
	s_mov_b32 s45, s43
	s_mov_b32 s43, s31
	s_add_i32 s23, s23, s5
	s_mov_b32 s28, s6
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v96, v[34:37]
	s_waitcnt vmcnt(2)
	ds_store_b128 v96, v[38:41] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v96, v[42:45] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v96, v[46:49] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v65
	ds_load_b128 v[45:48], v66
	ds_load_b128 v[49:52], v67
	ds_load_b128 v[53:56], v68
	ds_load_b128 v[57:60], v69
	ds_load_b128 v[61:64], v70
	ds_load_b128 v[65:68], v71
	ds_load_b128 v[69:72], v72
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s2, s33, s27
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v40, v33
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s2, s2, s20
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v85, 0, v91
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v128, 0, v97
	v_dual_mov_b32 v36, v33 :: v_dual_add_nc_u32 v129, 0, v93
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v130, v95, v92
	v_mov_b32_e32 v38, v33
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v131, s2, v81, 1
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v39, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v80, v40 :: v_dual_mov_b32 v77, v37
	v_mov_b32_e32 v78, v38
	v_dual_mov_b32 v76, v36 :: v_dual_mov_b32 v75, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v79, v39 :: v_dual_mov_b32 v74, v34
	v_dual_mov_b32 v73, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v131
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s3, s23, s33
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s2, s33, 1
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v86, s3, v111, 2
	v_add_lshl_u32 v127, s3, v120, 2
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[34:37], v34, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v38, 0x80000000, v86, s0
	v_cndmask_b32_e64 v40, 0x80000000, v127, s0
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s3, s33, 4
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v127.l, 0
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s48, s3, s35
	.loc	1 966 25                        ; attention.py:966:25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s48, s48, s21
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v143.h, v127.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v144.h, v127.l
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v123, v123, v123
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v96, v[34:37]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	s_clause 0x1
	buffer_load_b128 v[36:39], v38, s[44:47], 0 offen
	buffer_load_b128 v[139:142], v40, s[44:47], 0 offen
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[131:134], v85
	ds_load_b128 v[135:138], v99
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[131:138], v[41:48], v[73:80]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[131:134], v100
	ds_load_b128 v[135:138], v101
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[131:138], v[49:56], v[73:80]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[131:134], v102
	ds_load_b128 v[135:138], v103
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[131:138], v[57:64], v[73:80]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[131:134], v104
	ds_load_b128 v[135:138], v105
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_wmma_f32_16x16x16_bf16 v[73:80], v[131:138], v[65:72], v[73:80]
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v35, 0xff800000, v39, s0
	v_cndmask_b32_e64 v86, 0xff800000, v38, s0
	v_cndmask_b32_e64 v85, 0xff800000, v36, s0
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v39, 0xff800000, v141, s0
	v_cndmask_b32_e64 v38, 0xff800000, v139, s0
	v_cndmask_b32_e64 v34, 0xff800000, v37, s0
	v_cndmask_b32_e64 v37, 0xff800000, v142, s0
	v_cndmask_b32_e64 v36, 0xff800000, v140, s0
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_2addr_b64 v106, v[85:86], v[38:39] offset1:32
	ds_store_2addr_b64 v106, v[34:35], v[36:37] offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[131:132], v128
	ds_load_b64 v[135:136], v113
	ds_load_b64 v[139:140], v114
	ds_load_b64 v[141:142], v115
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v86
	v_cmp_neq_f32_e64 s3, 0xff800000, v38
	v_cmp_neq_f32_e64 s8, 0xff800000, v34
	v_cmp_neq_f32_e64 s4, 0xff800000, v85
	v_cmp_neq_f32_e64 s10, 0xff800000, v35
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s5, s0, s5
	s_and_b32 s3, s0, s3
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v36
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v35, 0, 1, s3
	v_cndmask_b32_e64 v36, 0, 1, s5
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v37
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s7, s0, s4
	s_and_b32 s6, s0, s6
	v_cndmask_b32_e64 v37, 0, 1, s7
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, s0, s9
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	v_mul_f32_e32 v138, 0x3fb8aa3b, v131
	v_dual_mul_f32 v134, 0x3fb8aa3b, v132 :: v_dual_mul_f32 v137, 0x3fb8aa3b, v135
	v_dual_mul_f32 v132, 0x3fb8aa3b, v140 :: v_dual_mul_f32 v135, 0x3fb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_dual_fmac_f32 v138, s22, v73 :: v_dual_mul_f32 v131, 0x3fb8aa3b, v142
	v_dual_fmac_f32 v137, s22, v75 :: v_dual_fmac_f32 v132, s22, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v135, s22, v79
	.loc	1 977 30 is_stmt 1              ; attention.py:977:30
	v_add_nc_u32_e32 v79, s2, v121
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v39
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v134, s22, v74 :: v_dual_fmac_f32 v131, s22, v80
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v74, 0, 1, s4
	s_and_b32 s9, s0, s8
	s_and_b32 s2, s0, s2
	s_and_b32 s8, s0, s10
	v_cndmask_b32_e64 v34, 0, 1, s2
	s_barrier
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v133, 0x3fb8aa3b, v136 :: v_dual_mul_f32 v136, 0x3fb8aa3b, v139
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v139.h, v127.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v34.l, 8, v34.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v80.h, v127.l
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v133, s22, v76
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v140.h, v127.l
	v_mov_b16_e64 v141.h, v127.l
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v73.h, v35.l, v34.l
	v_mov_b16_e32 v34.l, v36.l
	v_mov_b16_e32 v35.l, v37.l
	v_cndmask_b32_e64 v36, 0, 1, s8
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v85.h, v127.l
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v126
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v34.l, 8, v34.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v142.h, v127.l
	v_mov_b16_e32 v86.h, v127.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v38.h, v127.l
	v_mov_b16_e32 v39.h, v127.l
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v73.l, v35.l, v34.l
	v_mov_b16_e32 v34.l, v74.l
	v_cndmask_b32_e64 v35, 0, 1, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v34.l, 8, v34.l
	v_or_b16 v34.h, v35.l, v34.l
	v_mov_b16_e32 v34.l, v36.l
	v_cndmask_b32_e64 v35, 0, 1, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v34.l, 8, v34.l
	v_or_b16 v34.l, v35.l, v34.l
	ds_store_b32 v130, v73
	ds_store_b32 v117, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v34, v129
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v34, v107
	ds_load_u16_d16 v35, v108
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v35, v109
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v130.l, v127.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v129.h, v127.l
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v36.l, 1, v34.l
	v_lshrrev_b16 v34.l, 8, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s11, 1, v36.l
	v_and_b16 v36.l, 1, v34.h
	v_and_b16 v34.l, 1, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s12, 1, v36.l
	v_and_b16 v36.l, 1, v35.l
	v_cmp_eq_u16_e64 s15, 1, v34.l
	v_lshrrev_b16 v34.l, 8, v34.h
	v_lshrrev_b16 v34.h, 8, v35.l
	v_lshrrev_b16 v35.l, 8, v35.h
	v_cmp_eq_u16_e64 s13, 1, v36.l
	v_and_b16 v36.l, 1, v35.h
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v34.h, 1, v34.h
	v_and_b16 v35.l, 1, v35.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v73, 0xff800000, v137, s12
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s14, 1, v36.l
	v_cmp_eq_u16_e64 s16, 1, v34.l
	v_cmp_eq_u16_e64 s17, 1, v34.h
	v_cmp_eq_u16_e64 s18, 1, v35.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v36, 0xff800000, v138, s11
	v_cndmask_b32_e64 v37, 0xff800000, v134, s15
	v_cndmask_b32_e64 v74, 0xff800000, v133, s16
	v_cndmask_b32_e64 v76, 0xff800000, v132, s17
	v_cndmask_b32_e64 v78, 0xff800000, v131, s18
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v136, s22, v77
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v77, 0xff800000, v135, s14
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v34, v36, v37, v73
.Ltmp2:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v132.h, v127.l
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v131, v77, v78
.Ltmp4:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v75, 0xff800000, v136, s13
	ds_store_b64 v128, v[36:37]
	ds_store_b64 v113, v[73:74]
	ds_store_b64 v114, v[75:76]
	ds_store_b64 v115, v[77:78]
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v35, v74, v75, v76
.Ltmp6:
	.loc	1 967 26                        ; attention.py:967:26
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v131, v34, v35, v131
.Ltmp8:
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[34:35], null, v79, s21, v[82:83]
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v35, s48, v82, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	buffer_load_b32 v128, v34, s[36:39], 0 offen
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v34, v131, s34, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v34, v126, v131, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v131, v36, v34
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v36, v126, v34
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v79, v37, v34
	v_sub_f32_e32 v74, v74, v34
	v_sub_f32_e32 v75, v75, v34
	v_sub_f32_e32 v73, v73, v34
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v133, v36
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[36:37], v35, s[40:43], 0 offen
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v75, v75
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v78, v78, v34
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v35, v79
	v_exp_f32_e32 v79, v131
	v_exp_f32_e32 v73, v73
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v77, v77, v34
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v74, 0, v74, s16
	v_cndmask_b32_e64 v75, 0, v75, s13
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v35, 0, v35, s15
	v_cndmask_b32_e64 v79, 0, v79, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e64 v140.l, v74.h
	v_cmp_o_f32_e64 s13, v74, v74
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v73, 0, v73, s12
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v80.l, v35.h
	v_mov_b16_e64 v139.l, v79.h
	v_and_b32_e32 v131, 1, v140
	v_cmp_o_f32_e64 s12, v79, v79
	v_mov_b16_e64 v141.l, v73.h
	v_mov_b16_e64 v143.l, v75.h
	v_and_b32_e32 v126, 1, v139
	v_add3_u32 v74, v74, v131, 0x7fff
	v_and_b32_e32 v80, 1, v80
	v_cmp_o_f32_e64 s11, v35, v35
	v_and_b32_e32 v134, 1, v141
	v_add3_u32 v79, v79, v126, 0x7fff
	v_and_b32_e32 v136, 1, v143
	v_add3_u32 v35, v35, v80, 0x7fff
	v_cmp_o_f32_e64 s16, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v35.l, 0x7fff, v79.h, s12
	v_add3_u32 v75, v75, v136, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s11
	v_cndmask_b16 v79.h, 0x7fff, v74.h, s13
	v_cndmask_b16 v80.l, 0x7fff, v75.h, s16
	s_delay_alu instid0(VALU_DEP_3)
	v_permlanex16_b32 v74, v35, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v38.l, v128.h
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v131, 0xffff0000, v37
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v78, v78
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v126, 0xffff0000, v36
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v77, v77
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v130.h, v37.l
	v_mov_b16_e32 v127.h, v36.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v36.l, v128.h, 15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v78, 0, v78, s18
	v_cndmask_b32_e64 v77, 0, v77, s14
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s14, v73, v73
	v_add3_u32 v73, v73, v134, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v85.l, v78.h
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v76, v76, v34
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v86.l, v77.h
	v_cmp_o_f32_e64 s18, v77, v77
	v_cndmask_b16 v79.l, 0x7fff, v73.h, s14
	v_and_b32_e32 v85, 1, v85
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v76, v76
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v86, 1, v86
	v_perm_b32 v73, v74, v35, v112
	v_perm_b32 v74, v74, v35, v118
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v35.l, v128.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v35.h, 4, v128.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v77, v77, v86, 0x7fff
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v134, 24, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v35.l
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v76, 0, v76, s17
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s17, v78, v78
	v_add3_u32 v78, v78, v85, 0x7fff
	v_cndmask_b16 v85.l, 0x7fff, v77.h, s18
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v35.h, v35.h, 15
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v142.l, v76.h
	v_cmp_o_f32_e64 s15, v76, v76
	v_cndmask_b16 v85.h, 0x7fff, v78.h, s17
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v36.h, 0, -16, s11
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v36.l
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_and_b32_e32 v135, 1, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v86, v85, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v39.l, v35.l, v36.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v35.l, v35.h, -16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v76, v76, v135, 0x7fff
	v_cndmask_b16 v80.h, 0x7fff, v76.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v76, v79, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v78, v80, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_perm_b32 v75, v76, v79, v112
	v_perm_b32 v76, v76, v79, v118
	v_perm_b32 v79, v86, v85, v112
	v_perm_b32 v77, v78, v80, v112
	v_perm_b32 v78, v78, v80, v118
	v_perm_b32 v80, v86, v85, v118
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v85, v128, 0, 8
	v_lshrrev_b32_e32 v86, 8, v128
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v128, 20, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v37.l, v85.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v85, v86, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v36.h, v128.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s12, 0, v37.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v37.l, v85.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v85, v134, 0, 8
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v85.h, v127.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v129.l, v35.h, v35.l, s12
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v35.l, v86.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v35.h, 4, v86.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v86, v38, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s12, 0, v37.l
	v_mov_b16_e32 v38.l, v85.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v86.h, v127.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v35.h, v35.h, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v37.l, v86.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_i16_e64 s14, 0, v38.l
	v_cmp_gt_i16_e64 s13, 0, v37.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v37.l, 0, -16, s11
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v35.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v86.l, v36.l, v37.l
	v_cndmask_b16 v37.h, 0, -16, s11
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v36.l, v134.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v37.l, 4, v134.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v136, v86, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v38.l, v35.l, v37.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v35.l, v35.h, -16
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v36.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v136, v136
	v_bfe_i32 v134, v38, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v85.l, v35.h, v35.l, s12
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v35.l, v36.h, -16
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v136, v130, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v134, v134
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v128.l, v36.h, v35.l, s13
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v35.l, 0, -16, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v132.l, v136.h
	v_cmp_o_f32_e64 s13, v136, v136
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v128, v128, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v36.l, v36.l, v35.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v35.l, v37.l, -16
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v128, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_bfe_i32 v36, v36, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v35.l, v37.l, v35.l, s14
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v37, v85, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v128, v130, v128
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_i32 v35, v35, 0, 16
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_add_nc_u32_e32 v40, 0, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v135, v126, v37
	v_bfe_i32 v37, v39, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v130, v131, v35
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v144.l, v135.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v37, v37
	v_mul_f32_e32 v131, v131, v36
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s14, v135, v135
	v_and_b32_e32 v137, 1, v144
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v37, v127, v37
	.loc	1 967 26 is_stmt 1              ; attention.py:967:26
	ds_load_2addr_b64 v[142:145], v106 offset0:64 offset1:96
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v135, v135, v137, 0x7fff
	v_mov_b16_e32 v39.l, v37.h
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v126, v126, v134
	v_bfe_i32 v134, v129, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s11, v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v35, 1, v39
	v_mov_b16_e64 v129.l, v126.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v134, v134
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s15, v126, v126
	v_add3_u32 v39, v37, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v134, v127, v134 :: v_dual_and_b32 v129, 1, v129
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v85.l, v128.h
	v_mov_b16_e32 v127.h, v127.l
	v_mov_b16_e64 v127.l, v131.h
	v_add3_u32 v126, v126, v129, 0x7fff
	v_mov_b16_e64 v38.l, v134.h
	v_cndmask_b16 v129.l, 0x7fff, v39.h, s11
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cndmask_b32_e64 v39, 0, v133, s10
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v85, 1, v85
	v_mov_b16_e64 v86.l, v130.h
	v_and_b32_e32 v36, 1, v38
	v_cmp_o_f32_e64 s12, v134, v134
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v25, v25, v39 :: v_dual_and_b32 v132, 1, v132
	v_mul_f32_e32 v27, v27, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v134, v134, v36, 0x7fff
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b64 v[35:38], v106 offset1:32
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v29, v29, v39 :: v_dual_and_b32 v86, 1, v86
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v127, 1, v127
	v_add3_u32 v132, v136, v132, 0x7fff
	v_cndmask_b16 v129.h, 0x7fff, v134.h, s12
	v_cmp_o_f32_e64 s10, v128, v128
	v_cmp_o_f32_e64 s11, v130, v130
	v_cmp_o_f32_e64 s12, v131, v131
	v_add3_u32 v85, v128, v85, 0x7fff
	v_add3_u32 v86, v130, v86, 0x7fff
	v_add3_u32 v127, v131, v127, 0x7fff
	v_cndmask_b16 v128.h, 0x7fff, v135.h, s14
	v_cndmask_b16 v128.l, 0x7fff, v126.h, s15
	v_cndmask_b16 v85.l, 0x7fff, v132.h, s13
	v_cndmask_b16 v85.h, 0x7fff, v85.h, s10
	v_cndmask_b16 v86.h, 0x7fff, v86.h, s11
	v_cndmask_b16 v86.l, 0x7fff, v127.h, s12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v98, v129, v128 offset1:8
	ds_store_2addr_b32 v98, v85, v86 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[130:133], v110
	ds_load_b128 v[126:129], v40
	ds_load_b128 v[134:137], v40 offset:512
	ds_load_b128 v[138:141], v110 offset:512
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v28, v28, v39 :: v_dual_max_f32 v85, v142, v142
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v86, v35, v35
.Ltmp12:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v32, v32, v39
	v_mul_f32_e32 v30, v30, v39
	v_dual_mul_f32 v31, v31, v39 :: v_dual_max_f32 v122, v122, v122
	v_mul_f32_e32 v9, v9, v39
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v85, v86, v85 :: v_dual_max_f32 v86, v144, v144
.Ltmp14:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v17, v17, v39
	v_mul_f32_e32 v11, v11, v39
	v_mul_f32_e32 v19, v19, v39
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v85, v85, v36, v143
.Ltmp16:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v26, v26, v39
	v_mul_f32_e32 v21, v21, v39
	v_mul_f32_e32 v13, v13, v39
	v_mul_f32_e32 v18, v18, v39
	v_mul_f32_e32 v22, v22, v39
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[126:133], v[73:80], v[25:32]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v126, v37, v37 :: v_dual_mul_f32 v23, v23, v39
.Ltmp18:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v24, v24, v39
	v_mul_f32_e32 v10, v10, v39
	v_mul_f32_e32 v12, v12, v39
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v86, v126, v86
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v126, v85
.Ltmp21:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v14, v14, v39
	v_mul_f32_e32 v15, v15, v39
	v_mul_f32_e32 v16, v16, v39
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v86, v86, v38, v145
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v126, v126 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v39
	v_mul_f32_e32 v2, v2, v39
	v_mul_f32_e32 v5, v5, v39
	v_mul_f32_e32 v6, v6, v39
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v126, v126, v126 :: v_dual_mul_f32 v7, v7, v39
.Ltmp26:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v39
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v125
	v_cmp_neq_f32_e64 s11, 0xff800000, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v85, v85, v126 :: v_dual_mov_b32 v126, v86
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v126, v126 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v126, v126, v126
	v_max_f32_e32 v86, v86, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v126, v85
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v126, v126, v126
	v_max_f32_e32 v85, v85, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v122, v122, v85
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v127, v143, v122
	v_dual_mov_b32 v143, v83 :: v_dual_mov_b32 v126, v86
	v_sub_f32_e32 v36, v36, v122
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v39
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v83, v124, v124
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v35, v35, v122
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v126, v126 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v35, v35
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v126, v126, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_max_f32_e32 v86, v86, v126
.Ltmp36:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v126, v142, v122
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v36, 0, v36, s5
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v35, 0, v35, s7
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v123, v123, v86
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v37, v37, v123
	v_sub_f32_e32 v128, v144, v123
	v_dual_mov_b32 v144, v84 :: v_dual_sub_f32 v129, v145, v123
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v84, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v37, 0, v37, s3
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_dual_mul_f32 v20, v20, v39 :: v_dual_max_f32 v39, v125, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v38, v38, v123 :: v_dual_max_f32 v39, v39, v85
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v85, v83, v86
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v126, v128
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v83, v125, v39
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v125, v127
	v_exp_f32_e32 v127, v129
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v86, v83
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v83, v124, v85
	.loc	1 971 33 is_stmt 1              ; attention.py:971:33
	v_cndmask_b32_e64 v124, 0, v126, s6
	v_cndmask_b32_e64 v38, 0, v38, s2
	v_mov_b32_e32 v126, v34
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s2, s33, 16
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v145, v83
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v83, 0, v84, s9
	v_cndmask_b32_e64 v84, 0, v125, s8
	v_cndmask_b32_e64 v125, 0, v127, s4
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v37, v124
.Ltmp38:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v34, 0, v86, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v35, v35, v83 :: v_dual_add_f32 v36, v36, v84
	v_dual_add_f32 v38, v38, v125 :: v_dual_mov_b32 v125, v39
	v_mov_b32_e32 v124, v85
.Ltmp40:
	.loc	1 903 13                        ; attention.py:903:13
	s_cmpk_lt_u32 s33, 0x1f0
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v35, v35, v36 :: v_dual_add_f32 v36, v37, v38
.Ltmp42:
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[134:141], v[73:80], v[17:24]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[127:130], v40 offset:1024
	ds_load_b128 v[135:138], v40 offset:1536
	ds_load_b128 v[131:134], v110 offset:1024
	ds_load_b128 v[139:142], v110 offset:1536
	s_mov_b32 s33, s2
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v37, v35 :: v_dual_mov_b32 v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v35, v35, v37 :: v_dual_add_f32 v36, v36, v38
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v37, v35 :: v_dual_mov_b32 v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v83, v35, v37 :: v_dual_add_f32 v84, v36, v38
.Ltmp47:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v35, 0, v145, s11
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[127:134], v[73:80], v[9:16]
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v83, v143, v34
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[135:142], v[73:80], v[1:8]
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v84, v144, v35
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_and_b32_e32 v33, 0x80, v89
	v_and_b32_e32 v34, 4, v116
	v_add_nc_u32_e32 v35, 0, v90
	v_lshl_add_u32 v36, v119, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s25, s25, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v33, v35, v33, v34
	ds_store_b64 v36, v[83:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_bfe_u32 v36, v0, 4, 1
	.loc	1 903 13                        ; attention.py:903:13
	ds_load_b32 v38, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v33, 1, v88
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 62, v116
	s_mov_b32 s27, 0x31027000
	v_or_b32_e32 v34, 32, v36
	v_or_b32_e32 v35, 16, v36
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v37, v33, v87
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 48, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v39, s26, v37
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v37, s19, v37
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v37, s21, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, null, v38, v38, v25
	v_div_scale_f32 v41, null, v38, v38, v26
	v_div_scale_f32 v43, null, v38, v38, v27
	v_rcp_f32_e32 v46, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v45, null, v38, v38, v28
	v_rcp_f32_e32 v49, v43
	v_div_scale_f32 v40, vcc_lo, v25, v38, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v51, v45
	v_div_scale_f32 v42, s1, v26, v38, v26
	v_fma_f32 v53, -v39, v46, 1.0
	v_fma_f32 v54, -v41, v47, 1.0
	v_div_scale_f32 v44, s2, v27, v38, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v56, -v43, v49, 1.0
	v_dual_fmac_f32 v46, v53, v46 :: v_dual_fmac_f32 v47, v54, v47
	v_div_scale_f32 v50, null, v38, v38, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v56, v49
	v_dual_mul_f32 v56, v40, v46 :: v_dual_mul_f32 v57, v42, v47
	v_fma_f32 v54, -v45, v51, 1.0
	v_div_scale_f32 v55, null, v38, v38, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v39, v56, v40
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v60, -v41, v57, v42
	v_rcp_f32_e32 v58, v55
	v_div_scale_f32 v48, s3, v28, v38, v28
	v_dual_fmac_f32 v56, v59, v46 :: v_dual_fmac_f32 v51, v54, v51
	v_mul_f32_e32 v54, v44, v49
	v_fmac_f32_e32 v57, v60, v47
	v_div_scale_f32 v52, s4, v29, v38, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v50, v53, 1.0
	v_fma_f32 v63, -v43, v54, v44
	v_fma_f32 v39, -v39, v56, v40
	v_fma_f32 v40, -v41, v57, v42
	v_fma_f32 v41, -v55, v58, 1.0
	v_fmac_f32_e32 v53, v61, v53
	v_fmac_f32_e32 v54, v63, v49
	v_mul_f32_e32 v62, v48, v51
	v_div_fmas_f32 v39, v39, v46, v56
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v58, v41, v58
	v_fma_f32 v43, -v43, v54, v44
	v_fma_f32 v59, -v45, v62, v48
	v_div_fmas_f32 v40, v40, v47, v57
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v42, null, v38, v38, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v62, v59, v51
	v_div_fixup_f32 v25, v39, v38, v25
	v_div_fmas_f32 v39, v43, v49, v54
	v_mul_f32_e32 v43, v52, v53
	v_div_fixup_f32 v26, v40, v38, v26
	v_fma_f32 v40, -v45, v62, v48
	v_rcp_f32_e32 v41, v42
	v_div_scale_f32 v45, null, v38, v38, v32
	v_fma_f32 v46, -v50, v43, v52
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v44, s2, v30, v38, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v45
	v_fmac_f32_e32 v43, v46, v53
	v_div_scale_f32 v46, null, v38, v38, v17
	v_div_fmas_f32 v40, v40, v51, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v42, v41, 1.0
	v_fma_f32 v50, -v50, v43, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v46
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v39, v38, v27
	v_fmac_f32_e32 v41, v48, v41
	v_fma_f32 v48, -v45, v49, 1.0
	v_div_fmas_f32 v43, v50, v53, v43
	v_div_fixup_f32 v28, v40, v38, v28
	v_div_scale_f32 v40, s3, v31, v38, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v49, v48, v49
	v_div_scale_f32 v48, s5, v32, v38, v32
	v_fma_f32 v53, -v46, v51, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v54, null, v38, v38, v18
	v_dual_mul_f32 v52, v48, v49 :: v_dual_fmac_f32 v51, v53, v51
	v_mul_f32_e32 v47, v44, v58
	v_div_scale_f32 v53, s2, v17, v38, v17
	v_div_fixup_f32 v29, v43, v38, v29
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v55, v47, v44
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v0, v37, v0, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v47, v39, v58
	v_mul_f32_e32 v39, v40, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v27, 0, v27, s1
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v55, v47, v44
	v_fma_f32 v50, -v42, v39, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v44, v44, v58, v47
	v_fmac_f32_e32 v39, v50, v41
	v_fma_f32 v50, -v45, v52, v48
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v47, v54
	v_div_fixup_f32 v30, v44, v38, v30
	v_fma_f32 v40, -v42, v39, v40
	v_mul_f32_e32 v42, v53, v51
	v_fmac_f32_e32 v52, v50, v49
	v_div_scale_f32 v44, null, v38, v38, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v39, v40, v41, v39
	v_fma_f32 v41, -v46, v42, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v40, -v45, v52, v48
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v43, -v54, v47, 1.0
	v_div_fixup_f32 v31, v39, v38, v31
	v_fmac_f32_e32 v42, v41, v51
	v_div_fmas_f32 v40, v40, v49, v52
	v_div_scale_f32 v52, null, v38, v38, v21
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v39, -v46, v42, v53
	v_fmac_f32_e32 v47, v43, v47
	v_rcp_f32_e32 v43, v44
	v_div_scale_f32 v48, null, v38, v38, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v51, v42
	v_rcp_f32_e32 v42, v52
	v_div_scale_f32 v45, s3, v18, v38, v18
	v_rcp_f32_e32 v41, v48
	v_div_fixup_f32 v32, v40, v38, v32
	v_div_scale_f32 v46, s4, v19, v38, v19
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v44, v43, 1.0
	v_div_scale_f32 v51, null, v38, v38, v22
	v_fma_f32 v55, -v52, v42, 1.0
	v_div_fixup_f32 v17, v39, v38, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v43, v50, v43
	v_fma_f32 v50, -v48, v41, 1.0
	s_mov_b32 vcc_lo, s3
	v_dual_fmac_f32 v42, v55, v42 :: v_dual_mul_f32 v49, v45, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, s2, v20, v38, v20
	v_fma_f32 v40, -v54, v49, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v53, v50, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v40, v47
	v_mul_f32_e32 v40, v46, v43
	v_fma_f32 v39, -v54, v49, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v44, v40, v46
	v_rcp_f32_e32 v54, v51
	v_div_fmas_f32 v39, v39, v47, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v45, v43
	v_fma_f32 v45, -v48, v53, v50
	v_div_scale_f32 v47, s3, v21, v38, v21
	v_div_fixup_f32 v18, v39, v38, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v44, v40, v46
	v_fma_f32 v49, -v51, v54, 1.0
	v_fmac_f32_e32 v53, v45, v41
	v_div_scale_f32 v46, null, v38, v38, v23
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v44, v47, v42
	v_fmac_f32_e32 v54, v49, v54
	v_div_scale_f32 v45, s5, v22, v38, v22
	v_div_fmas_f32 v39, v39, v43, v40
	v_fma_f32 v40, -v48, v53, v50
	v_rcp_f32_e32 v48, v46
	v_div_scale_f32 v50, null, v38, v38, v24
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v43, -v52, v44, v47
	v_mul_f32_e32 v49, v45, v54
	v_div_fmas_f32 v40, v40, v41, v53
	v_rcp_f32_e32 v41, v50
	v_div_fixup_f32 v19, v39, v38, v19
	v_fmac_f32_e32 v44, v43, v42
	v_fma_f32 v43, -v51, v49, v45
	v_fma_f32 v53, -v46, v48, 1.0
	v_div_fixup_f32 v20, v40, v38, v20
	v_div_scale_f32 v40, s2, v23, v38, v23
	v_fma_f32 v39, -v52, v44, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v49, v43, v54 :: v_dual_fmac_f32 v48, v53, v48
	v_fma_f32 v43, -v50, v41, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v52, null, v38, v38, v10
	v_div_fmas_f32 v39, v39, v42, v44
	v_fma_f32 v42, -v51, v49, v45
	v_dual_mul_f32 v44, v40, v48 :: v_dual_fmac_f32 v41, v43, v41
	v_div_scale_f32 v43, null, v38, v38, v9
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, s3, v24, v38, v24
	v_div_fmas_f32 v42, v42, v54, v49
	v_rcp_f32_e32 v47, v43
	v_fma_f32 v49, -v46, v44, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v51, v45, v41
	v_div_fixup_f32 v21, v39, v38, v21
	v_div_fixup_f32 v22, v42, v38, v22
	v_rcp_f32_e32 v42, v52
	v_fmac_f32_e32 v44, v49, v48
	v_fma_f32 v39, -v50, v51, v45
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v54, null, v38, v38, v12
	v_fma_f32 v49, -v43, v47, 1.0
	v_fma_f32 v40, -v46, v44, v40
	v_div_scale_f32 v46, null, v38, v38, v11
	v_fmac_f32_e32 v51, v39, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v39, s4, v9, v38, v9
	v_rcp_f32_e32 v49, v46
	v_fma_f32 v53, -v52, v42, 1.0
	v_div_fmas_f32 v40, v40, v48, v44
	v_fma_f32 v44, -v50, v51, v45
	v_mul_f32_e32 v45, v39, v47
	v_div_scale_f32 v48, s2, v10, v38, v10
	v_fmac_f32_e32 v42, v53, v42
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v53, -v43, v45, v39
	v_fma_f32 v50, -v46, v49, 1.0
	v_rcp_f32_e32 v56, v54
	v_mul_f32_e32 v55, v48, v42
	v_div_fmas_f32 v41, v44, v41, v51
	v_fmac_f32_e32 v45, v53, v47
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, s5, v11, v38, v11
	v_fma_f32 v44, -v52, v55, v48
	v_div_fixup_f32 v23, v40, v38, v23
	v_fma_f32 v39, -v43, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v50, v49
	v_div_scale_f32 v43, null, v38, v38, v13
	v_div_fixup_f32 v24, v41, v38, v24
	v_fmac_f32_e32 v55, v44, v42
	v_fma_f32 v40, -v46, v51, v50
	v_fma_f32 v41, -v54, v56, 1.0
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v52, v55, v48
	v_fmac_f32_e32 v51, v40, v49
	v_rcp_f32_e32 v40, v43
	v_fmac_f32_e32 v56, v41, v56
	v_div_scale_f32 v41, s3, v12, v38, v12
	v_div_fmas_f32 v39, v39, v47, v45
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v44, v42, v55
	v_fma_f32 v44, -v46, v51, v50
	v_mul_f32_e32 v45, v41, v56
	v_div_scale_f32 v46, null, v38, v38, v14
	v_fma_f32 v47, -v43, v40, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v39, v38, v9
	v_div_fmas_f32 v44, v44, v49, v51
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v49, -v54, v45, v41
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s2, v13, v38, v13
	v_div_fixup_f32 v10, v42, v38, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v49, v56
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v47, v40
	v_div_fixup_f32 v11, v44, v38, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v46, v48, 1.0
	v_fma_f32 v41, -v54, v45, v41
	v_div_scale_f32 v44, null, v38, v38, v15
	v_fma_f32 v49, -v43, v39, v47
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v42, s4, v14, v38, v14
	v_div_fmas_f32 v41, v41, v56, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v49, v40
	v_rcp_f32_e32 v50, v44
	v_mul_f32_e32 v45, v42, v48
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v41, v38, v12
	v_fma_f32 v41, -v43, v39, v47
	v_div_scale_f32 v49, null, v38, v38, v16
	v_fma_f32 v43, -v46, v45, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v41, v40, v39
	v_div_scale_f32 v40, null, v38, v38, v1
	v_fma_f32 v47, -v44, v50, 1.0
	v_rcp_f32_e32 v51, v49
	v_fmac_f32_e32 v45, v43, v48
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v41, s2, v15, v38, v15
	v_fmac_f32_e32 v50, v47, v50
	v_div_scale_f32 v47, null, v38, v38, v2
	v_div_fixup_f32 v13, v39, v38, v13
	v_fma_f32 v42, -v46, v45, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v49, v51, 1.0
	v_rcp_f32_e32 v53, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v52, -v40, v43, 1.0
	v_mul_f32_e32 v46, v41, v50
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v51, v39, v51
	v_div_scale_f32 v39, s3, v16, v38, v16
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v52, null, v38, v38, v3
	v_div_fmas_f32 v42, v42, v48, v45
	v_fma_f32 v45, -v44, v46, v41
	v_mul_f32_e32 v48, v39, v51
	v_div_scale_f32 v54, s4, v1, v38, v1
	v_fma_f32 v55, -v47, v53, 1.0
	v_rcp_f32_e32 v56, v52
	v_fmac_f32_e32 v46, v45, v50
	v_fma_f32 v45, -v49, v48, v39
	v_mul_f32_e32 v57, v54, v43
	v_fmac_f32_e32 v53, v55, v53
	v_div_scale_f32 v55, s5, v2, v38, v2
	v_div_fixup_f32 v14, v42, v38, v14
	v_fma_f32 v41, -v44, v46, v41
	v_fmac_f32_e32 v48, v45, v51
	v_fma_f32 v42, -v40, v57, v54
	v_mul_f32_e32 v44, v55, v53
	v_fma_f32 v45, -v52, v56, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v39, -v49, v48, v39
	v_fmac_f32_e32 v57, v42, v43
	v_fma_f32 v42, -v47, v44, v55
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s2, v3, v38, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v40, v57, v54
	v_fmac_f32_e32 v44, v42, v53
	v_div_fmas_f32 v41, v41, v50, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v45, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, null, v38, v38, v4
	v_div_fmas_f32 v39, v39, v51, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v41, v38, v15
	v_div_fmas_f32 v40, v40, v43, v57
	v_fma_f32 v43, -v47, v44, v55
	v_fma_f32 v47, -v52, v42, v45
	v_rcp_f32_e32 v48, v46
	v_div_fixup_f32 v16, v39, v38, v16
	v_div_fixup_f32 v1, v40, v38, v1
	v_div_scale_f32 v40, null, v38, v38, v5
	v_fmac_f32_e32 v42, v47, v56
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v50, null, v38, v38, v8
	v_div_fmas_f32 v43, v43, v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v52, v42, v45
	v_fma_f32 v41, -v46, v48, 1.0
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v52, v50
	v_div_fixup_f32 v2, v43, v38, v2
	v_div_fmas_f32 v39, v39, v56, v42
	v_rcp_f32_e32 v42, v40
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, null, v38, v38, v6
	v_div_scale_f32 v43, null, v38, v38, v7
	v_div_scale_f32 v44, vcc_lo, v4, v38, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v41
	v_rcp_f32_e32 v47, v43
	v_div_fixup_f32 v3, v39, v38, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v39, -v40, v42, 1.0
	v_mul_f32_e32 v49, v44, v48
	v_fma_f32 v56, -v50, v52, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v39, v42
	v_div_scale_f32 v39, s2, v5, v38, v5
	v_fma_f32 v51, -v41, v45, 1.0
	v_fma_f32 v54, -v43, v47, 1.0
	v_fma_f32 v53, -v46, v49, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v55, v39, v42 :: v_dual_fmac_f32 v52, v56, v52
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, s3, v6, v38, v6
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s4, v7, v38, v7
	v_fmac_f32_e32 v49, v53, v48
	v_fma_f32 v53, -v40, v55, v39
	v_div_scale_f32 v56, s5, v8, v38, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v57, v51, v45 :: v_dual_mul_f32 v58, v54, v47
	v_fmac_f32_e32 v55, v53, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v56, v52
	v_fma_f32 v44, -v46, v49, v44
	v_fma_f32 v46, -v41, v57, v51
	v_fma_f32 v53, -v43, v58, v54
	v_fma_f32 v39, -v40, v55, v39
	v_fma_f32 v40, -v50, v59, v56
	v_div_fmas_f32 v44, v44, v48, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, v46, v45 :: v_dual_fmac_f32 v58, v53, v47
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v59, v40, v52
	v_div_fmas_f32 v39, v39, v42, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v41, -v41, v57, v51
	v_fma_f32 v40, -v43, v58, v54
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v50, v59, v56
	v_div_fixup_f32 v4, v44, v38, v4
	v_div_fmas_f32 v41, v41, v45, v57
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v39, v38, v5
	v_div_fmas_f32 v40, v40, v47, v58
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v41, v38, v6
	v_div_fmas_f32 v42, v42, v52, v59
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s21, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v40, v38, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v42, v38, v8
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_lshl_u32 v38, v37, v36, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v36, 8, v38
	v_add_nc_u32_e32 v39, 16, v38
	v_cndmask_b32_e32 v40, 0x80000000, v38, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_clause 0x2
	buffer_store_b32 v25, v40, s[24:27], 0 offen
	buffer_store_b32 v26, v36, s[24:27], 0 offen
	buffer_store_b32 v27, v39, s[24:27], 0 offen
	v_add_nc_u32_e32 v25, 24, v38
	v_add_nc_u32_e32 v26, 32, v38
	v_add_nc_u32_e32 v27, 40, v38
	v_add_nc_u32_e32 v36, 48, v38
	v_add_nc_u32_e32 v39, 56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s21, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_clause 0x4
	buffer_store_b32 v28, v25, s[24:27], 0 offen
	buffer_store_b32 v29, v26, s[24:27], 0 offen
	buffer_store_b32 v30, v27, s[24:27], 0 offen
	buffer_store_b32 v31, v36, s[24:27], 0 offen
	buffer_store_b32 v32, v39, s[24:27], 0 offen
	v_add_lshl_u32 v25, v37, v35, 2
	v_add_nc_u32_e32 v26, 0x48, v38
	v_add_nc_u32_e32 v27, 0x50, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v28, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[24:27], 0 offen
	buffer_store_b32 v18, v26, s[24:27], 0 offen
	buffer_store_b32 v19, v27, s[24:27], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v38
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s21, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[24:27], 0 offen
	v_add_nc_u32_e32 v19, 0x70, v38
	v_add_nc_u32_e32 v20, 0x78, v38
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v21, v17, s[24:27], 0 offen
	v_add_lshl_u32 v17, v37, v34, 2
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[24:27], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v38
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[24:27], 0 offen
	buffer_store_b32 v24, v20, s[24:27], 0 offen
	buffer_store_b32 v9, v17, s[24:27], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v38
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v38
	v_add_nc_u32_e32 v19, 0xa0, v38
	v_add_nc_u32_e32 v20, 0xa8, v38
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[24:27], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s21, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v11, v9, s[24:27], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v38
	s_clause 0x2
	buffer_store_b32 v12, v10, s[24:27], 0 offen
	buffer_store_b32 v13, v17, s[24:27], 0 offen
	buffer_store_b32 v14, v18, s[24:27], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v38
	v_add_lshl_u32 v11, v37, v33, 2
	v_add_nc_u32_e32 v12, 0xc8, v38
	v_add_nc_u32_e32 v13, 0xd0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[24:27], 0 offen
	buffer_store_b32 v16, v10, s[24:27], 0 offen
	buffer_store_b32 v1, v11, s[24:27], 0 offen
	buffer_store_b32 v2, v12, s[24:27], 0 offen
	buffer_store_b32 v3, v13, s[24:27], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v38
	v_add_nc_u32_e32 v2, 0xe0, v38
	v_add_nc_u32_e32 v3, 0xe8, v38
	v_add_nc_u32_e32 v9, 0xf0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[24:27], 0 offen
	buffer_store_b32 v5, v2, s[24:27], 0 offen
	buffer_store_b32 v6, v3, s[24:27], 0 offen
	buffer_store_b32 v7, v9, s[24:27], 0 offen
	buffer_store_b32 v8, v0, s[24:27], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp48:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 146
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 146
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9196
; TotalNumSgprs: 51
; NumVgprs: 146
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 146
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     146
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
